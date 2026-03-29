// Made with Amplify Shader Editor v1.9.9.7
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "AmplifyShaderPack/Community/Physical Based Rendering Eye"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[Enum(Front,2,Back,1,Both,0)] _Cull( "Render Face", Int ) = 2
		[Toggle] _AlphaClip( "Alpha Clipping", Float ) = 0
		_Cutoff( "Threshold", Range( 0, 1 ) ) = 0.5
		_AlphaRemapMin( "Alpha Remap Min", Range( 0, 1 ) ) = 0
		_AlphaRemapMax( "Alpha Remap Max", Range( 0, 1 ) ) = 1
		[Toggle] _UseShadowThreshold( "Use Shadow Threshold", Float ) = 0
		_AlphaCutoffShadow( "Shadow Threshold", Range( 0.01, 1 ) ) = 0.5
		[Toggle] _EnableClipGlancingAngle( "Enable Clip Glancing Angle", Float ) = 0
		[Header(COLOR)][MainColor] _BaseColor( "Base Color", Color ) = ( 1, 1, 1 )
		_Saturation( "Saturation", Range( 0, 1 ) ) = 0
		_Brightness( "Brightness", Range( 0, 2 ) ) = 1
		[Header(SURFACE INPUTS)][SingleLineTexture][MainTexture] _MainTex( "BaseColor Map", 2D ) = "white" {}
		_MainTex_ST( "Main UVs", Vector ) = ( 1, 1, 0, 0 )
		[SingleLineTexture][Space(15)] _MainMaskMap( "Main Mask Map", 2D ) = "white" {}
		[Enum(MSO,0,MRO,1)] _MainMaskType( "Main Mask Type", Float ) = 0
		_MetallicStrength( "Metallic Strength", Range( 0, 1 ) ) = 0.15
		_SmoothnessStrength( "Smoothness Strength", Range( 0, 1 ) ) = 0.55
		_OcclusionStrengthAO( "Occlusion Strength", Range( 0, 1 ) ) = 0
		[SingleLineTexture][Space(15)] _SpecularMap( "Specular Map", 2D ) = "white" {}
		_SpecularColor( "Specular Color", Color ) = ( 0.4745098, 0.4745098, 0.4745098, 1 )
		[Normal][SingleLineTexture][Space(10)] _BumpMap( "Normal Map", 2D ) = "bump" {}
		[Enum(Flip,0,Mirror,1,None,2)] _DoubleSidedNormalMode( "Normal Mode", Float ) = 0
		_NormalStrength( "Normal Strength", Float ) = 1
		[Space(15)][Header(GEOMETRIC SHADOWING)] _LightWrapping( "Light Wrapping", Range( 0, 1 ) ) = 0
		[ToggleUI][Space(10)][Header(GEOMETRIC SHADOWING)] _ShadowColorEnable( "Enable Shadow Color", Float ) = 0
		[HDR] _ShadowColor( "Shadow Color", Color ) = ( 0.05882353, 0.05882353, 0.05882353, 0.4901961 )
		_ShadowStrength( "Shadow Strength", Range( 0, 1 ) ) = 0.1
		_ShadowOffset( "Shadow Offset", Range( -1, 1 ) ) = -0.05
		_ShadowFalloff( "Shadow Falloff", Range( 1, 10 ) ) = 1
		[HDR][Header(INDIRECT LIGHTING)] _IndirectSpecColor( "Indirect Specular Color", Color ) = ( 0.4745098, 0.4745098, 0.4745098 )
		_IndirectSpecular( "Indirect Specular ", Range( 0, 1 ) ) = 0.85
		_IndirectSpecularSmoothness( "Indirect Specular Smoothness", Range( 0, 1 ) ) = 1
		_IndirectDiffuse( "Indirect Diffuse", Range( 0, 1 ) ) = 0.5
		[Toggle][Space(15)] _EnableParallax( "ENABLE PARALLAX", Float ) = 0
		[SingleLineTexture] _ParallaxMap( "Height Map", 2D ) = "white" {}
		_ParallaxAmplitude( "Parallax Amplitude", Float ) = 0.35
		_ParallaxIterations( "Parallax Iterations", Float ) = 4
		_ParallaxReferencePlane( "Parallax Reference Plane", Float ) = 0
		[Header(CLEARCOAT)][Toggle] _EnableClearCoat( "ENABLE CLEARCOAT", Float ) = 0
		_ClearCoat( "ClearCoat", Range( 0, 1 ) ) = 0.25
		_ClearCoatColor( "ClearCoat Color", Color ) = ( 0.4156863, 0.4156863, 0.4156863 )
		_BaseColorAffectClearCoat( "BaseColor Affect ClearCoat", Range( 0, 1 ) ) = 0.95
		_MainLightAffectClearCoat( "MainLight Affect ClearCoat", Range( 0, 1 ) ) = 1
		[SingleLineTexture] _ClearCoatMaskMap( "ClearCoat Mask Map", 2D ) = "white" {}
		_ClearCoatSmoothness( "ClearCoat Smoothness", Range( 0, 1 ) ) = 1
		_ClearCoatStrength( "ClearCoat Strength", Float ) = 0.65
		_ClearCoatFalloff( "ClearCoat Falloff", Float ) = 1
		_ClearCoatBias( "ClearCoat Bias", Float ) = 0.025
		[Normal][SingleLineTexture] _ClearCoatNormalMap( "ClearCoat Normal Map", 2D ) = "bump" {}
		_ClearCoatTilingX( "ClearCoat Tiling X", Float ) = 5
		_ClearCoatTilingY( "ClearCoat Tiling Y", Float ) = 5
		_ClearCoatNormalStrength( "ClearCoat Normal Strength", Float ) = 1
		[Header(TRANSMISSION)][ToggleUI] _TransmissionMapEnable( "ENABLE TRANSMISSION", Float ) = 0
		[SingleLineTexture] _TransmissionMap( "Transmission Map", 2D ) = "white" {}
		[HDR] _TransmissionColor( "Transmission Color", Color ) = ( 0.5, 0.5, 0.5, 1 )
		_TransmissionStrength( "Transmission Strength", Range( 0, 1 ) ) = 0.15
		_TransmissionFeather( "Transmission Feather", Range( 0.25, 2 ) ) = 0.5
		[Header(TRANSLUCENCY)][ToggleUI] _TranslucencyMapEnable( "ENABLE TRANSLUCENCY", Float ) = 0
		[SingleLineTexture] _TranslucencyMap( "Translucency Map", 2D ) = "white" {}
		[HDR] _TranslucencyColor( "Translucency Color", Color ) = ( 0.35, 0.35, 0.35, 1 )
		_TranslucencyStrength( "Translucency Strength", Range( 0, 50 ) ) = 0.5
		_TranslucencyFeather( "Translucency Feather", Range( 0.25, 2 ) ) = 0.5
		_TranslucencyNormalDistortion( "Translucency Normal Distortion", Range( 0, 1 ) ) = 0.5
		_TranslucencyScattering( "Translucency Scatterring", Range( 1, 50 ) ) = 1
		_TranslucencyDirect( "Translucency Direct", Range( 0, 1 ) ) = 0.45
		_TranslucencyAmbient( "Translucency Ambient", Range( 0, 1 ) ) = 1


		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}

		//[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector][ToggleUI] _ReceiveShadows("Receive Shadows", Float) = 1.0

		//[HideInInspector] _XRMotionVectorsPass("_XRMotionVectorsPass", Float) = 1

		[HideInInspector] _AlphaClip("__clip", Float) = 0.0
	}

	SubShader
	{
		LOD 0

		

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Unlit" }

		Cull [_Cull]
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#if ( SHADER_TARGET > 35 ) && defined( SHADER_API_GLES3 )
			#error For WebGL2/GLES3, please set your shader target to 3.5 via SubShader options. URP shaders in ASE use target 4.5 by default.
		#endif

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForwardOnly" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#pragma shader_feature_local_fragment _RECEIVE_SHADOWS_OFF
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3

			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			// Option "Keep Lighting Variants"
			//#define UNLIT_REALTIME_LIGHTING 1
			//#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			//#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			//#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			//#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			//#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			//#pragma multi_compile_fragment _ _REFLECTION_PROBE_ATLAS
			//#pragma multi_compile _ REFLECTION_PROBE_ROTATION
			//#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			//#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			//#pragma multi_compile _ SHADOWS_SHADOWMASK
			//#pragma multi_compile_fragment _ _LIGHT_LAYERS
			//#pragma multi_compile_fragment _ _LIGHT_COOKIES
			//#pragma multi_compile _ _CLUSTER_LIGHT_LOOP

			// Option "Default Decal Blending"
			#define UNLIT_DEFAULT_DECAL_BLENDING 1

			// Option "Default SSAO"
			#define UNLIT_DEFAULT_SSAO 1

			#define SHADERPASS SHADERPASS_UNLIT

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Fog.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Debug/Debugging3D.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/SurfaceData.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			#pragma multi_compile _ _CLUSTER_LIGHT_LOOP
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_ATLAS


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 positionWSAndFogFactor : TEXCOORD0;
				half3 normalWS : TEXCOORD1;
				half4 tangentWS : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_MainMaskMap);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_ClearCoatNormalMap);
			TEXTURE2D(_ClearCoatMaskMap);
			TEXTURE2D(_SpecularMap);
			TEXTURE2D(_TranslucencyMap);
			TEXTURE2D(_TransmissionMap);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			
			float3 _NormalModefloat3switch( float m_switch, float3 m_Flip, float3 m_Mirror, float3 m_None )
			{
				switch (m_switch) {
					case 0:
						return m_Flip;
					case 1:
						return m_Mirror;
					default:
					case 2:
						return m_None;
				}
			}
			
			half4 CalculateShadowMask5459_g71288(  )
			{
				#if defined(SHADOWS_SHADOWMASK) && defined(LIGHTMAP_ON)
				half4 shadowMask = inputData.shadowMask;
				#elif !defined (LIGHTMAP_ON)
				half4 shadowMask = unity_ProbesOcclusion;
				#else
				half4 shadowMask = half4(1, 1, 1, 1);
				#endif
				return shadowMask;
			}
			
			float4x4 AdditionalLightsData171x( float3 WorldPosition, float2 ScreenUV, float3 WorldNormal, float3 WorldTangent, float3 WorldBitangent, float3 ViewDirection, float4 ShadowMask, float Min_Clamp )
			{
				float4x4 LightData = 0;
				#if defined(_ADDITIONAL_LIGHTS)
				float4 totalDotsA = Min_Clamp;
				float4 totalDotsB = Min_Clamp; // z & w are unused, feel free to add your own custom dots here
				float4 totalDotsC = 0; // z & w are unused, feel free to add your own custom Tangent dots here NOTE: is 'min'-ed instead of 'max'-ed
				half4 totalAttenColor = 0;
					#define SUM_DATA(Light)\
						float3 HalfDir = normalize( light.direction + ViewDirection );\
						float3 LightRef = normalize( reflect( -light.direction, WorldNormal ));\
						float2 tanDots = float2( dot( WorldTangent, HalfDir ), dot( WorldBitangent, HalfDir ));\
						float LightAtten = light.distanceAttenuation * light.shadowAttenuation;\
						float StepLightAtten = smoothstep( 0, 0.01, LightAtten);\
						totalDotsA = max( totalDotsA, float4( dot( light.direction, WorldNormal ), dot( WorldNormal, HalfDir ), dot( light.direction, ViewDirection),  dot( light.direction, HalfDir ))* StepLightAtten);\
						totalDotsB = max( totalDotsB, float4( dot( ViewDirection, HalfDir ), dot( LightRef, ViewDirection ), 0, 0)* StepLightAtten);\
						totalDotsC = min( totalDotsC, float4( tanDots * tanDots, 0, 0)* StepLightAtten);\
						totalAttenColor = max( totalAttenColor, float4( light.color * LightAtten, LightAtten));
					InputData inputData = (InputData)0;
					inputData.normalizedScreenSpaceUV = ScreenUV;
					inputData.positionWS = WorldPosition;
					uint meshRenderingLayers = GetMeshRenderingLayer();
					uint pixelLightCount = GetAdditionalLightsCount();	
					#if USE_CLUSTER_LIGHT_LOOP
					[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
					{
						CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK
						Light light = GetAdditionalLight(lightIndex, WorldPosition, ShadowMask);
						#ifdef _LIGHT_LAYERS
						if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
						#endif
						{
							SUM_DATA( light );
						}
					}
					#endif
					
					LIGHT_LOOP_BEGIN( pixelLightCount )
						Light light = GetAdditionalLight(lightIndex, WorldPosition, ShadowMask);
						#ifdef _LIGHT_LAYERS
						if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
						#endif
						{
							SUM_DATA( light );
						}
					LIGHT_LOOP_END
					LightData = float4x4(totalDotsA, totalDotsB, totalDotsC , totalAttenColor);
				#endif
				return LightData;
			}
			
			float3 ASEBakedGI( float3 positionWS, float3 normalWS, uint2 positionSS, float2 uvStaticLightmap, float2 uvDynamicLightmap, bool applyScaling )
			{
			#ifdef LIGHTMAP_ON
				if (applyScaling)
				{
					uvStaticLightmap = uvStaticLightmap * unity_LightmapST.xy + unity_LightmapST.zw;
					uvDynamicLightmap = uvDynamicLightmap * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}
			#if defined(DYNAMICLIGHTMAP_ON)
				return SampleLightmap(uvStaticLightmap, uvDynamicLightmap, normalWS);
			#else
				return SampleLightmap(uvStaticLightmap, normalWS);
			#endif
			#else
			#if (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
				if (_EnableProbeVolumes)
				{
					float3 bakeDiffuseLighting;
					EvaluateAdaptiveProbeVolume(positionWS, normalWS, GetWorldSpaceNormalizeViewDir(positionWS), positionSS, bakeDiffuseLighting);
					return bakeDiffuseLighting;
				}
				else
				return SampleSH(normalWS);
			#else
				return SampleSH(normalWS);
			#endif
			#endif
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord3.xy = input.ase_texcoord.xy;
				output.ase_texcoord3.zw = input.ase_texcoord1.xy;
				output.ase_texcoord4.xy = input.ase_texcoord2.xy;
				output.ase_color = input.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				float fogFactor = 0;
				#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
					fogFactor = ComputeFogFactor(vertexInput.positionCS.z);
				#endif

				output.positionCS = vertexInput.positionCS;
				output.positionWSAndFogFactor = float4( vertexInput.positionWS, fogFactor );
				output.normalWS = normalInput.normalWS;
				output.tangentWS = half4( normalInput.tangentWS, ( input.tangentOS.w > 0.0 ? 1.0 : -1.0 ) * GetOddNegativeScale() );;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.ase_texcoord = input.ase_texcoord;
				output.ase_texcoord1 = input.ase_texcoord1;
				output.ase_texcoord2 = input.ase_texcoord2;
				output.ase_color = input.ase_color;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				output.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				output.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag ( PackedVaryings input
						#if defined( ASE_DEPTH_WRITE_ON )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out uint outRenderingLayers : SV_Target1
						#endif
						, uint ase_vface : SV_IsFrontFace ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined( _SURFACE_TYPE_TRANSPARENT )
					const bool isTransparent = true;
				#else
					const bool isTransparent = false;
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					float4 shadowCoord = TransformWorldToShadowCoord( input.positionWSAndFogFactor.xyz );
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				// @diogo: mikktspace compliant
				float renormFactor = 1.0 / max( FLT_MIN, length( input.normalWS ) );

				float3 PositionWS = input.positionWSAndFogFactor.xyz;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				half3 ViewDirWS = GetWorldSpaceNormalizeViewDir( PositionWS );
				float4 ShadowCoord = shadowCoord;
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );
				float3 TangentWS = input.tangentWS.xyz * renormFactor;
				float3 BitangentWS = cross( input.normalWS, input.tangentWS.xyz ) * input.tangentWS.w * renormFactor;
				float3 NormalWS = input.normalWS * renormFactor;

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 tanToWorld0 = float3( TangentWS.x, BitangentWS.x, NormalWS.x );
				float3 tanToWorld1 = float3( TangentWS.y, BitangentWS.y, NormalWS.y );
				float3 tanToWorld2 = float3( TangentWS.z, BitangentWS.z, NormalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - PositionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - PositionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - PositionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float3 temp_output_12_0_g71293 = (Output_Fetch2D_Auto202_g71331).rgb;
				float dotResult28_g71293 = dot( float3( 0.2126729, 0.7151522, 0.072175 ) , temp_output_12_0_g71293 );
				float3 temp_cast_1 = (dotResult28_g71293).xxx;
				float temp_output_21_0_g71293 = ( 1.0 - _Saturation );
				float3 lerpResult31_g71293 = lerp( temp_cast_1 , temp_output_12_0_g71293 , temp_output_21_0_g71293);
				float3 temp_output_48_0_g71288 = ( _BaseColor * lerpResult31_g71293 * _Brightness );
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch7584_g71288 = float4( 0.2209163, 0.2209163, 0.2209163, 0.7790837 );
				#else
				float4 staticSwitch7584_g71288 = float4( 0.04, 0.04, 0.04, 0.96 );
				#endif
				float4 temp_output_2_0_g71327 = staticSwitch7584_g71288;
				float temp_output_7591_6_g71288 = (temp_output_2_0_g71327).w;
				float localStochasticTiling2_g71301 = ( 0.0 );
				float2 UV2_g71301 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71301 = _MainMaskMap_TexelSize;
				float4 Offsets2_g71301 = float4( 0,0,0,0 );
				float2 Weights2_g71301 = float2( 0,0 );
				{
				UV2_g71301 = UV2_g71301 * TexelSize2_g71301.zw - 0.5;
				float2 f = frac( UV2_g71301 );
				UV2_g71301 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71301.x - 0.5, UV2_g71301.x + 1.5, UV2_g71301.y - 0.5, UV2_g71301.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71301 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71301.xyxy;
				Weights2_g71301 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71329 = Offsets2_g71301;
				float2 Input_FetchWeights200_g71329 = Weights2_g71301;
				float2 break187_g71329 = Input_FetchWeights200_g71329;
				float4 lerpResult181_g71329 = lerp( SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).yw ) , SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).xw ) , break187_g71329.x);
				float4 lerpResult182_g71329 = lerp( SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).yz ) , SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).xz ) , break187_g71329.x);
				float4 lerpResult176_g71329 = lerp( lerpResult181_g71329 , lerpResult182_g71329 , break187_g71329.y);
				float4 Output_Fetch2D_Auto202_g71329 = lerpResult176_g71329;
				float4 break74_g71329 = Output_Fetch2D_Auto202_g71329;
				float temp_output_400_0_g71288 = ( _MetallicStrength * break74_g71329.r );
				float4 appendResult7592_g71288 = (float4((temp_output_2_0_g71327).xyz , ( temp_output_7591_6_g71288 - ( temp_output_7591_6_g71288 * temp_output_400_0_g71288 ) )));
				float4 Dieletric7593_g71288 = appendResult7592_g71288;
				float Metallic403_g71288 = temp_output_400_0_g71288;
				float localStochasticTiling2_g71297 = ( 0.0 );
				float2 UV2_g71297 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71297 = _BumpMap_TexelSize;
				float4 Offsets2_g71297 = float4( 0,0,0,0 );
				float2 Weights2_g71297 = float2( 0,0 );
				{
				UV2_g71297 = UV2_g71297 * TexelSize2_g71297.zw - 0.5;
				float2 f = frac( UV2_g71297 );
				UV2_g71297 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71297.x - 0.5, UV2_g71297.x + 1.5, UV2_g71297.y - 0.5, UV2_g71297.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71297 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71297.xyxy;
				Weights2_g71297 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71312 = Offsets2_g71297;
				float2 Input_FetchWeights200_g71312 = Weights2_g71297;
				float2 break187_g71312 = Input_FetchWeights200_g71312;
				float4 lerpResult181_g71312 = lerp( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).yw ) , SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).xw ) , break187_g71312.x);
				float4 lerpResult182_g71312 = lerp( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).yz ) , SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).xz ) , break187_g71312.x);
				float4 lerpResult176_g71312 = lerp( lerpResult181_g71312 , lerpResult182_g71312 , break187_g71312.y);
				float4 Output_Fetch2D_Auto202_g71312 = lerpResult176_g71312;
				float3 unpack12_g71288 = UnpackNormalScale( Output_Fetch2D_Auto202_g71312, _NormalStrength );
				unpack12_g71288.z = lerp( 1, unpack12_g71288.z, saturate(_NormalStrength) );
				float m_switch5216_g71288 = _DoubleSidedNormalMode;
				float3 m_Flip5216_g71288 = float3( -1, -1, -1 );
				float3 m_Mirror5216_g71288 = float3( 1, 1, -1 );
				float3 m_None5216_g71288 = float3( 1, 1, 1 );
				float3 local_NormalModefloat3switch5216_g71288 = _NormalModefloat3switch( m_switch5216_g71288 , m_Flip5216_g71288 , m_Mirror5216_g71288 , m_None5216_g71288 );
				float3 switchResult5218_g71288 = (((ase_vface>0)?(unpack12_g71288):(( unpack12_g71288 * local_NormalModefloat3switch5216_g71288 ))));
				float3 BumpMap_Final4620_g71288 = switchResult5218_g71288;
				float3 tanNormal4619_g71288 = BumpMap_Final4620_g71288;
				float3 worldNormal4619_g71288 = float3( dot( tanToWorld0, tanNormal4619_g71288 ), dot( tanToWorld1, tanNormal4619_g71288 ), dot( tanToWorld2, tanNormal4619_g71288 ) );
				float3 normalizeResult7695_g71288 = normalize( worldNormal4619_g71288 );
				float3 Surface_Data_Normal_WS_BumpNormalized1160_g71288 = normalizeResult7695_g71288;
				float2 appendResult4458_g71288 = (float2(_ClearCoatTilingX , _ClearCoatTilingY));
				float2 temp_output_4491_0_g71288 = ( UV_UV_Final2873_g71288 * appendResult4458_g71288 );
				float2 UV_DDX2874_g71288 = ddx( ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) );
				float2 UV_DDY2875_g71288 = ddy( float2( 0,0 ) );
				float3 unpack3123_g71288 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _ClearCoatNormalMap, sampler_BumpMap, temp_output_4491_0_g71288, UV_DDX2874_g71288, UV_DDY2875_g71288 ), _ClearCoatNormalStrength );
				unpack3123_g71288.z = lerp( 1, unpack3123_g71288.z, saturate(_ClearCoatNormalStrength) );
				float3 tanNormal3126_g71288 = unpack3123_g71288;
				float3 worldNormal3126_g71288 = normalize( float3( dot( tanToWorld0, tanNormal3126_g71288 ), dot( tanToWorld1, tanNormal3126_g71288 ), dot( tanToWorld2, tanNormal3126_g71288 ) ) );
				float2 appendResult3184_g71288 = (float2(ViewDirWS.xy));
				float3 appendResult3192_g71288 = (float3(appendResult3184_g71288 , ( ViewDirWS.z / 1.06 )));
				float3 Surface_Data_Tangent_WS3437_g71288 = TangentWS;
				float3 break3172_g71288 = unpack3123_g71288;
				float3 Surface_Data_Bitangent_WS3438_g71288 = BitangentWS;
				float3 Surface_Data_Normal_WS3209_g71288 = NormalWS;
				float3 normalizeResult3193_g71288 = normalize( ( ( Surface_Data_Tangent_WS3437_g71288 * break3172_g71288.x ) + ( Surface_Data_Bitangent_WS3438_g71288 * break3172_g71288.y ) + ( Surface_Data_Normal_WS3209_g71288 * break3172_g71288.z ) ) );
				float fresnelNdotV3190_g71288 = dot( normalize( normalizeResult3193_g71288 ), appendResult3192_g71288 );
				float fresnelNode3190_g71288 = ( _ClearCoatBias + _ClearCoatStrength * pow( max( 1.0 - fresnelNdotV3190_g71288 , 0.0001 ), _ClearCoatFalloff ) );
				float4 tex2DNode4447_g71288 = SAMPLE_TEXTURE2D_GRAD( _ClearCoatMaskMap, sampler_MainTex, UV_UV_Final2873_g71288, UV_DDX2874_g71288, UV_DDY2875_g71288 );
				float temp_output_3201_0_g71288 = saturate( ( fresnelNode3190_g71288 * _ClearCoat * tex2DNode4447_g71288.r * _EnableClearCoat ) );
				float3 lerpResult3138_g71288 = lerp( Surface_Data_Normal_WS_BumpNormalized1160_g71288 , worldNormal3126_g71288 , temp_output_3201_0_g71288);
				float3 ClearCoat_Normal_WS3139_g71288 = lerpResult3138_g71288;
				float3 Surface_Data_Normal_WS_Final7693_g71288 = ClearCoat_Normal_WS3139_g71288;
				Light ase_mainLight = GetMainLight( ShadowCoord );
				float3 ase_mainLightDirection = ase_mainLight.direction;
				float3 MainLight_Dir1116_g71288 = ase_mainLightDirection;
				float dotResult5651_g71288 = dot( Surface_Data_Normal_WS_Final7693_g71288 , MainLight_Dir1116_g71288 );
				float3 Surface_Data_World_Position5438_g71288 = PositionWS;
				float3 WorldPosition7831_g71288 = Surface_Data_World_Position5438_g71288;
				float2 Surface_Data_ScreenUV5441_g71288 = (ScreenPosNorm).xy;
				float2 ScreenUV7831_g71288 = Surface_Data_ScreenUV5441_g71288;
				float3 WorldNormal7831_g71288 = Surface_Data_Normal_WS_Final7693_g71288;
				float3 normalizeResult5429_g71288 = normalize( TangentWS );
				float3 Surface_Data_Tangent_WS_Noralized2280_g71288 = normalizeResult5429_g71288;
				float3 WorldTangent7831_g71288 = Surface_Data_Tangent_WS_Noralized2280_g71288;
				float3 normalizeResult5428_g71288 = normalize( BitangentWS );
				float3 Surface_Data_Bitangent_WS_Noralized2279_g71288 = normalizeResult5428_g71288;
				float3 WorldBitangent7831_g71288 = Surface_Data_Bitangent_WS_Noralized2279_g71288;
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ViewDirWS;
				float3 ViewDirection7831_g71288 = Surface_Data_ViewDir_WS_Normalized1115_g71288;
				half4 localCalculateShadowMask5459_g71288 = CalculateShadowMask5459_g71288();
				float4 ShadowMask2739_g71288 = localCalculateShadowMask5459_g71288;
				float4 ShadowMask7831_g71288 = ShadowMask2739_g71288;
				float Min_Clamp7831_g71288 = -1.0;
				float4x4 localAdditionalLightsData171x7831_g71288 = AdditionalLightsData171x( WorldPosition7831_g71288 , ScreenUV7831_g71288 , WorldNormal7831_g71288 , WorldTangent7831_g71288 , WorldBitangent7831_g71288 , ViewDirection7831_g71288 , ShadowMask7831_g71288 , Min_Clamp7831_g71288 );
				float4 break7813_g71288 = localAdditionalLightsData171x7831_g71288[ 0 ];
				float Additional_Lights_Data_NdotL5766_g71288 = break7813_g71288.x;
				float DotProducts_NdotL_total2267_g71288 = max( max( dotResult5651_g71288, Additional_Lights_Data_NdotL5766_g71288 ), 1E-37 );
				float dotResult5568_g71288 = dot( Surface_Data_Normal_WS_Final7693_g71288 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float DotProducts_NdotV_Zero210_g71288 = max( dotResult5568_g71288, 1E-37 );
				float2 appendResult7181_g71288 = (float2(DotProducts_NdotL_total2267_g71288 , DotProducts_NdotV_Zero210_g71288));
				float2 temp_output_7173_0_g71288 = saturate( ( 1.0 - appendResult7181_g71288 ) );
				float2 temp_output_7174_0_g71288 = ( temp_output_7173_0_g71288 * temp_output_7173_0_g71288 * temp_output_7173_0_g71288 * temp_output_7173_0_g71288 * temp_output_7173_0_g71288 );
				float3 normalizeResult5682_g71288 = normalize( ( Surface_Data_ViewDir_WS_Normalized1115_g71288 + MainLight_Dir1116_g71288 ) );
				float3 Surface_Data_HalfDir7369_g71288 = normalizeResult5682_g71288;
				float dotResult5705_g71288 = dot( MainLight_Dir1116_g71288 , Surface_Data_HalfDir7369_g71288 );
				float Additional_Lights_Data_LdotH5770_g71288 = break7813_g71288.w;
				float DotProducts_LdotH_Total2265_g71288 = max( max( dotResult5705_g71288, Additional_Lights_Data_LdotH5770_g71288 ), 1E-37 );
				float lerpResult750_g71288 = lerp( break74_g71329.g , ( 1.0 - break74_g71329.g ) , _MainMaskType);
				float ClearCoat_Smoothness3145_g71288 = ( tex2DNode4447_g71288.g * _ClearCoatSmoothness );
				float ClearCoat_Fresnel3141_g71288 = temp_output_3201_0_g71288;
				float lerpResult3282_g71288 = lerp( ( lerpResult750_g71288 * _SmoothnessStrength ) , ClearCoat_Smoothness3145_g71288 , ClearCoat_Fresnel3141_g71288);
				float temp_output_53_0_g71288 = ( lerpResult3282_g71288 * lerpResult3282_g71288 );
				float temp_output_47_0_g71288 = ( 1.0 - temp_output_53_0_g71288 );
				float temp_output_1292_0_g71288 = ( temp_output_47_0_g71288 * temp_output_47_0_g71288 );
				float Roughness730_g71288 = temp_output_1292_0_g71288;
				float2 break7191_g71288 = ( ( 1.0 - temp_output_7174_0_g71288 ) + ( temp_output_7174_0_g71288 * ( ( DotProducts_LdotH_Total2265_g71288 * DotProducts_LdotH_Total2265_g71288 * Roughness730_g71288 * 2.0 ) + 0.5 ) ) );
				float2 LightMap_UV_Static5460_g71288 = (input.ase_texcoord3.zw*(unity_LightmapST).xy + (unity_LightmapST).zw);
				float2 LightMap_UV_Dynamic5461_g71288 = (input.ase_texcoord4.xy*(unity_DynamicLightmapST).xy + (unity_DynamicLightmapST).zw);
				float4 Surface_Data_Screen_Position5442_g71288 = ScreenPosNorm;
				float3 bakedGI7040_g71288 = ASEBakedGI( Surface_Data_World_Position5438_g71288, Surface_Data_Normal_WS_Final7693_g71288, ( uint2 )( Surface_Data_Screen_Position5442_g71288.xy * _ScreenSize.xy ), LightMap_UV_Static5460_g71288, LightMap_UV_Dynamic5461_g71288, false);
				float Occlusion435_g71288 = saturate( (min( break74_g71329.b, input.ase_color.a )*_OcclusionStrengthAO + ( 1.0 - _OcclusionStrengthAO )) );
				float3 Indirect_Diffuse644_g71288 = ( bakedGI7040_g71288 * Occlusion435_g71288 * _IndirectDiffuse );
				float Smoothness_417_g71288 = lerpResult3282_g71288;
				half3 reflectVector647_g71288 = reflect( -ViewDirWS, Surface_Data_Normal_WS_Final7693_g71288 );
				float3 indirectSpecular647_g71288 = GlossyEnvironmentReflection( reflectVector647_g71288, PositionWS, 1.0 - (_IndirectSpecularSmoothness*( 1.0 - Smoothness_417_g71288 ) + Smoothness_417_g71288), Occlusion435_g71288, ScreenPosNorm.xy );
				float3 Additional_Lights_Data_Color5767_g71288 = (localAdditionalLightsData171x7831_g71288[ 3 ]).xyz;
				float3 ase_mainLightColorLDR = ase_mainLight.color / ( max( max( ase_mainLight.color.r, ase_mainLight.color.g ), ase_mainLight.color.b ) + 1e-7 );
				float ase_mainLightIntensity = max( max( ase_mainLight.color.r, ase_mainLight.color.g ), ase_mainLight.color.b );
				float ase_mainLightShadowAtten = ase_mainLight.shadowAttenuation;
				float3 temp_output_7980_0_g71288 = ( ase_mainLightColorLDR * ase_mainLightIntensity * ase_mainLightShadowAtten );
				float3 MainLight_Scene_Lighting1527_g71288 = max( Additional_Lights_Data_Color5767_g71288, temp_output_7980_0_g71288 );
				float temp_output_6993_0_g71288 = (_IndirectSpecular*( 1.0 - Metallic403_g71288 ) + Metallic403_g71288);
				float3 temp_output_7000_0_g71288 = (( indirectSpecular647_g71288 * ( _IndirectSpecColor * MainLight_Scene_Lighting1527_g71288 ) )*temp_output_6993_0_g71288 + ( 1.0 - temp_output_6993_0_g71288 ));
				float3 Indirect_Specular600_g71288 = temp_output_7000_0_g71288;
				float localStochasticTiling2_g71299 = ( 0.0 );
				float2 UV2_g71299 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71299 = _SpecularMap_TexelSize;
				float4 Offsets2_g71299 = float4( 0,0,0,0 );
				float2 Weights2_g71299 = float2( 0,0 );
				{
				UV2_g71299 = UV2_g71299 * TexelSize2_g71299.zw - 0.5;
				float2 f = frac( UV2_g71299 );
				UV2_g71299 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71299.x - 0.5, UV2_g71299.x + 1.5, UV2_g71299.y - 0.5, UV2_g71299.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71299 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71299.xyxy;
				Weights2_g71299 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71314 = Offsets2_g71299;
				float2 Input_FetchWeights200_g71314 = Weights2_g71299;
				float2 break187_g71314 = Input_FetchWeights200_g71314;
				float4 lerpResult181_g71314 = lerp( SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).yw ) , SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).xw ) , break187_g71314.x);
				float4 lerpResult182_g71314 = lerp( SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).yz ) , SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).xz ) , break187_g71314.x);
				float4 lerpResult176_g71314 = lerp( lerpResult181_g71314 , lerpResult182_g71314 , break187_g71314.y);
				float4 Output_Fetch2D_Auto202_g71314 = lerpResult176_g71314;
				float3 Specular_Map64_g71288 = ( (_SpecularColor).rgb * (Output_Fetch2D_Auto202_g71314).rgb );
				float3 lerpResult7213_g71288 = lerp( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) , ( ( 1.0 - (Dieletric7593_g71288).rgb ) * Specular_Map64_g71288 ) , ( Metallic403_g71288 * 0.5 ));
				float3 specColor7214_g71288 = lerpResult7213_g71288;
				float grazingTerm4732_g71288 = saturate( ( temp_output_400_0_g71288 + temp_output_1292_0_g71288 ) );
				float3 temp_cast_7 = (grazingTerm4732_g71288).xxx;
				float temp_output_7196_0_g71288 = saturate( ( 1.0 - DotProducts_NdotV_Zero210_g71288 ) );
				float3 lerpResult7195_g71288 = lerp( specColor7214_g71288 , temp_cast_7 , ( temp_output_7196_0_g71288 * temp_output_7196_0_g71288 * temp_output_7196_0_g71288 * temp_output_7196_0_g71288 * temp_output_7196_0_g71288 ));
				float dotResult5563_g71288 = dot( Surface_Data_Normal_WS_Final7693_g71288 , Surface_Data_HalfDir7369_g71288 );
				float Additional_Lights_Data_NdotH5772_g71288 = break7813_g71288.y;
				float2 appendResult7502_g71288 = (float2(max( dotResult5651_g71288, Additional_Lights_Data_NdotL5766_g71288 ) , max( dotResult5563_g71288, Additional_Lights_Data_NdotH5772_g71288 )));
				float2 DotProducts_GSFdots_totalRaw7498_g71288 = appendResult7502_g71288;
				float temp_output_7509_0_g71288 = ( _LightWrapping * 0.5 );
				float2 break7510_g71288 = max( (DotProducts_GSFdots_totalRaw7498_g71288*( 1.0 - temp_output_7509_0_g71288 ) + temp_output_7509_0_g71288), 1E-37 );
				float Shadow_65_g71288 = pow( saturate( ( ( ( DotProducts_NdotV_Zero210_g71288 * break7510_g71288.x ) * ( 1.0 - _ShadowStrength ) ) - _ShadowOffset ) ) , _ShadowFalloff );
				#if ( SHADER_TARGET >= 50 )
				float recip6507_g71288 = rcp( PI );
				#else
				float recip6507_g71288 = 1.0 / PI;
				#endif
				float DotProducts_NdotH_Total2269_g71288 = max( max( dotResult5563_g71288, Additional_Lights_Data_NdotH5772_g71288 ), 1E-37 );
				float temp_output_6508_0_g71288 = ( DotProducts_NdotH_Total2269_g71288 * DotProducts_NdotH_Total2269_g71288 );
				float temp_output_6510_0_g71288 = max( temp_output_6508_0_g71288, 0.0001 );
				float temp_output_6513_0_g71288 = ( max( Roughness730_g71288, 0.0001 ) / ( temp_output_6510_0_g71288 * ( ( ( 1.0 - temp_output_6508_0_g71288 ) / temp_output_6510_0_g71288 ) + ( Roughness730_g71288 * Roughness730_g71288 ) ) ) );
				float Specular200_g71288 = ( recip6507_g71288 * ( temp_output_6513_0_g71288 * temp_output_6513_0_g71288 ) );
				float temp_output_7108_0_g71288 = saturate( ( 1.0 - DotProducts_LdotH_Total2265_g71288 ) );
				float3 temp_output_7080_0_g71288 = ( specColor7214_g71288 + ( ( 1.0 - specColor7214_g71288 ) * ( temp_output_7108_0_g71288 * temp_output_7108_0_g71288 * temp_output_7108_0_g71288 * temp_output_7108_0_g71288 * temp_output_7108_0_g71288 ) ) );
				float3 Fresnel_Term201_g71288 = temp_output_7080_0_g71288;
				float DotProducts_NdotL_LWrap7545_g71288 = break7510_g71288.x;
				float Additional_Lights_Data_Atten7911_g71288 = (localAdditionalLightsData171x7831_g71288[ 3 ]).w;
				float MainLight_Atten5446_g71288 = ase_mainLightShadowAtten;
				float MainLight_FinalAtten7914_g71288 = max( Additional_Lights_Data_Atten7911_g71288, MainLight_Atten5446_g71288 );
				float temp_output_7917_0_g71288 = ( 1.0 - ( DotProducts_NdotL_LWrap7545_g71288 * MainLight_FinalAtten7914_g71288 ) );
				float3 lerpResult4741_g71288 = lerp( ( temp_output_48_0_g71288 * _ShadowColor.rgb ) , _ShadowColor.rgb , _ShadowColor.a);
				float3 Shadow_Color4747_g71288 = ( lerpResult4741_g71288 * Occlusion435_g71288 * _ShadowColorEnable );
				float dotResult1674_g71288 = dot( -( MainLight_Dir1116_g71288 + ( Surface_Data_Normal_WS_BumpNormalized1160_g71288 * _TranslucencyNormalDistortion ) ) , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float3 BaseColor_Map63_g71288 = temp_output_48_0_g71288;
				float3 Translucency1428_g71288 = ( ( ( ( pow( saturate( dotResult1674_g71288 ) , _TranslucencyScattering ) * _TranslucencyDirect ) + ( Indirect_Diffuse644_g71288 * _TranslucencyAmbient ) ) * MainLight_Scene_Lighting1527_g71288 * BaseColor_Map63_g71288 * ( (SAMPLE_TEXTURE2D( _TranslucencyMap, sampler_MainTex, UV_Raw_UV2902_g71288 )).rgb / _TranslucencyFeather ) * (_TranslucencyColor).rgb * _TranslucencyStrength ) * _TranslucencyMapEnable );
				float DotProducts_NdotL_Inv1390_g71288 = max( -dotResult5651_g71288, dotResult5651_g71288 );
				float3 temp_output_1713_0_g71288 = (_TransmissionColor).rgb;
				float3 Transmission1400_g71288 = ( ( DotProducts_NdotL_Inv1390_g71288 * MainLight_Scene_Lighting1527_g71288 * BaseColor_Map63_g71288 * ( ( (SAMPLE_TEXTURE2D( _TransmissionMap, sampler_MainTex, UV_Raw_UV2902_g71288 )).rgb / _TransmissionFeather ) * temp_output_1713_0_g71288 ) * _TransmissionStrength ) * _TransmissionMapEnable );
				float3 BaseColor5340_g71288 = _BaseColor;
				float3 ClearCoat_Color3149_g71288 = saturate( ( (MainLight_Scene_Lighting1527_g71288*_MainLightAffectClearCoat + ( 1.0 - _MainLightAffectClearCoat )) * (BaseColor5340_g71288*_BaseColorAffectClearCoat + ( 1.0 - _BaseColorAffectClearCoat )) * _ClearCoatColor * temp_output_3201_0_g71288 ) );
				float3 break5386_g71288 = ( ( max( ( ( ( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) * ( 1.0 - Metallic403_g71288 ) * ( break7191_g71288.x * break7191_g71288.y ) ) + Indirect_Diffuse644_g71288 + ( Indirect_Specular600_g71288 * lerpResult7195_g71288 * max( Metallic403_g71288, 0.15 ) * ( 1.0 - ( Roughness730_g71288 * Roughness730_g71288 * Roughness730_g71288 ) ) ) + ( ( Shadow_65_g71288 * ( Specular200_g71288 * lerpResult7213_g71288 ) * ( Fresnel_Term201_g71288 * lerpResult7213_g71288 ) ) / ( max( DotProducts_NdotL_LWrap7545_g71288, 0.1 ) * max( 0.1, DotProducts_NdotV_Zero210_g71288 ) * 4.0 ) ) ) * MainLight_Scene_Lighting1527_g71288 * DotProducts_NdotL_LWrap7545_g71288 ), ( temp_output_7917_0_g71288 * temp_output_7917_0_g71288 * Shadow_Color4747_g71288 ) ) + Translucency1428_g71288 ) + Transmission1400_g71288 );
				float3 break5392_g71288 = ( ( ( max( ( ( ( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) * ( 1.0 - Metallic403_g71288 ) * ( break7191_g71288.x * break7191_g71288.y ) ) + Indirect_Diffuse644_g71288 + ( Indirect_Specular600_g71288 * lerpResult7195_g71288 * max( Metallic403_g71288, 0.15 ) * ( 1.0 - ( Roughness730_g71288 * Roughness730_g71288 * Roughness730_g71288 ) ) ) + ( ( Shadow_65_g71288 * ( Specular200_g71288 * lerpResult7213_g71288 ) * ( Fresnel_Term201_g71288 * lerpResult7213_g71288 ) ) / ( max( DotProducts_NdotL_LWrap7545_g71288, 0.1 ) * max( 0.1, DotProducts_NdotV_Zero210_g71288 ) * 4.0 ) ) ) * MainLight_Scene_Lighting1527_g71288 * DotProducts_NdotL_LWrap7545_g71288 ), ( temp_output_7917_0_g71288 * temp_output_7917_0_g71288 * Shadow_Color4747_g71288 ) ) + Translucency1428_g71288 ) + Transmission1400_g71288 ) + ClearCoat_Color3149_g71288 );
				
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 temp_output_102_0_g71324 = ( cross( ddx( PositionRWS ) , ddy( PositionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				
				float lerpResult5320_g71288 = lerp( 0.01 , _AlphaCutoffShadow , _UseShadowThreshold);
				
				float3 BakedAlbedo = 0;
				float3 BakedEmission = 0;
				float3 Color = ( ( ( ( max( ( ( ( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) * ( 1.0 - Metallic403_g71288 ) * ( break7191_g71288.x * break7191_g71288.y ) ) + Indirect_Diffuse644_g71288 + ( Indirect_Specular600_g71288 * lerpResult7195_g71288 * max( Metallic403_g71288, 0.15 ) * ( 1.0 - ( Roughness730_g71288 * Roughness730_g71288 * Roughness730_g71288 ) ) ) + ( ( Shadow_65_g71288 * ( Specular200_g71288 * lerpResult7213_g71288 ) * ( Fresnel_Term201_g71288 * lerpResult7213_g71288 ) ) / ( max( DotProducts_NdotL_LWrap7545_g71288, 0.1 ) * max( 0.1, DotProducts_NdotV_Zero210_g71288 ) * 4.0 ) ) ) * MainLight_Scene_Lighting1527_g71288 * DotProducts_NdotL_LWrap7545_g71288 ), ( temp_output_7917_0_g71288 * temp_output_7917_0_g71288 * Shadow_Color4747_g71288 ) ) + Translucency1428_g71288 ) + Transmission1400_g71288 ) + ClearCoat_Color3149_g71288 ) * ( ( ( max( max( break5386_g71288.x, break5386_g71288.y ), break5386_g71288.z ) / max( max( break5392_g71288.x, break5392_g71288.y ), break5392_g71288.z ) ) * 0.5 ) + 0.5 ) );
				float Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
					float AlphaClipThresholdShadow = lerpResult5320_g71288;
				#endif
				

				#if defined( ASE_DEPTH_WRITE_ON )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_CHANGES_WORLD_POS)
					ShadowCoord = TransformWorldToShadowCoord( PositionWS );
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = PositionWS;
				inputData.positionCS = input.positionCS;
				inputData.normalizedScreenSpaceUV = ScreenPosNorm.xy;
				inputData.normalWS = NormalWS;
				inputData.viewDirectionWS = ViewDirWS;

				#if defined(_SCREEN_SPACE_OCCLUSION) && !defined(_SURFACE_TYPE_TRANSPARENT) && defined(UNLIT_DEFAULT_SSAO)
					float2 normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(input.positionCS);
					AmbientOcclusionFactor aoFactor = GetScreenSpaceAmbientOcclusion(normalizedScreenSpaceUV);
					Color.rgb *= aoFactor.directAmbientOcclusion;
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = InitializeInputDataFog(float4(inputData.positionWS, 1.0), input.positionWSAndFogFactor.w);
				#endif

				#if defined(_DBUFFER) && defined(UNLIT_DEFAULT_DECAL_BLENDING)
					ApplyDecalToBaseColor(input.positionCS, Color);
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						Color.rgb = MixFogColor(Color.rgb, half3(0,0,0), inputData.fogCoord);
					#else
						Color.rgb = MixFog(Color.rgb, inputData.fogCoord);
					#endif
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					outputDepth = input.positionCS.z;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					outRenderingLayers = EncodeMeshRenderingLayer();
				#endif

				#if defined( ASE_OPAQUE_KEEP_ALPHA )
					return half4( Color, Alpha );
				#else
					return half4( Color, OutputAlpha( Alpha, isTransparent ) );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			

			float3 _LightDirection;
			float3 _LightPosition;

			PackedVaryings VertexFunction( Attributes input )
			{
				PackedVaryings output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				float3 ase_positionWS = TransformObjectToWorld( ( input.positionOS ).xyz );
				output.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = TransformObjectToWorldDir( input.tangentOS.xyz );
				output.ase_texcoord2.xyz = ase_tangentWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				output.ase_texcoord3.xyz = ase_normalWS;
				float ase_tangentSign = input.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				output.ase_texcoord4.xyz = ase_bitangentWS;
				float4 ase_positionCS = TransformObjectToHClip( ( input.positionOS ).xyz );
				float4x4 ase_matrixInvP = UNITY_MATRIX_I_P;
				float4 ase_hpositionVS = mul( ase_matrixInvP, ase_positionCS );
				float3 ase_positionRWS = mul( ( float3x3 )UNITY_MATRIX_I_V, ase_hpositionVS.xyz / ase_hpositionVS.w );
				output.ase_texcoord5.xyz = ase_positionRWS;
				
				output.ase_texcoord.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord.zw = 0;
				output.ase_texcoord1.w = 0;
				output.ase_texcoord2.w = 0;
				output.ase_texcoord3.w = 0;
				output.ase_texcoord4.w = 0;
				output.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				half3 normalWS = TransformObjectToWorldDir(input.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				#if UNITY_REVERSED_Z
					positionCS.z = min(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#else
					positionCS.z = max(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#endif

				output.positionCS = positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input
						#if defined( ASE_DEPTH_WRITE_ON )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 ase_positionWS = input.ase_texcoord1.xyz;
				float3 ase_tangentWS = input.ase_texcoord2.xyz;
				float3 ase_normalWS = input.ase_texcoord3.xyz;
				float3 ase_bitangentWS = input.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 ase_positionRWS = input.ase_texcoord5.xyz;
				float3 temp_output_102_0_g71324 = ( cross( ddx( ase_positionRWS ) , ddy( ase_positionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirSafeWS = SafeNormalize( ase_viewVectorWS );
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ase_viewDirSafeWS;
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				
				float lerpResult5320_g71288 = lerp( 0.01 , _AlphaCutoffShadow , _UseShadowThreshold);
				

				float Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
					float AlphaClipThresholdShadow = lerpResult5320_g71288;
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					#if defined( _ALPHATEST_SHADOW_ON )
						AlphaDiscard( Alpha, AlphaClipThresholdShadow );
					#else
						AlphaDiscard( Alpha, AlphaClipThreshold );
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					outputDepth = input.positionCS.z;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_positionWS = TransformObjectToWorld( ( input.positionOS ).xyz );
				output.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = TransformObjectToWorldDir( input.tangentOS.xyz );
				output.ase_texcoord2.xyz = ase_tangentWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				output.ase_texcoord3.xyz = ase_normalWS;
				float ase_tangentSign = input.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				output.ase_texcoord4.xyz = ase_bitangentWS;
				float4 ase_positionCS = TransformObjectToHClip( ( input.positionOS ).xyz );
				float4x4 ase_matrixInvP = UNITY_MATRIX_I_P;
				float4 ase_hpositionVS = mul( ase_matrixInvP, ase_positionCS );
				float3 ase_positionRWS = mul( ( float3x3 )UNITY_MATRIX_I_V, ase_hpositionVS.xyz / ase_hpositionVS.w );
				output.ase_texcoord5.xyz = ase_positionRWS;
				
				output.ase_texcoord.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord.zw = 0;
				output.ase_texcoord1.w = 0;
				output.ase_texcoord2.w = 0;
				output.ase_texcoord3.w = 0;
				output.ase_texcoord4.w = 0;
				output.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input
						#if defined( ASE_DEPTH_WRITE_ON )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 ase_positionWS = input.ase_texcoord1.xyz;
				float3 ase_tangentWS = input.ase_texcoord2.xyz;
				float3 ase_normalWS = input.ase_texcoord3.xyz;
				float3 ase_bitangentWS = input.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 ase_positionRWS = input.ase_texcoord5.xyz;
				float3 temp_output_102_0_g71324 = ( cross( ddx( ase_positionRWS ) , ddy( ase_positionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirSafeWS = SafeNormalize( ase_viewVectorWS );
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ase_viewDirSafeWS;
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				

				float Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					outputDepth = input.positionCS.z;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION


			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			

			int _ObjectId;
			int _PassValue;

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_positionWS = TransformObjectToWorld( ( input.positionOS ).xyz );
				output.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = TransformObjectToWorldDir( input.tangentOS.xyz );
				output.ase_texcoord2.xyz = ase_tangentWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				output.ase_texcoord3.xyz = ase_normalWS;
				float ase_tangentSign = input.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				output.ase_texcoord4.xyz = ase_bitangentWS;
				float4 ase_positionCS = TransformObjectToHClip( ( input.positionOS ).xyz );
				float4x4 ase_matrixInvP = UNITY_MATRIX_I_P;
				float4 ase_hpositionVS = mul( ase_matrixInvP, ase_positionCS );
				float3 ase_positionRWS = mul( ( float3x3 )UNITY_MATRIX_I_V, ase_hpositionVS.xyz / ase_hpositionVS.w );
				output.ase_texcoord5.xyz = ase_positionRWS;
				
				output.ase_texcoord.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord.zw = 0;
				output.ase_texcoord1.w = 0;
				output.ase_texcoord2.w = 0;
				output.ase_texcoord3.w = 0;
				output.ase_texcoord4.w = 0;
				output.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_Target
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 ase_positionWS = input.ase_texcoord1.xyz;
				float3 ase_tangentWS = input.ase_texcoord2.xyz;
				float3 ase_normalWS = input.ase_texcoord3.xyz;
				float3 ase_bitangentWS = input.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 ase_positionRWS = input.ase_texcoord5.xyz;
				float3 temp_output_102_0_g71324 = ( cross( ddx( ase_positionRWS ) , ddy( ase_positionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirSafeWS = SafeNormalize( ase_viewVectorWS );
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ase_viewDirSafeWS;
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				

				surfaceDescription.Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _ALPHATEST_ON
					clip(surfaceDescription.Alpha - surfaceDescription.AlphaClipThreshold);
				#endif

				half4 outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				return outColor;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT

			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION


			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			

			float4 _SelectionID;

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_positionWS = TransformObjectToWorld( ( input.positionOS ).xyz );
				output.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = TransformObjectToWorldDir( input.tangentOS.xyz );
				output.ase_texcoord2.xyz = ase_tangentWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				output.ase_texcoord3.xyz = ase_normalWS;
				float ase_tangentSign = input.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				output.ase_texcoord4.xyz = ase_bitangentWS;
				float4 ase_positionCS = TransformObjectToHClip( ( input.positionOS ).xyz );
				float4x4 ase_matrixInvP = UNITY_MATRIX_I_P;
				float4 ase_hpositionVS = mul( ase_matrixInvP, ase_positionCS );
				float3 ase_positionRWS = mul( ( float3x3 )UNITY_MATRIX_I_V, ase_hpositionVS.xyz / ase_hpositionVS.w );
				output.ase_texcoord5.xyz = ase_positionRWS;
				
				output.ase_texcoord.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord.zw = 0;
				output.ase_texcoord1.w = 0;
				output.ase_texcoord2.w = 0;
				output.ase_texcoord3.w = 0;
				output.ase_texcoord4.w = 0;
				output.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = vertexInput.positionCS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input ) : SV_Target
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 ase_positionWS = input.ase_texcoord1.xyz;
				float3 ase_tangentWS = input.ase_texcoord2.xyz;
				float3 ase_normalWS = input.ase_texcoord3.xyz;
				float3 ase_bitangentWS = input.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 ase_positionRWS = input.ase_texcoord5.xyz;
				float3 temp_output_102_0_g71324 = ( cross( ddx( ase_positionRWS ) , ddy( ase_positionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirSafeWS = SafeNormalize( ase_viewVectorWS );
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ase_viewDirSafeWS;
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				

				surfaceDescription.Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#ifdef _ALPHATEST_ON
					clip(surfaceDescription.Alpha - surfaceDescription.AlphaClipThreshold);
				#endif

				half4 outColor = 0;
				outColor = unity_SelectionID;

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormalsOnly" }

			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

        	#define _ALPHATEST_ON
        	#pragma multi_compile_instancing
        	#pragma multi_compile _ LOD_FADE_CROSSFADE
        	#define ASE_FOG 1
        	#define _ALPHATEST_SHADOW_ON 1
        	#define ASE_VERSION 19907
        	#define ASE_SRP_VERSION 170300
        	#define ASE_USING_SAMPLING_MACROS 1


        	#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT

			#pragma vertex vert
			#pragma fragment frag

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define VARYINGS_NEED_NORMAL_WS

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

            #if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				half3 normalWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_positionWS = TransformObjectToWorld( ( input.positionOS ).xyz );
				output.ase_texcoord2.xyz = ase_positionWS;
				float3 ase_tangentWS = TransformObjectToWorldDir( input.tangentOS.xyz );
				output.ase_texcoord3.xyz = ase_tangentWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				float ase_tangentSign = input.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				output.ase_texcoord4.xyz = ase_bitangentWS;
				float4 ase_positionCS = TransformObjectToHClip( ( input.positionOS ).xyz );
				float4x4 ase_matrixInvP = UNITY_MATRIX_I_P;
				float4 ase_hpositionVS = mul( ase_matrixInvP, ase_positionCS );
				float3 ase_positionRWS = mul( ( float3x3 )UNITY_MATRIX_I_V, ase_hpositionVS.xyz / ase_hpositionVS.w );
				output.ase_texcoord5.xyz = ase_positionRWS;
				
				output.ase_texcoord1.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord1.zw = 0;
				output.ase_texcoord2.w = 0;
				output.ase_texcoord3.w = 0;
				output.ase_texcoord4.w = 0;
				output.ase_texcoord5.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS );

				output.positionCS = vertexInput.positionCS;
				output.normalWS = normalInput.normalWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.ase_texcoord = input.ase_texcoord;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			void frag(PackedVaryings input
						, out half4 outNormalWS : SV_Target0
						#if defined( ASE_DEPTH_WRITE_ON )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out uint outRenderingLayers : SV_Target1
						#endif
						 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				half3 NormalWS = normalize( input.normalWS );
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord1.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 ase_positionWS = input.ase_texcoord2.xyz;
				float3 ase_tangentWS = input.ase_texcoord3.xyz;
				float3 ase_bitangentWS = input.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, NormalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, NormalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, NormalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - ase_positionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord1.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 ase_positionRWS = input.ase_texcoord5.xyz;
				float3 temp_output_102_0_g71324 = ( cross( ddx( ase_positionRWS ) , ddy( ase_positionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirSafeWS = SafeNormalize( ase_viewVectorWS );
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ase_viewDirSafeWS;
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				

				float Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					outputDepth = input.positionCS.z;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(NormalWS);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					outNormalWS = half4(NormalizeNormalPerPixel( NormalWS ), 0.0);
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					outRenderingLayers = EncodeMeshRenderingLayer();
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "MotionVectors"
			Tags { "LightMode"="MotionVectors" }

			ColorMask RG

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

            #define SHADERPASS SHADERPASS_MOTION_VECTORS

            #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
				#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
			#endif

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MotionVectorsCommon.hlsl"

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_RELATIVE_WORLD_POS


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
					float3 alembicMotionVector : TEXCOORD5;
				#endif
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float4 positionCSNoJitter : TEXCOORD0;
				float4 previousPositionCSNoJitter : TEXCOORD1;
				float3 positionWS : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);


			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_tangentWS = TransformObjectToWorldDir( input.tangentOS.xyz );
				output.ase_texcoord4.xyz = ase_tangentWS;
				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				output.ase_texcoord5.xyz = ase_normalWS;
				float ase_tangentSign = input.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				output.ase_texcoord6.xyz = ase_bitangentWS;
				
				output.ase_texcoord3.xy = input.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord3.zw = 0;
				output.ase_texcoord4.w = 0;
				output.ase_texcoord5.w = 0;
				output.ase_texcoord6.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(APPLICATION_SPACE_WARP_MOTION)
					output.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, input.positionOS));
					output.positionCS = output.positionCSNoJitter;
				#else
					output.positionCS = vertexInput.positionCS;
					output.positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, input.positionOS));
				#endif

				float4 prevPos = ( unity_MotionVectorsParams.x == 1 ) ? float4( input.positionOld, 1 ) : input.positionOS;

				#if _ADD_PRECOMPUTED_VELOCITY
					prevPos = prevPos - float4(input.alembicMotionVector, 0);
				#endif

				output.previousPositionCSNoJitter = mul( _PrevViewProjMatrix, mul( UNITY_PREV_MATRIX_M, prevPos ) );
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}

			half4 frag(	PackedVaryings input
				#if defined( ASE_DEPTH_WRITE_ON )
				,out float outputDepth : ASE_SV_DEPTH
				#endif
				 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 ase_tangentWS = input.ase_texcoord4.xyz;
				float3 ase_normalWS = input.ase_texcoord5.xyz;
				float3 ase_bitangentWS = input.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - PositionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - PositionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - PositionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 temp_output_102_0_g71324 = ( cross( ddx( PositionRWS ) , ddy( PositionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - PositionWS );
				float3 ase_viewDirSafeWS = SafeNormalize( ase_viewVectorWS );
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ase_viewDirSafeWS;
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				

				float Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined( ASE_CHANGES_WORLD_POS )
					float3 positionOS = mul( GetWorldToObjectMatrix(),  float4( PositionWS, 1.0 ) ).xyz;
					float3 previousPositionWS = mul( GetPrevObjectToWorldMatrix(),  float4( positionOS, 1.0 ) ).xyz;
					input.positionCSNoJitter = mul( _NonJitteredViewProjMatrix, float4( PositionWS, 1.0 ) );
					input.previousPositionCSNoJitter = mul( _PrevViewProjMatrix, float4( previousPositionWS, 1.0 ) );
				#endif

				#if defined( LOD_FADE_CROSSFADE )
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					outputDepth = input.positionCS.z;
				#endif

				#if defined(APPLICATION_SPACE_WARP_MOTION)
					return float4( CalcAswNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 1 );
				#else
					return float4( CalcNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 0, 0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#define _ALPHATEST_ON
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#define ASE_FOG 1
			#define _ALPHATEST_SHADOW_ON 1
			#pragma shader_feature_local_fragment _RECEIVE_SHADOWS_OFF
			#define ASE_VERSION 19907
			#define ASE_SRP_VERSION 170300
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#define ASE_USING_SAMPLING_MACROS 1


			// Deferred Rendering Path does not support the OpenGL-based graphics API:
			// Desktop OpenGL, OpenGL ES 3.0, WebGL 2.0.
			#pragma exclude_renderers glcore gles3 switch2 webgpu 

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_SCREEN_POSITION_NORMALIZED
			#define ASE_NEEDS_TEXTURE_COORDINATES1
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES1
			#define ASE_NEEDS_TEXTURE_COORDINATES2
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES2
			#define ASE_NEEDS_VERT_POSITION
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
			#pragma multi_compile _ _CLUSTER_LIGHT_LOOP
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_ATLAS


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				half3 normalWS : TEXCOORD1;
				half4 tangentWS : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _SpecularColor;
			float4 _ShadowColor;
			float4 _MainTex_ST;
			float4 _TranslucencyColor;
			float4 _SpecularMap_TexelSize;
			float4 _TransmissionColor;
			float4 _BumpMap_TexelSize;
			float4 _MainTex_TexelSize;
			float4 _MainMaskMap_TexelSize;
			float3 _IndirectSpecColor;
			float3 _ClearCoatColor;
			half3 _BaseColor;
			half _TransmissionMapEnable;
			float _LightWrapping;
			half _ShadowStrength;
			half _ShadowOffset;
			float _ShadowFalloff;
			float _ShadowColorEnable;
			float _TranslucencyNormalDistortion;
			float _TranslucencyScattering;
			float _TranslucencyDirect;
			float _TranslucencyAmbient;
			float _TranslucencyFeather;
			float _EnableClipGlancingAngle;
			float _TranslucencyStrength;
			half _TranslucencyMapEnable;
			float _AlphaRemapMax;
			float _AlphaRemapMin;
			half _TransmissionStrength;
			float _BaseColorAffectClearCoat;
			float _MainLightAffectClearCoat;
			float _TransmissionFeather;
			int _Cull;
			float _AlphaCutoffShadow;
			float _ParallaxIterations;
			float _ParallaxReferencePlane;
			float _ParallaxAmplitude;
			float _EnableParallax;
			float _Saturation;
			half _Brightness;
			float _MetallicStrength;
			half _NormalStrength;
			float _DoubleSidedNormalMode;
			float _ClearCoatTilingX;
			float _ClearCoatTilingY;
			float _ClearCoatNormalStrength;
			float _ClearCoatBias;
			half _ClearCoatStrength;
			float _ClearCoatFalloff;
			half _ClearCoat;
			float _EnableClearCoat;
			float _MainMaskType;
			half _SmoothnessStrength;
			float _ClearCoatSmoothness;
			half _OcclusionStrengthAO;
			float _IndirectDiffuse;
			half _IndirectSpecularSmoothness;
			half _IndirectSpecular;
			float _UseShadowThreshold;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			TEXTURE2D(_ParallaxMap);
			SAMPLER(sampler_ParallaxMap);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_MainMaskMap);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_ClearCoatNormalMap);
			TEXTURE2D(_ClearCoatMaskMap);
			TEXTURE2D(_SpecularMap);
			TEXTURE2D(_TranslucencyMap);
			TEXTURE2D(_TransmissionMap);


			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/GBufferOutput.hlsl"

			float2 IterativeParallax3077_g71288( TEXTURE2D(tex), float2 UVs, float2 plane, int ite, float refp, float scale, SamplerState customSS )
			{
				UVs += plane * scale * refp * ite;
				for(int i = 0; i < ite; i++)
				{
				#if ASE_USING_SAMPLING_MACROS
					UVs += (SAMPLE_TEXTURE2D( tex, customSS, UVs ).g - 1) * plane * scale;
				#else
					UVs += (tex2D(tex, UVs).g - 1) * plane * scale;
				#endif
				}
				return UVs;
			}
			
			float3 _NormalModefloat3switch( float m_switch, float3 m_Flip, float3 m_Mirror, float3 m_None )
			{
				switch (m_switch) {
					case 0:
						return m_Flip;
					case 1:
						return m_Mirror;
					default:
					case 2:
						return m_None;
				}
			}
			
			half4 CalculateShadowMask5459_g71288(  )
			{
				#if defined(SHADOWS_SHADOWMASK) && defined(LIGHTMAP_ON)
				half4 shadowMask = inputData.shadowMask;
				#elif !defined (LIGHTMAP_ON)
				half4 shadowMask = unity_ProbesOcclusion;
				#else
				half4 shadowMask = half4(1, 1, 1, 1);
				#endif
				return shadowMask;
			}
			
			float4x4 AdditionalLightsData171x( float3 WorldPosition, float2 ScreenUV, float3 WorldNormal, float3 WorldTangent, float3 WorldBitangent, float3 ViewDirection, float4 ShadowMask, float Min_Clamp )
			{
				float4x4 LightData = 0;
				#if defined(_ADDITIONAL_LIGHTS)
				float4 totalDotsA = Min_Clamp;
				float4 totalDotsB = Min_Clamp; // z & w are unused, feel free to add your own custom dots here
				float4 totalDotsC = 0; // z & w are unused, feel free to add your own custom Tangent dots here NOTE: is 'min'-ed instead of 'max'-ed
				half4 totalAttenColor = 0;
					#define SUM_DATA(Light)\
						float3 HalfDir = normalize( light.direction + ViewDirection );\
						float3 LightRef = normalize( reflect( -light.direction, WorldNormal ));\
						float2 tanDots = float2( dot( WorldTangent, HalfDir ), dot( WorldBitangent, HalfDir ));\
						float LightAtten = light.distanceAttenuation * light.shadowAttenuation;\
						float StepLightAtten = smoothstep( 0, 0.01, LightAtten);\
						totalDotsA = max( totalDotsA, float4( dot( light.direction, WorldNormal ), dot( WorldNormal, HalfDir ), dot( light.direction, ViewDirection),  dot( light.direction, HalfDir ))* StepLightAtten);\
						totalDotsB = max( totalDotsB, float4( dot( ViewDirection, HalfDir ), dot( LightRef, ViewDirection ), 0, 0)* StepLightAtten);\
						totalDotsC = min( totalDotsC, float4( tanDots * tanDots, 0, 0)* StepLightAtten);\
						totalAttenColor = max( totalAttenColor, float4( light.color * LightAtten, LightAtten));
					InputData inputData = (InputData)0;
					inputData.normalizedScreenSpaceUV = ScreenUV;
					inputData.positionWS = WorldPosition;
					uint meshRenderingLayers = GetMeshRenderingLayer();
					uint pixelLightCount = GetAdditionalLightsCount();	
					#if USE_CLUSTER_LIGHT_LOOP
					[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
					{
						CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK
						Light light = GetAdditionalLight(lightIndex, WorldPosition, ShadowMask);
						#ifdef _LIGHT_LAYERS
						if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
						#endif
						{
							SUM_DATA( light );
						}
					}
					#endif
					
					LIGHT_LOOP_BEGIN( pixelLightCount )
						Light light = GetAdditionalLight(lightIndex, WorldPosition, ShadowMask);
						#ifdef _LIGHT_LAYERS
						if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
						#endif
						{
							SUM_DATA( light );
						}
					LIGHT_LOOP_END
					LightData = float4x4(totalDotsA, totalDotsB, totalDotsC , totalAttenColor);
				#endif
				return LightData;
			}
			
			float3 ASEBakedGI( float3 positionWS, float3 normalWS, uint2 positionSS, float2 uvStaticLightmap, float2 uvDynamicLightmap, bool applyScaling )
			{
			#ifdef LIGHTMAP_ON
				if (applyScaling)
				{
					uvStaticLightmap = uvStaticLightmap * unity_LightmapST.xy + unity_LightmapST.zw;
					uvDynamicLightmap = uvDynamicLightmap * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}
			#if defined(DYNAMICLIGHTMAP_ON)
				return SampleLightmap(uvStaticLightmap, uvDynamicLightmap, normalWS);
			#else
				return SampleLightmap(uvStaticLightmap, normalWS);
			#endif
			#else
			#if (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
				if (_EnableProbeVolumes)
				{
					float3 bakeDiffuseLighting;
					EvaluateAdaptiveProbeVolume(positionWS, normalWS, GetWorldSpaceNormalizeViewDir(positionWS), positionSS, bakeDiffuseLighting);
					return bakeDiffuseLighting;
				}
				else
				return SampleSH(normalWS);
			#else
				return SampleSH(normalWS);
			#endif
			#endif
			}
			

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_positionWS = TransformObjectToWorld( ( input.positionOS ).xyz );
				float4 ase_shadowCoords = TransformWorldToShadowCoord( ase_positionWS );
				output.ase_texcoord4 = ase_shadowCoords;
				
				float4 ase_positionCS = TransformObjectToHClip( ( input.positionOS ).xyz );
				float4x4 ase_matrixInvP = UNITY_MATRIX_I_P;
				float4 ase_hpositionVS = mul( ase_matrixInvP, ase_positionCS );
				float3 ase_positionRWS = mul( ( float3x3 )UNITY_MATRIX_I_V, ase_hpositionVS.xyz / ase_hpositionVS.w );
				output.ase_texcoord6.xyz = ase_positionRWS;
				
				output.ase_texcoord3.xy = input.ase_texcoord.xy;
				output.ase_texcoord3.zw = input.ase_texcoord1.xy;
				output.ase_texcoord5.xy = input.ase_texcoord2.xy;
				output.ase_color = input.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord5.zw = 0;
				output.ase_texcoord6.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.positionCS = vertexInput.positionCS;
				output.positionWS = vertexInput.positionWS;
				output.normalWS = normalInput.normalWS;
				output.tangentWS = half4( normalInput.tangentWS, ( input.tangentOS.w > 0.0 ? 1.0 : -1.0 ) * GetOddNegativeScale() );;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.ase_texcoord = input.ase_texcoord;
				output.ase_texcoord1 = input.ase_texcoord1;
				output.ase_texcoord2 = input.ase_texcoord2;
				output.ase_color = input.ase_color;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				output.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				output.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				output.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			GBufferFragOutput frag ( PackedVaryings input
								#if defined( ASE_DEPTH_WRITE_ON )
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								, uint ase_vface : SV_IsFrontFace )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				// @diogo: mikktspace compliant
				float renormFactor = 1.0 / max( FLT_MIN, length( input.normalWS ) );

				float3 PositionWS = input.positionWS;
				float3 ViewDirWS = GetWorldSpaceNormalizeViewDir( PositionWS );
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );
				float3 TangentWS = input.tangentWS.xyz * renormFactor;
				float3 BitangentWS = cross( input.normalWS, input.tangentWS.xyz ) * input.tangentWS.w * renormFactor;
				float3 NormalWS = input.normalWS * renormFactor;

				float localStochasticTiling2_g71295 = ( 0.0 );
				TEXTURE2D(tex3077_g71288) = _ParallaxMap;
				float2 UV_Raw_UV2902_g71288 = ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw );
				float2 UVs3077_g71288 = UV_Raw_UV2902_g71288;
				float3 tanToWorld0 = float3( TangentWS.x, BitangentWS.x, NormalWS.x );
				float3 tanToWorld1 = float3( TangentWS.y, BitangentWS.y, NormalWS.y );
				float3 tanToWorld2 = float3( TangentWS.z, BitangentWS.z, NormalWS.z );
				float3 ase_viewVectorTS =  tanToWorld0 * ( _WorldSpaceCameraPos.xyz - PositionWS ).x + tanToWorld1 * ( _WorldSpaceCameraPos.xyz - PositionWS ).y  + tanToWorld2 * ( _WorldSpaceCameraPos.xyz - PositionWS ).z;
				float3 Surface_Data_ViewVector_TS5444_g71288 = ase_viewVectorTS;
				float2 plane3077_g71288 = ( (Surface_Data_ViewVector_TS5444_g71288).xy / (Surface_Data_ViewVector_TS5444_g71288).z );
				int ite3077_g71288 = (int)_ParallaxIterations;
				float refp3077_g71288 = _ParallaxReferencePlane;
				float scale3077_g71288 = ( _ParallaxAmplitude * 0.01 );
				SamplerState customSS3077_g71288 = sampler_ParallaxMap;
				float2 localIterativeParallax3077_g71288 = IterativeParallax3077_g71288( tex3077_g71288 , UVs3077_g71288 , plane3077_g71288 , ite3077_g71288 , refp3077_g71288 , scale3077_g71288 , customSS3077_g71288 );
				float2 lerpResult2855_g71288 = lerp( ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) , localIterativeParallax3077_g71288 , _EnableParallax);
				float2 UV_UV_Final2873_g71288 = lerpResult2855_g71288;
				float2 UV2_g71295 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71295 = _MainTex_TexelSize;
				float4 Offsets2_g71295 = float4( 0,0,0,0 );
				float2 Weights2_g71295 = float2( 0,0 );
				{
				UV2_g71295 = UV2_g71295 * TexelSize2_g71295.zw - 0.5;
				float2 f = frac( UV2_g71295 );
				UV2_g71295 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71295.x - 0.5, UV2_g71295.x + 1.5, UV2_g71295.y - 0.5, UV2_g71295.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71295 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71295.xyxy;
				Weights2_g71295 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71331 = Offsets2_g71295;
				float2 Input_FetchWeights200_g71331 = Weights2_g71295;
				float2 break187_g71331 = Input_FetchWeights200_g71331;
				float4 lerpResult181_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yw ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xw ) , break187_g71331.x);
				float4 lerpResult182_g71331 = lerp( SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).yz ) , SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, (Input_FetchOffsets197_g71331).xz ) , break187_g71331.x);
				float4 lerpResult176_g71331 = lerp( lerpResult181_g71331 , lerpResult182_g71331 , break187_g71331.y);
				float4 Output_Fetch2D_Auto202_g71331 = lerpResult176_g71331;
				float3 temp_output_12_0_g71293 = (Output_Fetch2D_Auto202_g71331).rgb;
				float dotResult28_g71293 = dot( float3( 0.2126729, 0.7151522, 0.072175 ) , temp_output_12_0_g71293 );
				float3 temp_cast_1 = (dotResult28_g71293).xxx;
				float temp_output_21_0_g71293 = ( 1.0 - _Saturation );
				float3 lerpResult31_g71293 = lerp( temp_cast_1 , temp_output_12_0_g71293 , temp_output_21_0_g71293);
				float3 temp_output_48_0_g71288 = ( _BaseColor * lerpResult31_g71293 * _Brightness );
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch7584_g71288 = float4( 0.2209163, 0.2209163, 0.2209163, 0.7790837 );
				#else
				float4 staticSwitch7584_g71288 = float4( 0.04, 0.04, 0.04, 0.96 );
				#endif
				float4 temp_output_2_0_g71327 = staticSwitch7584_g71288;
				float temp_output_7591_6_g71288 = (temp_output_2_0_g71327).w;
				float localStochasticTiling2_g71301 = ( 0.0 );
				float2 UV2_g71301 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71301 = _MainMaskMap_TexelSize;
				float4 Offsets2_g71301 = float4( 0,0,0,0 );
				float2 Weights2_g71301 = float2( 0,0 );
				{
				UV2_g71301 = UV2_g71301 * TexelSize2_g71301.zw - 0.5;
				float2 f = frac( UV2_g71301 );
				UV2_g71301 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71301.x - 0.5, UV2_g71301.x + 1.5, UV2_g71301.y - 0.5, UV2_g71301.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71301 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71301.xyxy;
				Weights2_g71301 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71329 = Offsets2_g71301;
				float2 Input_FetchWeights200_g71329 = Weights2_g71301;
				float2 break187_g71329 = Input_FetchWeights200_g71329;
				float4 lerpResult181_g71329 = lerp( SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).yw ) , SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).xw ) , break187_g71329.x);
				float4 lerpResult182_g71329 = lerp( SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).yz ) , SAMPLE_TEXTURE2D( _MainMaskMap, sampler_MainTex, (Input_FetchOffsets197_g71329).xz ) , break187_g71329.x);
				float4 lerpResult176_g71329 = lerp( lerpResult181_g71329 , lerpResult182_g71329 , break187_g71329.y);
				float4 Output_Fetch2D_Auto202_g71329 = lerpResult176_g71329;
				float4 break74_g71329 = Output_Fetch2D_Auto202_g71329;
				float temp_output_400_0_g71288 = ( _MetallicStrength * break74_g71329.r );
				float4 appendResult7592_g71288 = (float4((temp_output_2_0_g71327).xyz , ( temp_output_7591_6_g71288 - ( temp_output_7591_6_g71288 * temp_output_400_0_g71288 ) )));
				float4 Dieletric7593_g71288 = appendResult7592_g71288;
				float Metallic403_g71288 = temp_output_400_0_g71288;
				float localStochasticTiling2_g71297 = ( 0.0 );
				float2 UV2_g71297 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71297 = _BumpMap_TexelSize;
				float4 Offsets2_g71297 = float4( 0,0,0,0 );
				float2 Weights2_g71297 = float2( 0,0 );
				{
				UV2_g71297 = UV2_g71297 * TexelSize2_g71297.zw - 0.5;
				float2 f = frac( UV2_g71297 );
				UV2_g71297 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71297.x - 0.5, UV2_g71297.x + 1.5, UV2_g71297.y - 0.5, UV2_g71297.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71297 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71297.xyxy;
				Weights2_g71297 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71312 = Offsets2_g71297;
				float2 Input_FetchWeights200_g71312 = Weights2_g71297;
				float2 break187_g71312 = Input_FetchWeights200_g71312;
				float4 lerpResult181_g71312 = lerp( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).yw ) , SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).xw ) , break187_g71312.x);
				float4 lerpResult182_g71312 = lerp( SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).yz ) , SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, (Input_FetchOffsets197_g71312).xz ) , break187_g71312.x);
				float4 lerpResult176_g71312 = lerp( lerpResult181_g71312 , lerpResult182_g71312 , break187_g71312.y);
				float4 Output_Fetch2D_Auto202_g71312 = lerpResult176_g71312;
				float3 unpack12_g71288 = UnpackNormalScale( Output_Fetch2D_Auto202_g71312, _NormalStrength );
				unpack12_g71288.z = lerp( 1, unpack12_g71288.z, saturate(_NormalStrength) );
				float m_switch5216_g71288 = _DoubleSidedNormalMode;
				float3 m_Flip5216_g71288 = float3( -1, -1, -1 );
				float3 m_Mirror5216_g71288 = float3( 1, 1, -1 );
				float3 m_None5216_g71288 = float3( 1, 1, 1 );
				float3 local_NormalModefloat3switch5216_g71288 = _NormalModefloat3switch( m_switch5216_g71288 , m_Flip5216_g71288 , m_Mirror5216_g71288 , m_None5216_g71288 );
				float3 switchResult5218_g71288 = (((ase_vface>0)?(unpack12_g71288):(( unpack12_g71288 * local_NormalModefloat3switch5216_g71288 ))));
				float3 BumpMap_Final4620_g71288 = switchResult5218_g71288;
				float3 tanNormal4619_g71288 = BumpMap_Final4620_g71288;
				float3 worldNormal4619_g71288 = float3( dot( tanToWorld0, tanNormal4619_g71288 ), dot( tanToWorld1, tanNormal4619_g71288 ), dot( tanToWorld2, tanNormal4619_g71288 ) );
				float3 normalizeResult7695_g71288 = normalize( worldNormal4619_g71288 );
				float3 Surface_Data_Normal_WS_BumpNormalized1160_g71288 = normalizeResult7695_g71288;
				float2 appendResult4458_g71288 = (float2(_ClearCoatTilingX , _ClearCoatTilingY));
				float2 temp_output_4491_0_g71288 = ( UV_UV_Final2873_g71288 * appendResult4458_g71288 );
				float2 UV_DDX2874_g71288 = ddx( ( ( input.ase_texcoord3.xy * (_MainTex_ST).xy ) + (_MainTex_ST).zw ) );
				float2 UV_DDY2875_g71288 = ddy( float2( 0,0 ) );
				float3 unpack3123_g71288 = UnpackNormalScale( SAMPLE_TEXTURE2D_GRAD( _ClearCoatNormalMap, sampler_BumpMap, temp_output_4491_0_g71288, UV_DDX2874_g71288, UV_DDY2875_g71288 ), _ClearCoatNormalStrength );
				unpack3123_g71288.z = lerp( 1, unpack3123_g71288.z, saturate(_ClearCoatNormalStrength) );
				float3 tanNormal3126_g71288 = unpack3123_g71288;
				float3 worldNormal3126_g71288 = normalize( float3( dot( tanToWorld0, tanNormal3126_g71288 ), dot( tanToWorld1, tanNormal3126_g71288 ), dot( tanToWorld2, tanNormal3126_g71288 ) ) );
				float2 appendResult3184_g71288 = (float2(ViewDirWS.xy));
				float3 appendResult3192_g71288 = (float3(appendResult3184_g71288 , ( ViewDirWS.z / 1.06 )));
				float3 Surface_Data_Tangent_WS3437_g71288 = TangentWS;
				float3 break3172_g71288 = unpack3123_g71288;
				float3 Surface_Data_Bitangent_WS3438_g71288 = BitangentWS;
				float3 Surface_Data_Normal_WS3209_g71288 = NormalWS;
				float3 normalizeResult3193_g71288 = normalize( ( ( Surface_Data_Tangent_WS3437_g71288 * break3172_g71288.x ) + ( Surface_Data_Bitangent_WS3438_g71288 * break3172_g71288.y ) + ( Surface_Data_Normal_WS3209_g71288 * break3172_g71288.z ) ) );
				float fresnelNdotV3190_g71288 = dot( normalize( normalizeResult3193_g71288 ), appendResult3192_g71288 );
				float fresnelNode3190_g71288 = ( _ClearCoatBias + _ClearCoatStrength * pow( max( 1.0 - fresnelNdotV3190_g71288 , 0.0001 ), _ClearCoatFalloff ) );
				float4 tex2DNode4447_g71288 = SAMPLE_TEXTURE2D_GRAD( _ClearCoatMaskMap, sampler_MainTex, UV_UV_Final2873_g71288, UV_DDX2874_g71288, UV_DDY2875_g71288 );
				float temp_output_3201_0_g71288 = saturate( ( fresnelNode3190_g71288 * _ClearCoat * tex2DNode4447_g71288.r * _EnableClearCoat ) );
				float3 lerpResult3138_g71288 = lerp( Surface_Data_Normal_WS_BumpNormalized1160_g71288 , worldNormal3126_g71288 , temp_output_3201_0_g71288);
				float3 ClearCoat_Normal_WS3139_g71288 = lerpResult3138_g71288;
				float3 Surface_Data_Normal_WS_Final7693_g71288 = ClearCoat_Normal_WS3139_g71288;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) //la
				float4 ase_shadowCoords = input.ase_texcoord4;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS) //la
				float4 ase_shadowCoords = TransformWorldToShadowCoord( PositionWS );
				#else //la
				float4 ase_shadowCoords = 0;
				#endif //la
				Light ase_mainLight = GetMainLight( ase_shadowCoords );
				float3 ase_mainLightDirection = ase_mainLight.direction;
				float3 MainLight_Dir1116_g71288 = ase_mainLightDirection;
				float dotResult5651_g71288 = dot( Surface_Data_Normal_WS_Final7693_g71288 , MainLight_Dir1116_g71288 );
				float3 Surface_Data_World_Position5438_g71288 = PositionWS;
				float3 WorldPosition7831_g71288 = Surface_Data_World_Position5438_g71288;
				float2 Surface_Data_ScreenUV5441_g71288 = (ScreenPosNorm).xy;
				float2 ScreenUV7831_g71288 = Surface_Data_ScreenUV5441_g71288;
				float3 WorldNormal7831_g71288 = Surface_Data_Normal_WS_Final7693_g71288;
				float3 normalizeResult5429_g71288 = normalize( TangentWS );
				float3 Surface_Data_Tangent_WS_Noralized2280_g71288 = normalizeResult5429_g71288;
				float3 WorldTangent7831_g71288 = Surface_Data_Tangent_WS_Noralized2280_g71288;
				float3 normalizeResult5428_g71288 = normalize( BitangentWS );
				float3 Surface_Data_Bitangent_WS_Noralized2279_g71288 = normalizeResult5428_g71288;
				float3 WorldBitangent7831_g71288 = Surface_Data_Bitangent_WS_Noralized2279_g71288;
				float3 Surface_Data_ViewDir_WS_Normalized1115_g71288 = ViewDirWS;
				float3 ViewDirection7831_g71288 = Surface_Data_ViewDir_WS_Normalized1115_g71288;
				half4 localCalculateShadowMask5459_g71288 = CalculateShadowMask5459_g71288();
				float4 ShadowMask2739_g71288 = localCalculateShadowMask5459_g71288;
				float4 ShadowMask7831_g71288 = ShadowMask2739_g71288;
				float Min_Clamp7831_g71288 = -1.0;
				float4x4 localAdditionalLightsData171x7831_g71288 = AdditionalLightsData171x( WorldPosition7831_g71288 , ScreenUV7831_g71288 , WorldNormal7831_g71288 , WorldTangent7831_g71288 , WorldBitangent7831_g71288 , ViewDirection7831_g71288 , ShadowMask7831_g71288 , Min_Clamp7831_g71288 );
				float4 break7813_g71288 = localAdditionalLightsData171x7831_g71288[ 0 ];
				float Additional_Lights_Data_NdotL5766_g71288 = break7813_g71288.x;
				float DotProducts_NdotL_total2267_g71288 = max( max( dotResult5651_g71288, Additional_Lights_Data_NdotL5766_g71288 ), 1E-37 );
				float dotResult5568_g71288 = dot( Surface_Data_Normal_WS_Final7693_g71288 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float DotProducts_NdotV_Zero210_g71288 = max( dotResult5568_g71288, 1E-37 );
				float2 appendResult7181_g71288 = (float2(DotProducts_NdotL_total2267_g71288 , DotProducts_NdotV_Zero210_g71288));
				float2 temp_output_7173_0_g71288 = saturate( ( 1.0 - appendResult7181_g71288 ) );
				float2 temp_output_7174_0_g71288 = ( temp_output_7173_0_g71288 * temp_output_7173_0_g71288 * temp_output_7173_0_g71288 * temp_output_7173_0_g71288 * temp_output_7173_0_g71288 );
				float3 normalizeResult5682_g71288 = normalize( ( Surface_Data_ViewDir_WS_Normalized1115_g71288 + MainLight_Dir1116_g71288 ) );
				float3 Surface_Data_HalfDir7369_g71288 = normalizeResult5682_g71288;
				float dotResult5705_g71288 = dot( MainLight_Dir1116_g71288 , Surface_Data_HalfDir7369_g71288 );
				float Additional_Lights_Data_LdotH5770_g71288 = break7813_g71288.w;
				float DotProducts_LdotH_Total2265_g71288 = max( max( dotResult5705_g71288, Additional_Lights_Data_LdotH5770_g71288 ), 1E-37 );
				float lerpResult750_g71288 = lerp( break74_g71329.g , ( 1.0 - break74_g71329.g ) , _MainMaskType);
				float ClearCoat_Smoothness3145_g71288 = ( tex2DNode4447_g71288.g * _ClearCoatSmoothness );
				float ClearCoat_Fresnel3141_g71288 = temp_output_3201_0_g71288;
				float lerpResult3282_g71288 = lerp( ( lerpResult750_g71288 * _SmoothnessStrength ) , ClearCoat_Smoothness3145_g71288 , ClearCoat_Fresnel3141_g71288);
				float temp_output_53_0_g71288 = ( lerpResult3282_g71288 * lerpResult3282_g71288 );
				float temp_output_47_0_g71288 = ( 1.0 - temp_output_53_0_g71288 );
				float temp_output_1292_0_g71288 = ( temp_output_47_0_g71288 * temp_output_47_0_g71288 );
				float Roughness730_g71288 = temp_output_1292_0_g71288;
				float2 break7191_g71288 = ( ( 1.0 - temp_output_7174_0_g71288 ) + ( temp_output_7174_0_g71288 * ( ( DotProducts_LdotH_Total2265_g71288 * DotProducts_LdotH_Total2265_g71288 * Roughness730_g71288 * 2.0 ) + 0.5 ) ) );
				float2 LightMap_UV_Static5460_g71288 = (input.ase_texcoord3.zw*(unity_LightmapST).xy + (unity_LightmapST).zw);
				float2 LightMap_UV_Dynamic5461_g71288 = (input.ase_texcoord5.xy*(unity_DynamicLightmapST).xy + (unity_DynamicLightmapST).zw);
				float4 Surface_Data_Screen_Position5442_g71288 = ScreenPosNorm;
				float3 bakedGI7040_g71288 = ASEBakedGI( Surface_Data_World_Position5438_g71288, Surface_Data_Normal_WS_Final7693_g71288, ( uint2 )( Surface_Data_Screen_Position5442_g71288.xy * _ScreenSize.xy ), LightMap_UV_Static5460_g71288, LightMap_UV_Dynamic5461_g71288, false);
				float Occlusion435_g71288 = saturate( (min( break74_g71329.b, input.ase_color.a )*_OcclusionStrengthAO + ( 1.0 - _OcclusionStrengthAO )) );
				float3 Indirect_Diffuse644_g71288 = ( bakedGI7040_g71288 * Occlusion435_g71288 * _IndirectDiffuse );
				float Smoothness_417_g71288 = lerpResult3282_g71288;
				half3 reflectVector647_g71288 = reflect( -ViewDirWS, Surface_Data_Normal_WS_Final7693_g71288 );
				float3 indirectSpecular647_g71288 = GlossyEnvironmentReflection( reflectVector647_g71288, PositionWS, 1.0 - (_IndirectSpecularSmoothness*( 1.0 - Smoothness_417_g71288 ) + Smoothness_417_g71288), Occlusion435_g71288, ScreenPosNorm.xy );
				float3 Additional_Lights_Data_Color5767_g71288 = (localAdditionalLightsData171x7831_g71288[ 3 ]).xyz;
				float3 ase_mainLightColorLDR = ase_mainLight.color / ( max( max( ase_mainLight.color.r, ase_mainLight.color.g ), ase_mainLight.color.b ) + 1e-7 );
				float ase_mainLightIntensity = max( max( ase_mainLight.color.r, ase_mainLight.color.g ), ase_mainLight.color.b );
				float ase_mainLightShadowAtten = ase_mainLight.shadowAttenuation;
				float3 temp_output_7980_0_g71288 = ( ase_mainLightColorLDR * ase_mainLightIntensity * ase_mainLightShadowAtten );
				float3 MainLight_Scene_Lighting1527_g71288 = max( Additional_Lights_Data_Color5767_g71288, temp_output_7980_0_g71288 );
				float temp_output_6993_0_g71288 = (_IndirectSpecular*( 1.0 - Metallic403_g71288 ) + Metallic403_g71288);
				float3 temp_output_7000_0_g71288 = (( indirectSpecular647_g71288 * ( _IndirectSpecColor * MainLight_Scene_Lighting1527_g71288 ) )*temp_output_6993_0_g71288 + ( 1.0 - temp_output_6993_0_g71288 ));
				float3 Indirect_Specular600_g71288 = temp_output_7000_0_g71288;
				float localStochasticTiling2_g71299 = ( 0.0 );
				float2 UV2_g71299 = UV_UV_Final2873_g71288;
				float4 TexelSize2_g71299 = _SpecularMap_TexelSize;
				float4 Offsets2_g71299 = float4( 0,0,0,0 );
				float2 Weights2_g71299 = float2( 0,0 );
				{
				UV2_g71299 = UV2_g71299 * TexelSize2_g71299.zw - 0.5;
				float2 f = frac( UV2_g71299 );
				UV2_g71299 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV2_g71299.x - 0.5, UV2_g71299.x + 1.5, UV2_g71299.y - 0.5, UV2_g71299.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets2_g71299 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize2_g71299.xyxy;
				Weights2_g71299 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets197_g71314 = Offsets2_g71299;
				float2 Input_FetchWeights200_g71314 = Weights2_g71299;
				float2 break187_g71314 = Input_FetchWeights200_g71314;
				float4 lerpResult181_g71314 = lerp( SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).yw ) , SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).xw ) , break187_g71314.x);
				float4 lerpResult182_g71314 = lerp( SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).yz ) , SAMPLE_TEXTURE2D( _SpecularMap, sampler_MainTex, (Input_FetchOffsets197_g71314).xz ) , break187_g71314.x);
				float4 lerpResult176_g71314 = lerp( lerpResult181_g71314 , lerpResult182_g71314 , break187_g71314.y);
				float4 Output_Fetch2D_Auto202_g71314 = lerpResult176_g71314;
				float3 Specular_Map64_g71288 = ( (_SpecularColor).rgb * (Output_Fetch2D_Auto202_g71314).rgb );
				float3 lerpResult7213_g71288 = lerp( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) , ( ( 1.0 - (Dieletric7593_g71288).rgb ) * Specular_Map64_g71288 ) , ( Metallic403_g71288 * 0.5 ));
				float3 specColor7214_g71288 = lerpResult7213_g71288;
				float grazingTerm4732_g71288 = saturate( ( temp_output_400_0_g71288 + temp_output_1292_0_g71288 ) );
				float3 temp_cast_7 = (grazingTerm4732_g71288).xxx;
				float temp_output_7196_0_g71288 = saturate( ( 1.0 - DotProducts_NdotV_Zero210_g71288 ) );
				float3 lerpResult7195_g71288 = lerp( specColor7214_g71288 , temp_cast_7 , ( temp_output_7196_0_g71288 * temp_output_7196_0_g71288 * temp_output_7196_0_g71288 * temp_output_7196_0_g71288 * temp_output_7196_0_g71288 ));
				float dotResult5563_g71288 = dot( Surface_Data_Normal_WS_Final7693_g71288 , Surface_Data_HalfDir7369_g71288 );
				float Additional_Lights_Data_NdotH5772_g71288 = break7813_g71288.y;
				float2 appendResult7502_g71288 = (float2(max( dotResult5651_g71288, Additional_Lights_Data_NdotL5766_g71288 ) , max( dotResult5563_g71288, Additional_Lights_Data_NdotH5772_g71288 )));
				float2 DotProducts_GSFdots_totalRaw7498_g71288 = appendResult7502_g71288;
				float temp_output_7509_0_g71288 = ( _LightWrapping * 0.5 );
				float2 break7510_g71288 = max( (DotProducts_GSFdots_totalRaw7498_g71288*( 1.0 - temp_output_7509_0_g71288 ) + temp_output_7509_0_g71288), 1E-37 );
				float Shadow_65_g71288 = pow( saturate( ( ( ( DotProducts_NdotV_Zero210_g71288 * break7510_g71288.x ) * ( 1.0 - _ShadowStrength ) ) - _ShadowOffset ) ) , _ShadowFalloff );
				#if ( SHADER_TARGET >= 50 )
				float recip6507_g71288 = rcp( PI );
				#else
				float recip6507_g71288 = 1.0 / PI;
				#endif
				float DotProducts_NdotH_Total2269_g71288 = max( max( dotResult5563_g71288, Additional_Lights_Data_NdotH5772_g71288 ), 1E-37 );
				float temp_output_6508_0_g71288 = ( DotProducts_NdotH_Total2269_g71288 * DotProducts_NdotH_Total2269_g71288 );
				float temp_output_6510_0_g71288 = max( temp_output_6508_0_g71288, 0.0001 );
				float temp_output_6513_0_g71288 = ( max( Roughness730_g71288, 0.0001 ) / ( temp_output_6510_0_g71288 * ( ( ( 1.0 - temp_output_6508_0_g71288 ) / temp_output_6510_0_g71288 ) + ( Roughness730_g71288 * Roughness730_g71288 ) ) ) );
				float Specular200_g71288 = ( recip6507_g71288 * ( temp_output_6513_0_g71288 * temp_output_6513_0_g71288 ) );
				float temp_output_7108_0_g71288 = saturate( ( 1.0 - DotProducts_LdotH_Total2265_g71288 ) );
				float3 temp_output_7080_0_g71288 = ( specColor7214_g71288 + ( ( 1.0 - specColor7214_g71288 ) * ( temp_output_7108_0_g71288 * temp_output_7108_0_g71288 * temp_output_7108_0_g71288 * temp_output_7108_0_g71288 * temp_output_7108_0_g71288 ) ) );
				float3 Fresnel_Term201_g71288 = temp_output_7080_0_g71288;
				float DotProducts_NdotL_LWrap7545_g71288 = break7510_g71288.x;
				float Additional_Lights_Data_Atten7911_g71288 = (localAdditionalLightsData171x7831_g71288[ 3 ]).w;
				float MainLight_Atten5446_g71288 = ase_mainLightShadowAtten;
				float MainLight_FinalAtten7914_g71288 = max( Additional_Lights_Data_Atten7911_g71288, MainLight_Atten5446_g71288 );
				float temp_output_7917_0_g71288 = ( 1.0 - ( DotProducts_NdotL_LWrap7545_g71288 * MainLight_FinalAtten7914_g71288 ) );
				float3 lerpResult4741_g71288 = lerp( ( temp_output_48_0_g71288 * _ShadowColor.rgb ) , _ShadowColor.rgb , _ShadowColor.a);
				float3 Shadow_Color4747_g71288 = ( lerpResult4741_g71288 * Occlusion435_g71288 * _ShadowColorEnable );
				float dotResult1674_g71288 = dot( -( MainLight_Dir1116_g71288 + ( Surface_Data_Normal_WS_BumpNormalized1160_g71288 * _TranslucencyNormalDistortion ) ) , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float3 BaseColor_Map63_g71288 = temp_output_48_0_g71288;
				float3 Translucency1428_g71288 = ( ( ( ( pow( saturate( dotResult1674_g71288 ) , _TranslucencyScattering ) * _TranslucencyDirect ) + ( Indirect_Diffuse644_g71288 * _TranslucencyAmbient ) ) * MainLight_Scene_Lighting1527_g71288 * BaseColor_Map63_g71288 * ( (SAMPLE_TEXTURE2D( _TranslucencyMap, sampler_MainTex, UV_Raw_UV2902_g71288 )).rgb / _TranslucencyFeather ) * (_TranslucencyColor).rgb * _TranslucencyStrength ) * _TranslucencyMapEnable );
				float DotProducts_NdotL_Inv1390_g71288 = max( -dotResult5651_g71288, dotResult5651_g71288 );
				float3 temp_output_1713_0_g71288 = (_TransmissionColor).rgb;
				float3 Transmission1400_g71288 = ( ( DotProducts_NdotL_Inv1390_g71288 * MainLight_Scene_Lighting1527_g71288 * BaseColor_Map63_g71288 * ( ( (SAMPLE_TEXTURE2D( _TransmissionMap, sampler_MainTex, UV_Raw_UV2902_g71288 )).rgb / _TransmissionFeather ) * temp_output_1713_0_g71288 ) * _TransmissionStrength ) * _TransmissionMapEnable );
				float3 BaseColor5340_g71288 = _BaseColor;
				float3 ClearCoat_Color3149_g71288 = saturate( ( (MainLight_Scene_Lighting1527_g71288*_MainLightAffectClearCoat + ( 1.0 - _MainLightAffectClearCoat )) * (BaseColor5340_g71288*_BaseColorAffectClearCoat + ( 1.0 - _BaseColorAffectClearCoat )) * _ClearCoatColor * temp_output_3201_0_g71288 ) );
				float3 break5386_g71288 = ( ( max( ( ( ( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) * ( 1.0 - Metallic403_g71288 ) * ( break7191_g71288.x * break7191_g71288.y ) ) + Indirect_Diffuse644_g71288 + ( Indirect_Specular600_g71288 * lerpResult7195_g71288 * max( Metallic403_g71288, 0.15 ) * ( 1.0 - ( Roughness730_g71288 * Roughness730_g71288 * Roughness730_g71288 ) ) ) + ( ( Shadow_65_g71288 * ( Specular200_g71288 * lerpResult7213_g71288 ) * ( Fresnel_Term201_g71288 * lerpResult7213_g71288 ) ) / ( max( DotProducts_NdotL_LWrap7545_g71288, 0.1 ) * max( 0.1, DotProducts_NdotV_Zero210_g71288 ) * 4.0 ) ) ) * MainLight_Scene_Lighting1527_g71288 * DotProducts_NdotL_LWrap7545_g71288 ), ( temp_output_7917_0_g71288 * temp_output_7917_0_g71288 * Shadow_Color4747_g71288 ) ) + Translucency1428_g71288 ) + Transmission1400_g71288 );
				float3 break5392_g71288 = ( ( ( max( ( ( ( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) * ( 1.0 - Metallic403_g71288 ) * ( break7191_g71288.x * break7191_g71288.y ) ) + Indirect_Diffuse644_g71288 + ( Indirect_Specular600_g71288 * lerpResult7195_g71288 * max( Metallic403_g71288, 0.15 ) * ( 1.0 - ( Roughness730_g71288 * Roughness730_g71288 * Roughness730_g71288 ) ) ) + ( ( Shadow_65_g71288 * ( Specular200_g71288 * lerpResult7213_g71288 ) * ( Fresnel_Term201_g71288 * lerpResult7213_g71288 ) ) / ( max( DotProducts_NdotL_LWrap7545_g71288, 0.1 ) * max( 0.1, DotProducts_NdotV_Zero210_g71288 ) * 4.0 ) ) ) * MainLight_Scene_Lighting1527_g71288 * DotProducts_NdotL_LWrap7545_g71288 ), ( temp_output_7917_0_g71288 * temp_output_7917_0_g71288 * Shadow_Color4747_g71288 ) ) + Translucency1428_g71288 ) + Transmission1400_g71288 ) + ClearCoat_Color3149_g71288 );
				
				float4 break74_g71331 = Output_Fetch2D_Auto202_g71331;
				float3 ase_positionRWS = input.ase_texcoord6.xyz;
				float3 temp_output_102_0_g71324 = ( cross( ddx( ase_positionRWS ) , ddy( ase_positionRWS ) ) * _ProjectionParams.x );
				float3 normalizeResult79_g71324 = normalize( temp_output_102_0_g71324 );
				float dotResult3700_g71288 = dot( normalizeResult79_g71324 , Surface_Data_ViewDir_WS_Normalized1115_g71288 );
				float temp_output_3702_0_g71288 = ( 1.0 - abs( dotResult3700_g71288 ) );
				float temp_output_3704_0_g71288 = ( 1.0 - ( temp_output_3702_0_g71288 * temp_output_3702_0_g71288 ) );
				#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch3706_g71288 = 1.0;
				#else
				float staticSwitch3706_g71288 = temp_output_3704_0_g71288;
				#endif
				float lerpResult3708_g71288 = lerp( 1.0 , staticSwitch3706_g71288 , _EnableClipGlancingAngle);
				float temp_output_5306_0_g71288 = ( (  (0.0 + ( ( 1.0 - break74_g71331.a ) - 0.0 ) * ( _AlphaRemapMin - 0.0 ) / ( 1.0 - 0.0 ) ) +  (0.0 + ( break74_g71331.a - 0.0 ) * ( _AlphaRemapMax - 0.0 ) / ( 1.0 - 0.0 ) ) ) * lerpResult3708_g71288 );
				float lerpResult5304_g71288 = lerp( 1.0 , temp_output_5306_0_g71288 , _AlphaClip);
				
				float lerpResult5320_g71288 = lerp( 0.01 , _AlphaCutoffShadow , _UseShadowThreshold);
				

				float3 Color = ( ( ( ( max( ( ( ( ( temp_output_48_0_g71288 * (Dieletric7593_g71288).a ) * ( 1.0 - Metallic403_g71288 ) * ( break7191_g71288.x * break7191_g71288.y ) ) + Indirect_Diffuse644_g71288 + ( Indirect_Specular600_g71288 * lerpResult7195_g71288 * max( Metallic403_g71288, 0.15 ) * ( 1.0 - ( Roughness730_g71288 * Roughness730_g71288 * Roughness730_g71288 ) ) ) + ( ( Shadow_65_g71288 * ( Specular200_g71288 * lerpResult7213_g71288 ) * ( Fresnel_Term201_g71288 * lerpResult7213_g71288 ) ) / ( max( DotProducts_NdotL_LWrap7545_g71288, 0.1 ) * max( 0.1, DotProducts_NdotV_Zero210_g71288 ) * 4.0 ) ) ) * MainLight_Scene_Lighting1527_g71288 * DotProducts_NdotL_LWrap7545_g71288 ), ( temp_output_7917_0_g71288 * temp_output_7917_0_g71288 * Shadow_Color4747_g71288 ) ) + Translucency1428_g71288 ) + Transmission1400_g71288 ) + ClearCoat_Color3149_g71288 ) * ( ( ( max( max( break5386_g71288.x, break5386_g71288.y ), break5386_g71288.z ) / max( max( break5392_g71288.x, break5392_g71288.y ), break5392_g71288.z ) ) * 0.5 ) + 0.5 ) );
				float Alpha = lerpResult5304_g71288;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
					float AlphaClipThresholdShadow = lerpResult5320_g71288;
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = PositionWS;
				inputData.positionCS = input.positionCS;
				inputData.normalizedScreenSpaceUV = ScreenPosNorm.xy;
				inputData.normalWS = NormalWS;
				inputData.viewDirectionWS = ViewDirWS;

				#if defined(_DBUFFER) && defined(UNLIT_DEFAULT_DECAL_BLENDING)
					ApplyDecalToBaseColor(input.positionCS, Color);
				#endif

				#if defined( ASE_DEPTH_WRITE_ON )
					outputDepth = input.positionCS.z;
				#endif

				SurfaceData surfaceData = (SurfaceData)0;
				surfaceData.albedo = Color;
				surfaceData.alpha = Alpha;

			#if defined( _SCREEN_SPACE_OCCLUSION ) // GBuffer never has transparents
				float2 normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV( input.positionCS );
				AmbientOcclusionFactor aoFactor = GetScreenSpaceAmbientOcclusion( normalizedScreenSpaceUV );
				surfaceData.occlusion = aoFactor.directAmbientOcclusion;
			#else
				surfaceData.occlusion = 1;
			#endif

				return PackGBuffersSurfaceData( surfaceData, inputData, float3( 0, 0, 0 ) );
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphUnlitGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback Off
}
/*ASEBEGIN
Version=19907
Node;AmplifyShaderEditor.IntNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;461;1280,-848;Inherit;False;Property;_Cull;Render Face;0;1;[Enum];Create;False;0;0;1;Front,2,Back,1,Both,0;True;0;False;2;2;False;0;0;0;1;INT;0
Node;AmplifyShaderEditor.StickyNoteNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;794;896,-928;Inherit;False;261.3333;130.6666;Physical Based Rendering Eye;;0,0,0,1;Physical Based Rendering Eye$-- GSF Implicit$-- NDF GGX$-- Schlick Approx Fresnel;0;0
Node;AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;826;896,-768;Inherit;False;PBR Core;1;;71288;d226ce46eb9ddb04ba9f0a949b5fddfe;112,7304,5,213,5,7367,1,7550,1,7548,1,7501,1,6310,1,240,4,7285,4,6530,0,6571,0,215,3,4772,3,7120,1,7607,1,7616,1,7596,1,4240,1,4237,1,4230,1,4236,1,4233,1,4109,1,4196,1,4195,1,4154,1,4153,1,4108,1,4106,1,4107,1,4229,1,4423,0,4272,0,4271,0,4421,0,4032,0,4095,0,4094,0,4031,0,4504,0,4503,0,4499,0,4500,0,4501,0,4502,0,3744,1,3830,1,545,1,7651,1,7652,1,3918,0,2970,0,2985,0,2944,0,3369,0,3324,0,536,0,2971,0,4159,1,4111,1,4114,1,4496,1,3560,1,3022,1,4193,1,3561,1,4494,1,4235,1,4239,1,4232,1,4505,1,3086,1,4110,1,3400,1,4234,1,4238,1,4231,1,4152,1,4194,1,3398,0,3399,0,4497,1,4495,1,4514,1,1588,0,5157,0,5140,0,5158,0,5143,0,5141,0,5089,0,5139,0,5034,0,4956,0,4926,0,3650,1,3273,1,3281,1,7694,1,3853,0,1886,1,1463,0,1887,1,7839,1,5744,1,5632,1,5638,1,5667,1,5737,1,7913,1,5643,1,5802,1;0;4;FLOAT3;0;FLOAT;156;FLOAT;159;FLOAT;158
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;768;1280,-768;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;ExtraPrePass;0;0;ExtraPrePass;6;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;False;True;0;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;770;1280,-768;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;771;1280,-768;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;False;True;1;LightMode=DepthOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;772;1280,-768;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;769;1280,-768;Float;False;True;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;9;AmplifyShaderPack/Community/Physical Based Rendering Eye;2992e84f91cbeb14eab234972e07ea9d;True;Forward;0;1;Forward;10;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;False;True;1;LightMode=UniversalForwardOnly;False;False;0;;0;0;Standard;30;Surface;0;0;  Keep Alpha;0;0;  Blend;0;0;Two Sided;1;0;Alpha Clipping;1;0;  Use Shadow Threshold;1;638531561065389605;Forward Only;0;0;Cast Shadows;1;0;Receive Shadows;2;638990091985513662;Receive SSAO;1;0;Motion Vectors;1;0;  Add Precomputed Velocity;0;0;  XR Motion Vectors;0;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;Meta Pass;0;638814971607934855;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position;1;0;0;13;False;True;True;True;False;False;True;True;True;False;True;False;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;789;1280,-718;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;False;True;1;LightMode=Universal2D;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;790;1280,-718;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;SceneSelectionPass;0;6;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;791;1280,-718;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;ScenePickingPass;0;7;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;792;1280,-718;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;DepthNormals;0;8;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;False;True;1;LightMode=DepthNormalsOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;793;1280,-718;Float;False;False;-1;2;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;DepthNormalsOnly;0;9;DepthNormalsOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;False;True;1;LightMode=DepthNormalsOnly;False;True;9;d3d11;metal;vulkan;xboxone;xboxseries;playstation;ps4;ps5;switch;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;804;1280,-668;Float;False;False;-1;3;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;MotionVectors;0;10;MotionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;False;False;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=MotionVectors;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;805;1280,-668;Float;False;False;-1;3;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;XRMotionVectors;0;11;XRMotionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;True;1;False;;255;False;;1;False;;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;1;LightMode=XRMotionVectors;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;806;1280,-668;Float;False;False;-1;3;UnityEditor.ShaderGraphUnlitGUI;0;1;New Amplify Shader;2992e84f91cbeb14eab234972e07ea9d;True;GBuffer;0;12;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;False;False;False;False;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Unlit;True;5;True;14;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;False;True;1;LightMode=UniversalGBuffer;False;True;10;d3d11;gles;metal;vulkan;xboxone;xboxseries;playstation;ps4;ps5;switch;0;;0;0;Standard;0;False;0
WireConnection;769;2;826;0
WireConnection;769;3;826;156
WireConnection;769;4;826;159
WireConnection;769;7;826;158
ASEEND*/
//CHKSM=D9F1384CB9757ED99CB0BBB43A84C200DC9CECE5