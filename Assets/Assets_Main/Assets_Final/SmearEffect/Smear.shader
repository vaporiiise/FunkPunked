Shader "Custom/SmearURP"
{
    Properties
    {
        _BaseMap("Albedo", 2D) = "white" {}
        _BaseColor("Color", Color) = (1,1,1,1)
        _Smoothness("Smoothness", Range(0,1)) = 0.5
        _Metallic("Metallic", Range(0,1)) = 0.0

        [Header(Smear Settings)]
        _Position("Current Position", Vector) = (0, 0, 0, 0)
        _PrevPosition("Previous Position", Vector) = (0, 0, 0, 0)
        _NoiseScale("Noise Scale", Float) = 15
        _NoiseHeight("Noise Height", Float) = 1.3
    }

    SubShader
    {
        Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalPipeline" }
        LOD 300

        Pass
        {
            Name "ForwardLit"
            Tags { "LightMode" = "UniversalForward" }

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
                float3 normalOS   : NORMAL;
                float2 uv         : TEXCOORD0;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
                float2 uv         : TEXCOORD0;
                float3 normalWS   : TEXCOORD1;
            };

            CBUFFER_START(UnityPerMaterial)
                float4 _BaseColor;
                float4 _BaseMap_ST;
                half _Smoothness;
                half _Metallic;
                float4 _Position;
                float4 _PrevPosition;
                float _NoiseScale;
                float _NoiseHeight;
            CBUFFER_END

            sampler2D _BaseMap;

            // Simple Hash for Noise
            float hash(float n) { return frac(sin(n) * 43758.5453123); }

            float noise(float3 x)
            {
                float3 p = floor(x);
                float3 f = frac(x);
                f = f * f * (3.0 - 2.0 * f);
                float n = p.x + p.y * 57.0 + 113.0 * p.z;
                return lerp(lerp(lerp(hash(n + 0.0), hash(n + 1.0), f.x),
                            lerp(hash(n + 57.0), hash(n + 58.0), f.x), f.y),
                       lerp(lerp(hash(n + 113.0), hash(n + 114.0), f.x),
                            lerp(hash(n + 170.0), hash(n + 171.0), f.x), f.y), f.z);
            }

            Varyings vert(Attributes v)
            {
                Varyings o;
                
                // 1. Get World Position
                float3 worldPos = TransformObjectToWorld(v.positionOS.xyz);
                
                // 2. Calculate Smear
                float3 worldOffset = _Position.xyz - _PrevPosition.xyz;
                float3 localOffset = worldPos - _Position.xyz;
                
                float dirDot = dot(normalize(worldOffset + 0.0001), normalize(localOffset + 0.0001));
                float3 unitVec = float3(1, 1, 1) * _NoiseHeight;
                
                worldOffset = clamp(worldOffset, -unitVec, unitVec);
                // Smear only vertices "behind" the movement
                worldOffset *= -clamp(dirDot, -1, 0) * (length(worldOffset) > 0 ? 1 : 0);

                float3 smear = -worldOffset * lerp(1.0, noise(worldPos * _NoiseScale), step(0.001, _NoiseScale));
                worldPos += smear;

                // 3. Back to Clip Space
                o.positionCS = TransformWorldToHClip(worldPos);
                o.uv = v.uv;
                o.normalWS = TransformObjectToWorldNormal(v.normalOS);
                return o;
            }

            half4 frag(Varyings i) : SV_Target
            {
                half4 texColor = tex2D(_BaseMap, i.uv) * _BaseColor;
                return texColor;
            }
            ENDHLSL
        }
    }
}