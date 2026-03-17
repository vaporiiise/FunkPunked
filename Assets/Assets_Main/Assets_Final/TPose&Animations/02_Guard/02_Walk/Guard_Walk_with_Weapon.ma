//Maya ASCII 2024 scene
//Name: Guard_Walk_with_Weapon_V08_Polish.ma
//Last modified: Tue, Mar 03, 2026 11:25:29 AM
//Codeset: 1252
file -rdi 1 -ns "model" -rfn "modelRN" -op "VERS|2024|UVER|undef|MADE|undef|CHNG|Tue, Feb 03, 2026 03:58:06 PM|ICON|undef|INFO|undef|OBJN|12450|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaAscii" "P:/Funked Punk/01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig.ma";
file -rdi 1 -ns "GuardBat_Rig" -rfn "GuardBat_RigRN" -op "v=0;" -typ "mayaAscii"
		 "P:/Funked Punk/01_Assets/02_CharaProps/02_pGuardBat/02_Rig/GuardBat_Rig.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "VERS|2024|UVER|undef|MADE|undef|CHNG|Tue, Feb 03, 2026 03:58:06 PM|ICON|undef|INFO|undef|OBJN|12450|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaAscii" "P:/Funked Punk/01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig.ma";
file -r -ns "GuardBat_Rig" -dr 1 -rfn "GuardBat_RigRN" -op "v=0;" -typ "mayaAscii"
		 "P:/Funked Punk/01_Assets/02_CharaProps/02_pGuardBat/02_Rig/GuardBat_Rig.ma";
requires maya "2024";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.5.4.1";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.24";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "2F7729AD-4E88-E8B1-1D0B-EDA8A7CFEFC2";
createNode transform -s -n "persp";
	rename -uid "F18D75E5-4842-F460-DF40-15A9A590BD01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.913061148340697 257.17807652179221 621.78535547317131 ;
	setAttr ".r" -type "double3" -14.138352923977333 -13319.799999991925 -5.590852837401569e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5DC5E44C-4D02-0F52-9EE2-F397C6C6EAE0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 623.74576517209266;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -32.418523993529902 131.31284838547936 35.281218121527473 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "480DC7D4-43CB-25A6-6053-B6A15A376B8A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.662287790484489 1000.1 -7.4459222046939413 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A4323D45-44EA-9700-F30D-8EA13677EF71";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 118.32736612037728;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "5422E3B6-4844-A68D-57F3-D6AEE3D9F7F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.8592621561189944 100.07000372908283 1000.1 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DA41A7B9-4475-59EE-72D4-6D9D8C9933C9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr -l on ".coi" 1000.1;
	setAttr -l on ".ow" 366.73527336731883;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "88FF6685-425C-A959-46AD-669724551CBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 90.020083944758937 -15.494103797877685 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F47196D8-4FE9-25AA-7C1F-20887CD08EB6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 495.79318714884687;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "78B3C285-4B84-591F-5D2B-A2909B48BED8";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 902.29941748705414 614.59144714582351 1215.8019635355845 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "1118C127-4B20-C0D4-D7C0-3F869B1B10DD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "left";
	rename -uid "A0AF3BEE-46A8-282C-4EC6-79B9E7A66B8E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 96.638807668316772 9.1955375802681729 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "leftShape" -p "left";
	rename -uid "4DE832D9-4EDA-7C0C-FE4A-E2A0F37FF7BE";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr -l on ".coi" 1000.1;
	setAttr -l on ".ow" 374.18568713598376;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "back";
	rename -uid "4A716FE4-4D28-6D64-79DF-5A8EBE491F1E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.4885256173083974 93.164955349202188 -1000.1721738241199 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "BEFA1895-40FC-3541-309E-A3AA71EA6B59";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1002.8171078428695;
	setAttr ".ow" 422.57152212761093;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".tp" -type "double3" -4.21480380329597 145.5118721154837 2.6449340187496322 ;
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "front1";
	rename -uid "6B361ED1-4290-9E68-BCEE-60B4245D6483";
	setAttr ".t" -type "double3" 26.538367479304824 125.75678221397276 462.17414480690837 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -2.1383527296024991 2.2000000000000015 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "frontShape1" -p "front1";
	rename -uid "96F659F0-4B7E-6EAD-5F12-EC89578C85CC";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 474.97984734661605;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "side1";
	rename -uid "9ECBA94F-4A26-2680-ED4A-46A46157CC32";
	setAttr ".t" -type "double3" -440.64856938995081 151.55130010428408 28.759522898968608 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -5.738352729602366 -89.400000000000077 7.5931537695892832e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "sideShape1" -p "side1";
	rename -uid "C0301D30-4DE3-3FFB-32DA-CCBED7A00462";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 458.0054900427495;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "quarter";
	rename -uid "EC5E2EA4-4F70-831D-F439-29915F326965";
	setAttr ".t" -type "double3" -276.5490735439173 154.25543710950114 256.8410403333429 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -8.7383527296028944 -49.400000000000588 6.1091746512835688e-16 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "quarterShape" -p "quarter";
	rename -uid "172BBC95-403D-3234-A03C-CC98995F8B00";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 419.57362534538015;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode fosterParent -n "modelRN1fosterParent1";
	rename -uid "F0C8C6C4-40D4-4E51-997A-F4AF1E4F47B4";
createNode parentConstraint -n "Handle_ctr_parentConstraint1" -p "modelRN1fosterParent1";
	rename -uid "2DDB3004-465D-1502-D712-72B0F49187BD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKWrist_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.0884197344905582 0.30460330341654185 -4.0750969976688722 ;
	setAttr ".tg[0].tor" -type "double3" -4.0742506610015932 84.931060552236204 -3.1590870103898205 ;
	setAttr ".cpim" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 79.714200192345743 0 0 1;
	setAttr ".lr" -type "double3" 1.3575875488505154 86.87650636892154 0.08716288130071273 ;
	setAttr ".rst" -type "double3" 82.964964165729796 136.40020352408465 42.198524309943387 ;
	setAttr ".cro" 3;
	setAttr ".rsrr" -type "double3" -0.721199884832325 82.823016000736018 -0.064963210444259151 ;
	setAttr -k on ".w0";
createNode transform -n "persp1";
	rename -uid "D0901F35-4F91-8855-F910-A480A94262BC";
	setAttr ".t" -type "double3" -112.40082761525076 182.3615732080938 386.2363224010403 ;
	setAttr ".r" -type "double3" -8.7383527295874792 -15.800000000000017 2.0659005436216657e-16 ;
createNode camera -n "perspShape1" -p "persp1";
	rename -uid "574DCE23-4107-29C7-000B-2D813FEDFC01";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 397.88718483991477;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "439215DE-439C-2B49-7003-F280AA44ABE2";
createNode parentConstraint -n "IKArm_L_parentConstraint1" -p "modelRNfosterParent1";
	rename -uid "D85D084B-4724-1D74-25B7-ADAAD47B3620";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Handle_ctrW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2790204149643358 53.646842642528831 1.0502448153239783 ;
	setAttr ".tg[0].tor" -type "double3" 80.029178633916615 75.376500395986724 173.89905975386446 ;
	setAttr ".lr" -type "double3" 85.368841090898584 -35.115103991466881 94.937987335060612 ;
	setAttr ".rst" -type "double3" -62.547863794543844 -23.762677302396924 28.114413010470098 ;
	setAttr ".rsrr" -type "double3" 101.05992616937613 -50.346832232714661 96.188169287716292 ;
	setAttr -k on ".w0";
createNode fosterParent -n "GuardBat_RigRNfosterParent1";
	rename -uid "119B9E8D-4506-EDCF-D344-F78EA8A80F8E";
createNode parentConstraint -n "Handle_ctr_parentConstraint2" -p "GuardBat_RigRNfosterParent1";
	rename -uid "8463F63B-4B17-3431-83F1-C1A5D0943842";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Fingers_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5622860237375846 -1.68793264426062 -2.9914400502671441 ;
	setAttr ".tg[0].tor" -type "double3" -5.6655744830056953 -140.62567076770549 9.1055092892289959 ;
	setAttr ".lr" -type "double3" 83.729139930071483 90.858183076025568 20.577406168664542 ;
	setAttr ".rst" -type "double3" -13.12500099818989 125.25032067704933 31.372470517622912 ;
	setAttr ".rsrr" -type "double3" 62.907937254835588 118.47339304754277 35.561280222998803 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "00083057-4AD8-34C9-655C-F7BA3913AF0B";
	setAttr -s 46 ".lnk";
	setAttr -s 46 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "68966BE3-4088-C9B3-82A8-AC9CBBC4A591";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BA513D6E-4DE7-D1B2-FDFE-7580F1217189";
createNode displayLayerManager -n "layerManager";
	rename -uid "21C8ED93-494A-4DC6-93B1-48BC1B25DE42";
createNode displayLayer -n "defaultLayer";
	rename -uid "DA75BD26-4EFB-C08B-28C9-E9ACFA16CC08";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "77770CB7-4793-5CC3-20B0-BE8DFA130B40";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4A539461-404E-386D-7E48-5FBD9B9AB07F";
	setAttr ".g" yes;
createNode polyPlane -n "polyPlane1";
	rename -uid "2FB04BE3-4DCC-1E42-9F4F-82904D074953";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode reference -n "modelRN";
	rename -uid "8797EB7D-476B-A605-32CA-67AEB8936A35";
	setAttr -s 2 ".fn";
	setAttr ".fn[0]" -type "string" "P:/Funked Punk/01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig_updating_wip.mb";
	setAttr ".fn[1]" -type "string" "P:/Funked Punk/01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig.ma";
	setAttr -s 841 ".phl";
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".phl[814]" 0;
	setAttr ".phl[815]" 0;
	setAttr ".phl[816]" 0;
	setAttr ".phl[817]" 0;
	setAttr ".phl[818]" 0;
	setAttr ".phl[819]" 0;
	setAttr ".phl[820]" 0;
	setAttr ".phl[821]" 0;
	setAttr ".phl[822]" 0;
	setAttr ".phl[823]" 0;
	setAttr ".phl[824]" 0;
	setAttr ".phl[825]" 0;
	setAttr ".phl[826]" 0;
	setAttr ".phl[827]" 0;
	setAttr ".phl[828]" 0;
	setAttr ".phl[829]" 0;
	setAttr ".phl[830]" 0;
	setAttr ".phl[831]" 0;
	setAttr ".phl[832]" 0;
	setAttr ".phl[833]" 0;
	setAttr ".phl[834]" 0;
	setAttr ".phl[835]" 0;
	setAttr ".phl[836]" 0;
	setAttr ".phl[837]" 0;
	setAttr ".phl[838]" 0;
	setAttr ".phl[839]" 0;
	setAttr ".phl[840]" 0;
	setAttr ".phl[841]" 0;
	setAttr ".phl[842]" 0;
	setAttr ".phl[843]" 0;
	setAttr ".phl[844]" 0;
	setAttr ".phl[845]" 0;
	setAttr ".phl[846]" 0;
	setAttr ".phl[847]" 0;
	setAttr ".phl[848]" 0;
	setAttr ".phl[849]" 0;
	setAttr ".phl[850]" 0;
	setAttr ".phl[851]" 0;
	setAttr ".phl[852]" 0;
	setAttr ".phl[853]" 0;
	setAttr ".phl[854]" 0;
	setAttr ".phl[855]" 0;
	setAttr ".phl[856]" 0;
	setAttr ".phl[857]" 0;
	setAttr ".phl[858]" 0;
	setAttr ".phl[859]" 0;
	setAttr ".phl[860]" 0;
	setAttr ".phl[861]" 0;
	setAttr ".phl[862]" 0;
	setAttr ".phl[863]" 0;
	setAttr ".phl[864]" 0;
	setAttr ".phl[865]" 0;
	setAttr ".phl[866]" 0;
	setAttr ".phl[867]" 0;
	setAttr ".phl[868]" 0;
	setAttr ".phl[869]" 0;
	setAttr ".phl[870]" 0;
	setAttr ".phl[871]" 0;
	setAttr ".phl[872]" 0;
	setAttr ".phl[873]" 0;
	setAttr ".phl[874]" 0;
	setAttr ".phl[875]" 0;
	setAttr ".phl[876]" 0;
	setAttr ".phl[877]" 0;
	setAttr ".phl[878]" 0;
	setAttr ".phl[879]" 0;
	setAttr ".phl[880]" 0;
	setAttr ".phl[881]" 0;
	setAttr ".phl[882]" 0;
	setAttr ".phl[883]" 0;
	setAttr ".phl[884]" 0;
	setAttr ".phl[885]" 0;
	setAttr ".phl[886]" 0;
	setAttr ".phl[887]" 0;
	setAttr ".phl[888]" 0;
	setAttr ".phl[889]" 0;
	setAttr ".phl[890]" 0;
	setAttr ".phl[891]" 0;
	setAttr ".phl[892]" 0;
	setAttr ".phl[893]" 0;
	setAttr ".phl[894]" 0;
	setAttr ".phl[895]" 0;
	setAttr ".phl[896]" 0;
	setAttr ".phl[897]" 0;
	setAttr ".phl[898]" 0;
	setAttr ".phl[899]" 0;
	setAttr ".phl[900]" 0;
	setAttr ".phl[901]" 0;
	setAttr ".phl[902]" 0;
	setAttr ".phl[903]" 0;
	setAttr ".phl[904]" 0;
	setAttr ".phl[905]" 0;
	setAttr ".phl[906]" 0;
	setAttr ".phl[907]" 0;
	setAttr ".phl[908]" 0;
	setAttr ".phl[909]" 0;
	setAttr ".phl[910]" 0;
	setAttr ".phl[911]" 0;
	setAttr ".phl[912]" 0;
	setAttr ".phl[913]" 0;
	setAttr ".phl[914]" 0;
	setAttr ".phl[915]" 0;
	setAttr ".phl[916]" 0;
	setAttr ".phl[917]" 0;
	setAttr ".phl[918]" 0;
	setAttr ".phl[919]" 0;
	setAttr ".phl[920]" 0;
	setAttr ".phl[921]" 0;
	setAttr ".phl[922]" 0;
	setAttr ".phl[923]" 0;
	setAttr ".phl[924]" 0;
	setAttr ".phl[925]" 0;
	setAttr ".phl[926]" 0;
	setAttr ".phl[927]" 0;
	setAttr ".phl[928]" 0;
	setAttr ".phl[929]" 0;
	setAttr ".phl[930]" 0;
	setAttr ".phl[931]" 0;
	setAttr ".phl[932]" 0;
	setAttr ".phl[933]" 0;
	setAttr ".phl[934]" 0;
	setAttr ".phl[935]" 0;
	setAttr ".phl[936]" 0;
	setAttr ".phl[937]" 0;
	setAttr ".phl[938]" 0;
	setAttr ".phl[939]" 0;
	setAttr ".phl[940]" 0;
	setAttr ".phl[941]" 0;
	setAttr ".phl[942]" 0;
	setAttr ".phl[943]" 0;
	setAttr ".phl[944]" 0;
	setAttr ".phl[945]" 0;
	setAttr ".phl[946]" 0;
	setAttr ".phl[947]" 0;
	setAttr ".phl[948]" 0;
	setAttr ".phl[949]" 0;
	setAttr ".phl[950]" 0;
	setAttr ".phl[951]" 0;
	setAttr ".phl[952]" 0;
	setAttr ".phl[953]" 0;
	setAttr ".phl[954]" 0;
	setAttr ".phl[955]" 0;
	setAttr ".phl[956]" 0;
	setAttr ".phl[957]" 0;
	setAttr ".phl[958]" 0;
	setAttr ".phl[959]" 0;
	setAttr ".phl[960]" 0;
	setAttr ".phl[961]" 0;
	setAttr ".phl[962]" 0;
	setAttr ".phl[963]" 0;
	setAttr ".phl[964]" 0;
	setAttr ".phl[965]" 0;
	setAttr ".phl[966]" 0;
	setAttr ".phl[967]" 0;
	setAttr ".phl[968]" 0;
	setAttr ".phl[969]" 0;
	setAttr ".phl[970]" 0;
	setAttr ".phl[971]" 0;
	setAttr ".phl[972]" 0;
	setAttr ".phl[973]" 0;
	setAttr ".phl[974]" 0;
	setAttr ".phl[975]" 0;
	setAttr ".phl[976]" 0;
	setAttr ".phl[977]" 0;
	setAttr ".phl[978]" 0;
	setAttr ".phl[979]" 0;
	setAttr ".phl[980]" 0;
	setAttr ".phl[981]" 0;
	setAttr ".phl[982]" 0;
	setAttr ".phl[983]" 0;
	setAttr ".phl[984]" 0;
	setAttr ".phl[985]" 0;
	setAttr ".phl[986]" 0;
	setAttr ".phl[987]" 0;
	setAttr ".phl[988]" 0;
	setAttr ".phl[989]" 0;
	setAttr ".phl[990]" 0;
	setAttr ".phl[991]" 0;
	setAttr ".phl[992]" 0;
	setAttr ".phl[993]" 0;
	setAttr ".phl[994]" 0;
	setAttr ".phl[995]" 0;
	setAttr ".phl[996]" 0;
	setAttr ".phl[997]" 0;
	setAttr ".phl[998]" 0;
	setAttr ".phl[999]" 0;
	setAttr ".phl[1000]" 0;
	setAttr ".phl[1001]" 0;
	setAttr ".phl[1002]" 0;
	setAttr ".phl[1003]" 0;
	setAttr ".phl[1004]" 0;
	setAttr ".phl[1005]" 0;
	setAttr ".phl[1006]" 0;
	setAttr ".phl[1007]" 0;
	setAttr ".phl[1008]" 0;
	setAttr ".phl[1009]" 0;
	setAttr ".phl[1010]" 0;
	setAttr ".phl[1011]" 0;
	setAttr ".phl[1012]" 0;
	setAttr ".phl[1013]" 0;
	setAttr ".phl[1014]" 0;
	setAttr ".phl[1015]" 0;
	setAttr ".phl[1016]" 0;
	setAttr ".phl[1017]" 0;
	setAttr ".phl[1018]" 0;
	setAttr ".phl[1019]" 0;
	setAttr ".phl[1020]" 0;
	setAttr ".phl[1021]" 0;
	setAttr ".phl[1022]" 0;
	setAttr ".phl[1023]" 0;
	setAttr ".phl[1024]" 0;
	setAttr ".phl[1025]" 0;
	setAttr ".phl[1026]" 0;
	setAttr ".phl[1027]" 0;
	setAttr ".phl[1028]" 0;
	setAttr ".phl[1029]" 0;
	setAttr ".phl[1030]" 0;
	setAttr ".phl[1031]" 0;
	setAttr ".phl[1032]" 0;
	setAttr ".phl[1033]" 0;
	setAttr ".phl[1034]" 0;
	setAttr ".phl[1035]" 0;
	setAttr ".phl[1036]" 0;
	setAttr ".phl[1037]" 0;
	setAttr ".phl[1038]" 0;
	setAttr ".phl[1039]" 0;
	setAttr ".phl[1040]" 0;
	setAttr ".phl[1041]" 0;
	setAttr ".phl[1042]" 0;
	setAttr ".phl[1043]" 0;
	setAttr ".phl[1044]" 0;
	setAttr ".phl[1045]" 0;
	setAttr ".phl[1046]" 0;
	setAttr ".phl[1047]" 0;
	setAttr ".phl[1048]" 0;
	setAttr ".phl[1049]" 0;
	setAttr ".phl[1050]" 0;
	setAttr ".phl[1051]" 0;
	setAttr ".phl[1052]" 0;
	setAttr ".phl[1053]" 0;
	setAttr ".phl[1054]" 0;
	setAttr ".phl[1055]" 0;
	setAttr ".phl[1056]" 0;
	setAttr ".phl[1057]" 0;
	setAttr ".phl[1058]" 0;
	setAttr ".phl[1059]" 0;
	setAttr ".phl[1060]" 0;
	setAttr ".phl[1061]" 0;
	setAttr ".phl[1062]" 0;
	setAttr ".phl[1063]" 0;
	setAttr ".phl[1064]" 0;
	setAttr ".phl[1065]" 0;
	setAttr ".phl[1066]" 0;
	setAttr ".phl[1067]" 0;
	setAttr ".phl[1068]" 0;
	setAttr ".phl[1069]" 0;
	setAttr ".phl[1070]" 0;
	setAttr ".phl[1071]" 0;
	setAttr ".phl[1072]" 0;
	setAttr ".phl[1073]" 0;
	setAttr ".phl[1074]" 0;
	setAttr ".phl[1075]" 0;
	setAttr ".phl[1076]" 0;
	setAttr ".phl[1077]" 0;
	setAttr ".phl[1078]" 0;
	setAttr ".phl[1079]" 0;
	setAttr ".phl[1080]" 0;
	setAttr ".phl[1081]" 0;
	setAttr ".phl[1082]" 0;
	setAttr ".phl[1083]" 0;
	setAttr ".phl[1084]" 0;
	setAttr ".phl[1085]" 0;
	setAttr ".phl[1086]" 0;
	setAttr ".phl[1087]" 0;
	setAttr ".phl[1088]" 0;
	setAttr ".phl[1089]" 0;
	setAttr ".phl[1090]" 0;
	setAttr ".phl[1091]" 0;
	setAttr ".phl[1092]" 0;
	setAttr ".phl[1093]" 0;
	setAttr ".phl[1094]" 0;
	setAttr ".phl[1095]" 0;
	setAttr ".phl[1096]" 0;
	setAttr ".phl[1097]" 0;
	setAttr ".phl[1098]" 0;
	setAttr ".phl[1099]" 0;
	setAttr ".phl[1100]" 0;
	setAttr ".phl[1101]" 0;
	setAttr ".phl[1102]" 0;
	setAttr ".phl[1103]" 0;
	setAttr ".phl[1104]" 0;
	setAttr ".phl[1105]" 0;
	setAttr ".phl[1106]" 0;
	setAttr ".phl[1107]" 0;
	setAttr ".phl[1108]" 0;
	setAttr ".phl[1109]" 0;
	setAttr ".phl[1110]" 0;
	setAttr ".phl[1111]" 0;
	setAttr ".phl[1112]" 0;
	setAttr ".phl[1113]" 0;
	setAttr ".phl[1114]" 0;
	setAttr ".phl[1115]" 0;
	setAttr ".phl[1116]" 0;
	setAttr ".phl[1117]" 0;
	setAttr ".phl[1118]" 0;
	setAttr ".phl[1119]" 0;
	setAttr ".phl[1120]" 0;
	setAttr ".phl[1121]" 0;
	setAttr ".phl[1122]" 0;
	setAttr ".phl[1123]" 0;
	setAttr ".phl[1124]" 0;
	setAttr ".phl[1125]" 0;
	setAttr ".phl[1126]" 0;
	setAttr ".phl[1127]" 0;
	setAttr ".phl[1128]" 0;
	setAttr ".phl[1129]" 0;
	setAttr ".phl[1130]" 0;
	setAttr ".phl[1131]" 0;
	setAttr ".phl[1132]" 0;
	setAttr ".phl[1133]" 0;
	setAttr ".phl[1134]" 0;
	setAttr ".phl[1135]" 0;
	setAttr ".phl[1136]" 0;
	setAttr ".phl[1137]" 0;
	setAttr ".phl[1138]" 0;
	setAttr ".phl[1139]" 0;
	setAttr ".phl[1140]" 0;
	setAttr ".phl[1141]" 0;
	setAttr ".phl[1142]" 0;
	setAttr ".phl[1143]" 0;
	setAttr ".phl[1144]" 0;
	setAttr ".phl[1145]" 0;
	setAttr ".phl[1146]" 0;
	setAttr ".phl[1147]" 0;
	setAttr ".phl[1148]" 0;
	setAttr ".phl[1149]" 0;
	setAttr ".phl[1150]" 0;
	setAttr ".phl[1151]" 0;
	setAttr ".phl[1152]" 0;
	setAttr ".phl[1153]" 0;
	setAttr ".phl[1154]" 0;
	setAttr ".phl[1155]" 0;
	setAttr ".phl[1156]" 0;
	setAttr ".phl[1157]" 0;
	setAttr ".phl[1158]" 0;
	setAttr ".phl[1159]" 0;
	setAttr ".phl[1160]" 0;
	setAttr ".phl[1161]" 0;
	setAttr ".phl[1162]" 0;
	setAttr ".phl[1163]" 0;
	setAttr ".phl[1164]" 0;
	setAttr ".phl[1165]" 0;
	setAttr ".phl[1166]" 0;
	setAttr ".phl[1167]" 0;
	setAttr ".phl[1168]" 0;
	setAttr ".phl[1169]" 0;
	setAttr ".phl[1170]" 0;
	setAttr ".phl[1171]" 0;
	setAttr ".phl[1172]" 0;
	setAttr ".phl[1173]" 0;
	setAttr ".phl[1174]" 0;
	setAttr ".phl[1175]" 0;
	setAttr ".phl[1176]" 0;
	setAttr ".phl[1177]" 0;
	setAttr ".phl[1178]" 0;
	setAttr ".phl[1179]" 0;
	setAttr ".phl[1180]" 0;
	setAttr ".phl[1181]" 0;
	setAttr ".phl[1182]" 0;
	setAttr ".phl[1183]" 0;
	setAttr ".phl[1184]" 0;
	setAttr ".phl[1185]" 0;
	setAttr ".phl[1186]" 0;
	setAttr ".phl[1187]" 0;
	setAttr ".phl[1188]" 0;
	setAttr ".phl[1189]" 0;
	setAttr ".phl[1190]" 0;
	setAttr ".phl[1191]" 0;
	setAttr ".phl[1192]" 0;
	setAttr ".phl[1193]" 0;
	setAttr ".phl[1194]" 0;
	setAttr ".phl[1195]" 0;
	setAttr ".phl[1196]" 0;
	setAttr ".phl[1197]" 0;
	setAttr ".phl[1198]" 0;
	setAttr ".phl[1199]" 0;
	setAttr ".phl[1200]" 0;
	setAttr ".phl[1201]" 0;
	setAttr ".phl[1202]" 0;
	setAttr ".phl[1203]" 0;
	setAttr ".phl[1204]" 0;
	setAttr ".phl[1205]" 0;
	setAttr ".phl[1206]" 0;
	setAttr ".phl[1207]" 0;
	setAttr ".phl[1208]" 0;
	setAttr ".phl[1209]" 0;
	setAttr ".phl[1210]" 0;
	setAttr ".phl[1211]" 0;
	setAttr ".phl[1212]" 0;
	setAttr ".phl[1213]" 0;
	setAttr ".phl[1214]" 0;
	setAttr ".phl[1215]" 0;
	setAttr ".phl[1216]" 0;
	setAttr ".phl[1217]" 0;
	setAttr ".phl[1218]" 0;
	setAttr ".phl[1219]" 0;
	setAttr ".phl[1220]" 0;
	setAttr ".phl[1221]" 0;
	setAttr ".phl[1222]" 0;
	setAttr ".phl[1223]" 0;
	setAttr ".phl[1224]" 0;
	setAttr ".phl[1225]" 0;
	setAttr ".phl[1226]" 0;
	setAttr ".phl[1227]" 0;
	setAttr ".phl[1228]" 0;
	setAttr ".phl[1229]" 0;
	setAttr ".phl[1230]" 0;
	setAttr ".phl[1231]" 0;
	setAttr ".phl[1232]" 0;
	setAttr ".phl[1233]" 0;
	setAttr ".phl[1234]" 0;
	setAttr ".phl[1235]" 0;
	setAttr ".phl[1236]" 0;
	setAttr ".phl[1237]" 0;
	setAttr ".phl[1238]" 0;
	setAttr ".phl[1239]" 0;
	setAttr ".phl[1240]" 0;
	setAttr ".phl[1241]" 0;
	setAttr ".phl[1242]" 0;
	setAttr ".phl[1243]" 0;
	setAttr ".phl[1244]" 0;
	setAttr ".phl[1245]" 0;
	setAttr ".phl[1246]" 0;
	setAttr ".phl[1247]" 0;
	setAttr ".phl[1248]" 0;
	setAttr ".phl[1249]" 0;
	setAttr ".phl[1250]" 0;
	setAttr ".phl[1251]" 0;
	setAttr ".phl[1252]" 0;
	setAttr ".phl[1253]" 0;
	setAttr ".phl[1254]" 0;
	setAttr ".phl[1255]" 0;
	setAttr ".phl[1256]" 0;
	setAttr ".phl[1257]" 0;
	setAttr ".phl[1258]" 0;
	setAttr ".phl[1259]" 0;
	setAttr ".phl[1260]" 0;
	setAttr ".phl[1261]" 0;
	setAttr ".phl[1262]" 0;
	setAttr ".phl[1263]" 0;
	setAttr ".phl[1264]" 0;
	setAttr ".phl[1265]" 0;
	setAttr ".phl[1266]" 0;
	setAttr ".phl[1267]" 0;
	setAttr ".phl[1268]" 0;
	setAttr ".phl[1269]" 0;
	setAttr ".phl[1270]" 0;
	setAttr ".phl[1271]" 0;
	setAttr ".phl[1272]" 0;
	setAttr ".phl[1273]" 0;
	setAttr ".phl[1274]" 0;
	setAttr ".phl[1275]" 0;
	setAttr ".phl[1276]" 0;
	setAttr ".phl[1277]" 0;
	setAttr ".phl[1278]" 0;
	setAttr ".phl[1279]" 0;
	setAttr ".phl[1280]" 0;
	setAttr ".phl[1281]" 0;
	setAttr ".phl[1282]" 0;
	setAttr ".phl[1283]" 0;
	setAttr ".phl[1284]" 0;
	setAttr ".phl[1285]" 0;
	setAttr ".phl[1286]" 0;
	setAttr ".phl[1287]" 0;
	setAttr ".phl[1288]" 0;
	setAttr ".phl[1289]" 0;
	setAttr ".phl[1290]" 0;
	setAttr ".phl[1291]" 0;
	setAttr ".phl[1292]" 0;
	setAttr ".phl[1293]" 0;
	setAttr ".phl[1294]" 0;
	setAttr ".phl[1295]" 0;
	setAttr ".phl[1296]" 0;
	setAttr ".phl[1297]" 0;
	setAttr ".phl[1298]" 0;
	setAttr ".phl[1299]" 0;
	setAttr ".phl[1300]" 0;
	setAttr ".phl[1301]" 0;
	setAttr ".phl[1302]" 0;
	setAttr ".phl[1303]" 0;
	setAttr ".phl[1304]" 0;
	setAttr ".phl[1305]" 0;
	setAttr ".phl[1306]" 0;
	setAttr ".phl[1307]" 0;
	setAttr ".phl[1308]" 0;
	setAttr ".phl[1309]" 0;
	setAttr ".phl[1310]" 0;
	setAttr ".phl[1311]" 0;
	setAttr ".phl[1312]" 0;
	setAttr ".phl[1313]" 0;
	setAttr ".phl[1314]" 0;
	setAttr ".phl[1315]" 0;
	setAttr ".phl[1316]" 0;
	setAttr ".phl[1317]" 0;
	setAttr ".phl[1318]" 0;
	setAttr ".phl[1319]" 0;
	setAttr ".phl[1320]" 0;
	setAttr ".phl[1321]" 0;
	setAttr ".phl[1322]" 0;
	setAttr ".phl[1323]" 0;
	setAttr ".phl[1324]" 0;
	setAttr ".phl[1325]" 0;
	setAttr ".phl[1326]" 0;
	setAttr ".phl[1327]" 0;
	setAttr ".phl[1328]" 0;
	setAttr ".phl[1329]" 0;
	setAttr ".phl[1330]" 0;
	setAttr ".phl[1331]" 0;
	setAttr ".phl[1332]" 0;
	setAttr ".phl[1333]" 0;
	setAttr ".phl[1334]" 0;
	setAttr ".phl[1335]" 0;
	setAttr ".phl[1336]" 0;
	setAttr ".phl[1337]" 0;
	setAttr ".phl[1338]" 0;
	setAttr ".phl[1339]" 0;
	setAttr ".phl[1340]" 0;
	setAttr ".phl[1341]" 0;
	setAttr ".phl[1342]" 0;
	setAttr ".phl[1343]" 0;
	setAttr ".phl[1344]" 0;
	setAttr ".phl[1345]" 0;
	setAttr ".phl[1346]" 0;
	setAttr ".phl[1347]" 0;
	setAttr ".phl[1348]" 0;
	setAttr ".phl[1349]" 0;
	setAttr ".phl[1350]" 0;
	setAttr ".phl[1351]" 0;
	setAttr ".phl[1352]" 0;
	setAttr ".phl[1353]" 0;
	setAttr ".phl[1354]" 0;
	setAttr ".phl[1355]" 0;
	setAttr ".phl[1356]" 0;
	setAttr ".phl[1357]" 0;
	setAttr ".phl[1358]" 0;
	setAttr ".phl[1359]" 0;
	setAttr ".phl[1360]" 0;
	setAttr ".phl[1361]" 0;
	setAttr ".phl[1362]" 0;
	setAttr ".phl[1363]" 0;
	setAttr ".phl[1364]" 0;
	setAttr ".phl[1365]" 0;
	setAttr ".phl[1366]" 0;
	setAttr ".phl[1367]" 0;
	setAttr ".phl[1368]" 0;
	setAttr ".phl[1369]" 0;
	setAttr ".phl[1370]" 0;
	setAttr ".phl[1371]" 0;
	setAttr ".phl[1372]" 0;
	setAttr ".phl[1373]" 0;
	setAttr ".phl[1374]" 0;
	setAttr ".phl[1375]" 0;
	setAttr ".phl[1376]" 0;
	setAttr ".phl[1377]" 0;
	setAttr ".phl[1378]" 0;
	setAttr ".phl[1379]" 0;
	setAttr ".phl[1380]" 0;
	setAttr ".phl[1381]" 0;
	setAttr ".phl[1382]" 0;
	setAttr ".phl[1383]" 0;
	setAttr ".phl[1384]" 0;
	setAttr ".phl[1385]" 0;
	setAttr ".phl[1386]" 0;
	setAttr ".phl[1387]" 0;
	setAttr ".phl[1388]" 0;
	setAttr ".phl[1389]" 0;
	setAttr ".phl[1390]" 0;
	setAttr ".phl[1391]" 0;
	setAttr ".phl[1392]" 0;
	setAttr ".phl[1393]" 0;
	setAttr ".phl[1394]" 0;
	setAttr ".phl[1395]" 0;
	setAttr ".phl[1396]" 0;
	setAttr ".phl[1397]" 0;
	setAttr ".phl[1398]" 0;
	setAttr ".phl[1399]" 0;
	setAttr ".phl[1400]" 0;
	setAttr ".phl[1401]" 0;
	setAttr ".phl[1402]" 0;
	setAttr ".phl[1403]" 0;
	setAttr ".phl[1404]" 0;
	setAttr ".phl[1405]" 0;
	setAttr ".phl[1406]" 0;
	setAttr ".phl[1407]" 0;
	setAttr ".phl[1408]" 0;
	setAttr ".phl[1409]" 0;
	setAttr ".phl[1410]" 0;
	setAttr ".phl[1411]" 0;
	setAttr ".phl[1412]" 0;
	setAttr ".phl[1413]" 0;
	setAttr ".phl[1414]" 0;
	setAttr ".phl[1415]" 0;
	setAttr ".phl[1416]" 0;
	setAttr ".phl[1417]" 0;
	setAttr ".phl[1418]" 0;
	setAttr ".phl[1419]" 0;
	setAttr ".phl[1420]" 0;
	setAttr ".phl[1421]" 0;
	setAttr ".phl[1422]" 0;
	setAttr ".phl[1423]" 0;
	setAttr ".phl[1424]" 0;
	setAttr ".phl[1425]" 0;
	setAttr ".phl[1426]" 0;
	setAttr ".phl[1427]" 0;
	setAttr ".phl[1428]" 0;
	setAttr ".phl[1429]" 0;
	setAttr ".phl[1430]" 0;
	setAttr ".phl[1431]" 0;
	setAttr ".phl[1432]" 0;
	setAttr ".phl[1433]" 0;
	setAttr ".phl[1434]" 0;
	setAttr ".phl[1435]" 0;
	setAttr ".phl[1436]" 0;
	setAttr ".phl[1437]" 0;
	setAttr ".phl[1438]" 0;
	setAttr ".phl[1439]" 0;
	setAttr ".phl[1440]" 0;
	setAttr ".phl[1441]" 0;
	setAttr ".phl[1442]" 0;
	setAttr ".phl[1443]" 0;
	setAttr ".phl[1444]" 0;
	setAttr ".phl[1445]" 0;
	setAttr ".phl[1446]" 0;
	setAttr ".phl[1447]" 0;
	setAttr ".phl[1448]" 0;
	setAttr ".phl[1449]" 0;
	setAttr ".phl[1450]" 0;
	setAttr ".phl[1451]" 0;
	setAttr ".phl[1452]" 0;
	setAttr ".phl[1453]" 0;
	setAttr ".phl[1454]" 0;
	setAttr ".phl[1455]" 0;
	setAttr ".phl[1456]" 0;
	setAttr ".phl[1457]" 0;
	setAttr ".phl[1458]" 0;
	setAttr ".phl[1459]" 0;
	setAttr ".phl[1460]" 0;
	setAttr ".phl[1461]" 0;
	setAttr ".phl[1462]" 0;
	setAttr ".phl[1463]" 0;
	setAttr ".phl[1464]" 0;
	setAttr ".phl[1465]" 0;
	setAttr ".phl[1466]" 0;
	setAttr ".phl[1467]" 0;
	setAttr ".phl[1468]" 0;
	setAttr ".phl[1469]" 0;
	setAttr ".phl[1470]" 0;
	setAttr ".phl[1471]" 0;
	setAttr ".phl[1472]" 0;
	setAttr ".phl[1473]" 0;
	setAttr ".phl[1474]" 0;
	setAttr ".phl[1475]" 0;
	setAttr ".phl[1476]" 0;
	setAttr ".phl[1477]" 0;
	setAttr ".phl[1478]" 0;
	setAttr ".phl[1479]" 0;
	setAttr ".phl[1480]" 0;
	setAttr ".phl[1481]" 0;
	setAttr ".phl[1482]" 0;
	setAttr ".phl[1483]" 0;
	setAttr ".phl[1484]" 0;
	setAttr ".phl[1485]" 0;
	setAttr ".phl[1486]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 90
		2 "model:skinCluster576" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster576" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster576" "influenceColor" " -s 4"
		2 "model:skinCluster576" "influenceColor[1]" " -type \"float3\" 0 0 0"
		2 "model:skinCluster577" "lw[0:3]" " -s 4 0"
		2 "model:skinCluster577" "lockWeights" " -s 3"
		2 "model:skinCluster577" "influenceColor" " -s 4"
		2 "model:skinCluster577" "influenceColor[0]" " -type \"float3\" 0 0 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Elbow_R" 
		"rotate" " -type \"double3\" 0 0 0"
		3 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_L.worldMatrix" 
		"model:skinCluster576.matrix[1]" ""
		3 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_L.lockInfluenceWeights" 
		"model:skinCluster576.lockWeights[1]" ""
		3 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_L.objectColorRGB" 
		"model:skinCluster576.influenceColor[1]" ""
		3 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R.worldMatrix" 
		"model:skinCluster577.matrix[0]" ""
		3 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R.lockInfluenceWeights" 
		"model:skinCluster577.lockWeights[0]" ""
		3 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R.objectColorRGB" 
		"model:skinCluster577.influenceColor[0]" ""
		3 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateX" 
		""
		3 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateZ" 
		""
		3 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateX" 
		""
		3 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateZ" 
		"|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateZ" 
		""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.scaleX" 
		"modelRN.placeHolderList[432]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.scaleY" 
		"modelRN.placeHolderList[433]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.scaleZ" 
		"modelRN.placeHolderList[434]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.translateX" 
		"modelRN.placeHolderList[435]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.translateY" 
		"modelRN.placeHolderList[436]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.translateZ" 
		"modelRN.placeHolderList[437]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.rotateX" 
		"modelRN.placeHolderList[438]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.rotateY" 
		"modelRN.placeHolderList[439]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.rotateZ" 
		"modelRN.placeHolderList[440]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.scaleX" 
		"modelRN.placeHolderList[441]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.scaleY" 
		"modelRN.placeHolderList[442]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.scaleZ" 
		"modelRN.placeHolderList[443]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.translateX" 
		"modelRN.placeHolderList[444]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.translateY" 
		"modelRN.placeHolderList[445]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.translateZ" 
		"modelRN.placeHolderList[446]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.rotateX" 
		"modelRN.placeHolderList[447]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.rotateY" 
		"modelRN.placeHolderList[448]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.rotateZ" 
		"modelRN.placeHolderList[449]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.scaleX" 
		"modelRN.placeHolderList[450]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.scaleY" 
		"modelRN.placeHolderList[451]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.scaleZ" 
		"modelRN.placeHolderList[452]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.translateX" 
		"modelRN.placeHolderList[453]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.translateY" 
		"modelRN.placeHolderList[454]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.translateZ" 
		"modelRN.placeHolderList[455]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.rotateX" 
		"modelRN.placeHolderList[456]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.rotateY" 
		"modelRN.placeHolderList[457]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.rotateZ" 
		"modelRN.placeHolderList[458]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.scaleX" 
		"modelRN.placeHolderList[459]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.scaleY" 
		"modelRN.placeHolderList[460]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.scaleZ" 
		"modelRN.placeHolderList[461]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.translateX" 
		"modelRN.placeHolderList[462]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.translateY" 
		"modelRN.placeHolderList[463]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.translateZ" 
		"modelRN.placeHolderList[464]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.rotateX" 
		"modelRN.placeHolderList[465]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.rotateY" 
		"modelRN.placeHolderList[466]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.rotateZ" 
		"modelRN.placeHolderList[467]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.scaleX" 
		"modelRN.placeHolderList[468]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.scaleY" 
		"modelRN.placeHolderList[469]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.scaleZ" 
		"modelRN.placeHolderList[470]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.translateX" 
		"modelRN.placeHolderList[471]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.translateY" 
		"modelRN.placeHolderList[472]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.translateZ" 
		"modelRN.placeHolderList[473]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.rotateX" 
		"modelRN.placeHolderList[474]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.rotateY" 
		"modelRN.placeHolderList[475]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.rotateZ" 
		"modelRN.placeHolderList[476]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleX" 
		"modelRN.placeHolderList[653]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleY" 
		"modelRN.placeHolderList[654]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.scaleZ" 
		"modelRN.placeHolderList[655]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateZ" 
		"modelRN.placeHolderList[656]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateX" 
		"modelRN.placeHolderList[657]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.rotateY" 
		"modelRN.placeHolderList[658]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateX" 
		"modelRN.placeHolderList[659]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateY" 
		"modelRN.placeHolderList[660]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKElbow_R.translateZ" 
		"modelRN.placeHolderList[661]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleX" 
		"modelRN.placeHolderList[700]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleY" 
		"modelRN.placeHolderList[701]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.scaleZ" 
		"modelRN.placeHolderList[702]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateZ" 
		"modelRN.placeHolderList[703]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateX" 
		"modelRN.placeHolderList[704]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.rotateY" 
		"modelRN.placeHolderList[705]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateX" 
		"modelRN.placeHolderList[706]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateY" 
		"modelRN.placeHolderList[707]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKElbow_L.translateZ" 
		"modelRN.placeHolderList[708]" ""
		"modelRN" 802
		0 "|modelRNfosterParent1|IKArm_L_parentConstraint1" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"-s -r "
		1 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R" 
		"blendFKShoulderR" "blendFKShoulderR" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		1 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L" 
		"blendFKShoulderL" "blendFKShoulderL" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R" 
		"blendFKShoulderR" " -k 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"rotateZ" " -8.49654917880130434"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"scaleX" " -av"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"scaleY" " -av"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M" 
		"scaleZ" " -av"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L" 
		"rotateOrder" " 2"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L" 
		"blendFKShoulderL" " -k 1"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"swivel" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"followMain" " -k 1 10"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"followRoot" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"followChest" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"stretchy" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"antiPop" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"Lenght1" " -k 1 1"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"Lenght2" " -k 1 1"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"Fatness1" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"Fatness2" " -k 1 0"
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"volume" " -k 1 10"
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleX" 
		"modelRN.placeHolderList[709]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleY" 
		"modelRN.placeHolderList[710]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleZ" 
		"modelRN.placeHolderList[711]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.visibility" 
		"modelRN.placeHolderList[712]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateX" 
		"modelRN.placeHolderList[713]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateY" 
		"modelRN.placeHolderList[714]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateZ" 
		"modelRN.placeHolderList[715]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateX" 
		"modelRN.placeHolderList[716]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateY" 
		"modelRN.placeHolderList[717]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateZ" 
		"modelRN.placeHolderList[718]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleX" 
		"modelRN.placeHolderList[719]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleY" 
		"modelRN.placeHolderList[720]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleZ" 
		"modelRN.placeHolderList[721]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateX" 
		"modelRN.placeHolderList[722]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateY" 
		"modelRN.placeHolderList[723]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateZ" 
		"modelRN.placeHolderList[724]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateX" 
		"modelRN.placeHolderList[725]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateY" 
		"modelRN.placeHolderList[726]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateZ" 
		"modelRN.placeHolderList[727]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleX" 
		"modelRN.placeHolderList[728]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleY" 
		"modelRN.placeHolderList[729]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleZ" 
		"modelRN.placeHolderList[730]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.Global" 
		"modelRN.placeHolderList[731]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateZ" 
		"modelRN.placeHolderList[732]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateX" 
		"modelRN.placeHolderList[733]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateY" 
		"modelRN.placeHolderList[734]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateX" 
		"modelRN.placeHolderList[735]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateY" 
		"modelRN.placeHolderList[736]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateZ" 
		"modelRN.placeHolderList[737]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleX" 
		"modelRN.placeHolderList[738]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleY" 
		"modelRN.placeHolderList[739]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleZ" 
		"modelRN.placeHolderList[740]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateX" 
		"modelRN.placeHolderList[741]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateY" 
		"modelRN.placeHolderList[742]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateZ" 
		"modelRN.placeHolderList[743]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateX" 
		"modelRN.placeHolderList[744]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateY" 
		"modelRN.placeHolderList[745]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateZ" 
		"modelRN.placeHolderList[746]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleX" 
		"modelRN.placeHolderList[747]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleY" 
		"modelRN.placeHolderList[748]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleZ" 
		"modelRN.placeHolderList[749]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.Global" 
		"modelRN.placeHolderList[750]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateX" 
		"modelRN.placeHolderList[751]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateY" 
		"modelRN.placeHolderList[752]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateZ" 
		"modelRN.placeHolderList[753]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateX" 
		"modelRN.placeHolderList[754]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateY" 
		"modelRN.placeHolderList[755]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateZ" 
		"modelRN.placeHolderList[756]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleX" 
		"modelRN.placeHolderList[757]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleY" 
		"modelRN.placeHolderList[758]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleZ" 
		"modelRN.placeHolderList[759]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.Global" 
		"modelRN.placeHolderList[760]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"modelRN.placeHolderList[761]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"modelRN.placeHolderList[762]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"modelRN.placeHolderList[763]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"modelRN.placeHolderList[764]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateY" 
		"modelRN.placeHolderList[765]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateZ" 
		"modelRN.placeHolderList[766]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateY" 
		"modelRN.placeHolderList[767]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateX" 
		"modelRN.placeHolderList[768]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleX" 
		"modelRN.placeHolderList[769]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleY" 
		"modelRN.placeHolderList[770]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleZ" 
		"modelRN.placeHolderList[771]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateX" 
		"modelRN.placeHolderList[772]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateY" 
		"modelRN.placeHolderList[773]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateZ" 
		"modelRN.placeHolderList[774]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateZ" 
		"modelRN.placeHolderList[775]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateY" 
		"modelRN.placeHolderList[776]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateX" 
		"modelRN.placeHolderList[777]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scale" 
		"modelRN.placeHolderList[778]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleX" 
		"modelRN.placeHolderList[779]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleY" 
		"modelRN.placeHolderList[780]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleZ" 
		"modelRN.placeHolderList[781]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translate" 
		"modelRN.placeHolderList[782]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateX" 
		"modelRN.placeHolderList[783]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateY" 
		"modelRN.placeHolderList[784]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateZ" 
		"modelRN.placeHolderList[785]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotate" 
		"modelRN.placeHolderList[786]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateX" 
		"modelRN.placeHolderList[787]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateY" 
		"modelRN.placeHolderList[788]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateZ" 
		"modelRN.placeHolderList[789]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.parentMatrix" 
		"modelRN.placeHolderList[790]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotatePivot" 
		"modelRN.placeHolderList[791]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotatePivotTranslate" 
		"modelRN.placeHolderList[792]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateOrder" 
		"modelRN.placeHolderList[793]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleX" 
		"modelRN.placeHolderList[794]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleY" 
		"modelRN.placeHolderList[795]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleZ" 
		"modelRN.placeHolderList[796]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.Global" 
		"modelRN.placeHolderList[797]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateX" 
		"modelRN.placeHolderList[798]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateY" 
		"modelRN.placeHolderList[799]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateZ" 
		"modelRN.placeHolderList[800]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateX" 
		"modelRN.placeHolderList[801]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateY" 
		"modelRN.placeHolderList[802]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateZ" 
		"modelRN.placeHolderList[803]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleX" 
		"modelRN.placeHolderList[804]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleY" 
		"modelRN.placeHolderList[805]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleZ" 
		"modelRN.placeHolderList[806]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.Global" 
		"modelRN.placeHolderList[807]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"modelRN.placeHolderList[808]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"modelRN.placeHolderList[809]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateZ" 
		"modelRN.placeHolderList[810]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateZ" 
		"modelRN.placeHolderList[811]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateY" 
		"modelRN.placeHolderList[812]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateX" 
		"modelRN.placeHolderList[813]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateY" 
		"modelRN.placeHolderList[814]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateZ" 
		"modelRN.placeHolderList[815]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.scaleX" 
		"modelRN.placeHolderList[816]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.scaleY" 
		"modelRN.placeHolderList[817]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.scaleZ" 
		"modelRN.placeHolderList[818]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.rotateX" 
		"modelRN.placeHolderList[819]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.rotateY" 
		"modelRN.placeHolderList[820]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.rotateZ" 
		"modelRN.placeHolderList[821]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.translateZ" 
		"modelRN.placeHolderList[822]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.translateY" 
		"modelRN.placeHolderList[823]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.translateX" 
		"modelRN.placeHolderList[824]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleX" 
		"modelRN.placeHolderList[825]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleY" 
		"modelRN.placeHolderList[826]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleZ" 
		"modelRN.placeHolderList[827]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateX" 
		"modelRN.placeHolderList[828]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateY" 
		"modelRN.placeHolderList[829]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateZ" 
		"modelRN.placeHolderList[830]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateX" 
		"modelRN.placeHolderList[831]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateY" 
		"modelRN.placeHolderList[832]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateZ" 
		"modelRN.placeHolderList[833]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.scaleX" 
		"modelRN.placeHolderList[834]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.scaleY" 
		"modelRN.placeHolderList[835]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.scaleZ" 
		"modelRN.placeHolderList[836]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.Global" 
		"modelRN.placeHolderList[837]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.blendFKShoulderR" 
		"modelRN.placeHolderList[838]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.blendFKShoulderR" 
		"modelRN.placeHolderList[839]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateX" 
		"modelRN.placeHolderList[840]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateZ" 
		"modelRN.placeHolderList[841]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateY" 
		"modelRN.placeHolderList[842]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.translateX" 
		"modelRN.placeHolderList[843]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.translateY" 
		"modelRN.placeHolderList[844]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.translateZ" 
		"modelRN.placeHolderList[845]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.scaleX" 
		"modelRN.placeHolderList[846]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.scaleY" 
		"modelRN.placeHolderList[847]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.scaleZ" 
		"modelRN.placeHolderList[848]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.translateX" 
		"modelRN.placeHolderList[849]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.translateY" 
		"modelRN.placeHolderList[850]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.translateZ" 
		"modelRN.placeHolderList[851]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.rotateX" 
		"modelRN.placeHolderList[852]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.rotateY" 
		"modelRN.placeHolderList[853]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.rotateZ" 
		"modelRN.placeHolderList[854]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleX" 
		"modelRN.placeHolderList[855]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleY" 
		"modelRN.placeHolderList[856]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleZ" 
		"modelRN.placeHolderList[857]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateX" 
		"modelRN.placeHolderList[858]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateY" 
		"modelRN.placeHolderList[859]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateZ" 
		"modelRN.placeHolderList[860]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateX" 
		"modelRN.placeHolderList[861]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateY" 
		"modelRN.placeHolderList[862]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateZ" 
		"modelRN.placeHolderList[863]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleX" 
		"modelRN.placeHolderList[864]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleY" 
		"modelRN.placeHolderList[865]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleZ" 
		"modelRN.placeHolderList[866]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateX" 
		"modelRN.placeHolderList[867]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateY" 
		"modelRN.placeHolderList[868]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateZ" 
		"modelRN.placeHolderList[869]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateX" 
		"modelRN.placeHolderList[870]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateY" 
		"modelRN.placeHolderList[871]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateZ" 
		"modelRN.placeHolderList[872]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleX" 
		"modelRN.placeHolderList[873]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleY" 
		"modelRN.placeHolderList[874]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleZ" 
		"modelRN.placeHolderList[875]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateX" 
		"modelRN.placeHolderList[876]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateY" 
		"modelRN.placeHolderList[877]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateZ" 
		"modelRN.placeHolderList[878]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateX" 
		"modelRN.placeHolderList[879]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateY" 
		"modelRN.placeHolderList[880]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateZ" 
		"modelRN.placeHolderList[881]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.scaleX" 
		"modelRN.placeHolderList[882]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.scaleY" 
		"modelRN.placeHolderList[883]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.scaleZ" 
		"modelRN.placeHolderList[884]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.translateX" 
		"modelRN.placeHolderList[885]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.translateY" 
		"modelRN.placeHolderList[886]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.translateZ" 
		"modelRN.placeHolderList[887]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.rotateX" 
		"modelRN.placeHolderList[888]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.rotateY" 
		"modelRN.placeHolderList[889]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.rotateZ" 
		"modelRN.placeHolderList[890]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleX" 
		"modelRN.placeHolderList[891]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleY" 
		"modelRN.placeHolderList[892]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleZ" 
		"modelRN.placeHolderList[893]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateX" 
		"modelRN.placeHolderList[894]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateY" 
		"modelRN.placeHolderList[895]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateZ" 
		"modelRN.placeHolderList[896]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateX" 
		"modelRN.placeHolderList[897]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateY" 
		"modelRN.placeHolderList[898]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateZ" 
		"modelRN.placeHolderList[899]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleX" 
		"modelRN.placeHolderList[900]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleY" 
		"modelRN.placeHolderList[901]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleZ" 
		"modelRN.placeHolderList[902]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateX" 
		"modelRN.placeHolderList[903]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateY" 
		"modelRN.placeHolderList[904]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateZ" 
		"modelRN.placeHolderList[905]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateX" 
		"modelRN.placeHolderList[906]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateY" 
		"modelRN.placeHolderList[907]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateZ" 
		"modelRN.placeHolderList[908]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleX" 
		"modelRN.placeHolderList[909]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleY" 
		"modelRN.placeHolderList[910]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleZ" 
		"modelRN.placeHolderList[911]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateX" 
		"modelRN.placeHolderList[912]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateY" 
		"modelRN.placeHolderList[913]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateZ" 
		"modelRN.placeHolderList[914]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateX" 
		"modelRN.placeHolderList[915]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateY" 
		"modelRN.placeHolderList[916]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateZ" 
		"modelRN.placeHolderList[917]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.scaleX" 
		"modelRN.placeHolderList[918]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.scaleY" 
		"modelRN.placeHolderList[919]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.scaleZ" 
		"modelRN.placeHolderList[920]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.translateX" 
		"modelRN.placeHolderList[921]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.translateY" 
		"modelRN.placeHolderList[922]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.translateZ" 
		"modelRN.placeHolderList[923]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.rotateX" 
		"modelRN.placeHolderList[924]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.rotateY" 
		"modelRN.placeHolderList[925]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.rotateZ" 
		"modelRN.placeHolderList[926]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleX" 
		"modelRN.placeHolderList[927]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleY" 
		"modelRN.placeHolderList[928]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleZ" 
		"modelRN.placeHolderList[929]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateX" 
		"modelRN.placeHolderList[930]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateY" 
		"modelRN.placeHolderList[931]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateZ" 
		"modelRN.placeHolderList[932]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateX" 
		"modelRN.placeHolderList[933]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateY" 
		"modelRN.placeHolderList[934]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateZ" 
		"modelRN.placeHolderList[935]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleX" 
		"modelRN.placeHolderList[936]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleY" 
		"modelRN.placeHolderList[937]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleZ" 
		"modelRN.placeHolderList[938]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateX" 
		"modelRN.placeHolderList[939]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateY" 
		"modelRN.placeHolderList[940]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateZ" 
		"modelRN.placeHolderList[941]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateX" 
		"modelRN.placeHolderList[942]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateY" 
		"modelRN.placeHolderList[943]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateZ" 
		"modelRN.placeHolderList[944]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleX" 
		"modelRN.placeHolderList[945]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleY" 
		"modelRN.placeHolderList[946]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleZ" 
		"modelRN.placeHolderList[947]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateX" 
		"modelRN.placeHolderList[948]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateY" 
		"modelRN.placeHolderList[949]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateZ" 
		"modelRN.placeHolderList[950]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateX" 
		"modelRN.placeHolderList[951]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateY" 
		"modelRN.placeHolderList[952]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateZ" 
		"modelRN.placeHolderList[953]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.scaleX" 
		"modelRN.placeHolderList[954]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.scaleY" 
		"modelRN.placeHolderList[955]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.scaleZ" 
		"modelRN.placeHolderList[956]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.translateX" 
		"modelRN.placeHolderList[957]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.translateY" 
		"modelRN.placeHolderList[958]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.translateZ" 
		"modelRN.placeHolderList[959]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.rotateX" 
		"modelRN.placeHolderList[960]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.rotateY" 
		"modelRN.placeHolderList[961]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.rotateZ" 
		"modelRN.placeHolderList[962]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleX" 
		"modelRN.placeHolderList[963]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleY" 
		"modelRN.placeHolderList[964]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleZ" 
		"modelRN.placeHolderList[965]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateX" 
		"modelRN.placeHolderList[966]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateY" 
		"modelRN.placeHolderList[967]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateZ" 
		"modelRN.placeHolderList[968]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateX" 
		"modelRN.placeHolderList[969]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateY" 
		"modelRN.placeHolderList[970]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateZ" 
		"modelRN.placeHolderList[971]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleX" 
		"modelRN.placeHolderList[972]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleY" 
		"modelRN.placeHolderList[973]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleZ" 
		"modelRN.placeHolderList[974]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateX" 
		"modelRN.placeHolderList[975]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateY" 
		"modelRN.placeHolderList[976]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateZ" 
		"modelRN.placeHolderList[977]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateX" 
		"modelRN.placeHolderList[978]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateY" 
		"modelRN.placeHolderList[979]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateZ" 
		"modelRN.placeHolderList[980]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleX" 
		"modelRN.placeHolderList[981]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleY" 
		"modelRN.placeHolderList[982]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleZ" 
		"modelRN.placeHolderList[983]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateX" 
		"modelRN.placeHolderList[984]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateY" 
		"modelRN.placeHolderList[985]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateZ" 
		"modelRN.placeHolderList[986]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateX" 
		"modelRN.placeHolderList[987]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateY" 
		"modelRN.placeHolderList[988]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateZ" 
		"modelRN.placeHolderList[989]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleX" 
		"modelRN.placeHolderList[990]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleY" 
		"modelRN.placeHolderList[991]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleZ" 
		"modelRN.placeHolderList[992]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateX" 
		"modelRN.placeHolderList[993]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateY" 
		"modelRN.placeHolderList[994]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateZ" 
		"modelRN.placeHolderList[995]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateX" 
		"modelRN.placeHolderList[996]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateY" 
		"modelRN.placeHolderList[997]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateZ" 
		"modelRN.placeHolderList[998]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleX" 
		"modelRN.placeHolderList[999]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleY" 
		"modelRN.placeHolderList[1000]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleZ" 
		"modelRN.placeHolderList[1001]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateZ" 
		"modelRN.placeHolderList[1002]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateX" 
		"modelRN.placeHolderList[1003]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateY" 
		"modelRN.placeHolderList[1004]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateX" 
		"modelRN.placeHolderList[1005]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateY" 
		"modelRN.placeHolderList[1006]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateZ" 
		"modelRN.placeHolderList[1007]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleX" 
		"modelRN.placeHolderList[1008]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleY" 
		"modelRN.placeHolderList[1009]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleZ" 
		"modelRN.placeHolderList[1010]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateX" 
		"modelRN.placeHolderList[1011]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateY" 
		"modelRN.placeHolderList[1012]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateZ" 
		"modelRN.placeHolderList[1013]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateX" 
		"modelRN.placeHolderList[1014]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateY" 
		"modelRN.placeHolderList[1015]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateZ" 
		"modelRN.placeHolderList[1016]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.scaleX" 
		"modelRN.placeHolderList[1017]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.scaleY" 
		"modelRN.placeHolderList[1018]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.scaleZ" 
		"modelRN.placeHolderList[1019]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.rotateX" 
		"modelRN.placeHolderList[1020]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.rotateY" 
		"modelRN.placeHolderList[1021]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.rotateZ" 
		"modelRN.placeHolderList[1022]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.translateX" 
		"modelRN.placeHolderList[1023]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.translateY" 
		"modelRN.placeHolderList[1024]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.translateZ" 
		"modelRN.placeHolderList[1025]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.scaleX" 
		"modelRN.placeHolderList[1026]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.scaleY" 
		"modelRN.placeHolderList[1027]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.scaleZ" 
		"modelRN.placeHolderList[1028]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.rotateX" 
		"modelRN.placeHolderList[1029]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.rotateY" 
		"modelRN.placeHolderList[1030]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.rotateZ" 
		"modelRN.placeHolderList[1031]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.translateX" 
		"modelRN.placeHolderList[1032]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.translateY" 
		"modelRN.placeHolderList[1033]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.translateZ" 
		"modelRN.placeHolderList[1034]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.scaleX" 
		"modelRN.placeHolderList[1035]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.scaleY" 
		"modelRN.placeHolderList[1036]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.scaleZ" 
		"modelRN.placeHolderList[1037]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.translateX" 
		"modelRN.placeHolderList[1038]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.translateY" 
		"modelRN.placeHolderList[1039]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.translateZ" 
		"modelRN.placeHolderList[1040]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.rotateX" 
		"modelRN.placeHolderList[1041]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.rotateY" 
		"modelRN.placeHolderList[1042]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.rotateZ" 
		"modelRN.placeHolderList[1043]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.scaleX" 
		"modelRN.placeHolderList[1044]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.scaleY" 
		"modelRN.placeHolderList[1045]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.scaleZ" 
		"modelRN.placeHolderList[1046]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.rotateX" 
		"modelRN.placeHolderList[1047]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.rotateY" 
		"modelRN.placeHolderList[1048]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.rotateZ" 
		"modelRN.placeHolderList[1049]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.translateX" 
		"modelRN.placeHolderList[1050]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.translateY" 
		"modelRN.placeHolderList[1051]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.translateZ" 
		"modelRN.placeHolderList[1052]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.scaleX" 
		"modelRN.placeHolderList[1053]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.scaleY" 
		"modelRN.placeHolderList[1054]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.scaleZ" 
		"modelRN.placeHolderList[1055]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.translateX" 
		"modelRN.placeHolderList[1056]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.translateY" 
		"modelRN.placeHolderList[1057]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.translateZ" 
		"modelRN.placeHolderList[1058]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.rotateX" 
		"modelRN.placeHolderList[1059]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.rotateY" 
		"modelRN.placeHolderList[1060]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.rotateZ" 
		"modelRN.placeHolderList[1061]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleX" 
		"modelRN.placeHolderList[1062]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleY" 
		"modelRN.placeHolderList[1063]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleZ" 
		"modelRN.placeHolderList[1064]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateX" 
		"modelRN.placeHolderList[1065]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateY" 
		"modelRN.placeHolderList[1066]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateZ" 
		"modelRN.placeHolderList[1067]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateX" 
		"modelRN.placeHolderList[1068]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateY" 
		"modelRN.placeHolderList[1069]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateZ" 
		"modelRN.placeHolderList[1070]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.scaleX" 
		"modelRN.placeHolderList[1071]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.scaleY" 
		"modelRN.placeHolderList[1072]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.scaleZ" 
		"modelRN.placeHolderList[1073]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.translateX" 
		"modelRN.placeHolderList[1074]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.translateY" 
		"modelRN.placeHolderList[1075]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.translateZ" 
		"modelRN.placeHolderList[1076]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.rotateX" 
		"modelRN.placeHolderList[1077]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.rotateY" 
		"modelRN.placeHolderList[1078]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.rotateZ" 
		"modelRN.placeHolderList[1079]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateX" 
		"modelRN.placeHolderList[1080]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateY" 
		"modelRN.placeHolderList[1081]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateZ" 
		"modelRN.placeHolderList[1082]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.visibility" 
		"modelRN.placeHolderList[1083]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.scaleX" 
		"modelRN.placeHolderList[1084]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.scaleY" 
		"modelRN.placeHolderList[1085]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.scaleZ" 
		"modelRN.placeHolderList[1086]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.Global" 
		"modelRN.placeHolderList[1087]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.blendFKShoulderL" 
		"modelRN.placeHolderList[1088]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.blendFKShoulderL" 
		"modelRN.placeHolderList[1089]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateX" 
		"modelRN.placeHolderList[1090]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateZ" 
		"modelRN.placeHolderList[1091]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateY" 
		"modelRN.placeHolderList[1092]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.translateX" 
		"modelRN.placeHolderList[1093]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.translateY" 
		"modelRN.placeHolderList[1094]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.translateZ" 
		"modelRN.placeHolderList[1095]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.scaleX" 
		"modelRN.placeHolderList[1096]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.scaleY" 
		"modelRN.placeHolderList[1097]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1098]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.translateX" 
		"modelRN.placeHolderList[1099]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.translateY" 
		"modelRN.placeHolderList[1100]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.translateZ" 
		"modelRN.placeHolderList[1101]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.rotateX" 
		"modelRN.placeHolderList[1102]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.rotateY" 
		"modelRN.placeHolderList[1103]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1104]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.rotateX" 
		"modelRN.placeHolderList[1105]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.rotateY" 
		"modelRN.placeHolderList[1106]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1107]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.translateX" 
		"modelRN.placeHolderList[1108]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.translateY" 
		"modelRN.placeHolderList[1109]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.translateZ" 
		"modelRN.placeHolderList[1110]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.scaleX" 
		"modelRN.placeHolderList[1111]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.scaleY" 
		"modelRN.placeHolderList[1112]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKSubIndexFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1113]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleX" 
		"modelRN.placeHolderList[1114]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleY" 
		"modelRN.placeHolderList[1115]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleZ" 
		"modelRN.placeHolderList[1116]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateX" 
		"modelRN.placeHolderList[1117]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateY" 
		"modelRN.placeHolderList[1118]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateZ" 
		"modelRN.placeHolderList[1119]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateX" 
		"modelRN.placeHolderList[1120]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateY" 
		"modelRN.placeHolderList[1121]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateZ" 
		"modelRN.placeHolderList[1122]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleX" 
		"modelRN.placeHolderList[1123]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleY" 
		"modelRN.placeHolderList[1124]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleZ" 
		"modelRN.placeHolderList[1125]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateX" 
		"modelRN.placeHolderList[1126]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateY" 
		"modelRN.placeHolderList[1127]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateZ" 
		"modelRN.placeHolderList[1128]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateX" 
		"modelRN.placeHolderList[1129]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateY" 
		"modelRN.placeHolderList[1130]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateZ" 
		"modelRN.placeHolderList[1131]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleX" 
		"modelRN.placeHolderList[1132]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleY" 
		"modelRN.placeHolderList[1133]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleZ" 
		"modelRN.placeHolderList[1134]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateX" 
		"modelRN.placeHolderList[1135]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateY" 
		"modelRN.placeHolderList[1136]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateZ" 
		"modelRN.placeHolderList[1137]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateX" 
		"modelRN.placeHolderList[1138]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateY" 
		"modelRN.placeHolderList[1139]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateZ" 
		"modelRN.placeHolderList[1140]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.scaleX" 
		"modelRN.placeHolderList[1141]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.scaleY" 
		"modelRN.placeHolderList[1142]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1143]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.translateX" 
		"modelRN.placeHolderList[1144]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.translateY" 
		"modelRN.placeHolderList[1145]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.translateZ" 
		"modelRN.placeHolderList[1146]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.rotateX" 
		"modelRN.placeHolderList[1147]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.rotateY" 
		"modelRN.placeHolderList[1148]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1149]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.rotateX" 
		"modelRN.placeHolderList[1150]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.rotateY" 
		"modelRN.placeHolderList[1151]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1152]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.translateX" 
		"modelRN.placeHolderList[1153]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.translateY" 
		"modelRN.placeHolderList[1154]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.translateZ" 
		"modelRN.placeHolderList[1155]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.scaleX" 
		"modelRN.placeHolderList[1156]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.scaleY" 
		"modelRN.placeHolderList[1157]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKSubMiddleFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1158]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleX" 
		"modelRN.placeHolderList[1159]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleY" 
		"modelRN.placeHolderList[1160]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleZ" 
		"modelRN.placeHolderList[1161]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateX" 
		"modelRN.placeHolderList[1162]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateY" 
		"modelRN.placeHolderList[1163]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateZ" 
		"modelRN.placeHolderList[1164]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateX" 
		"modelRN.placeHolderList[1165]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateY" 
		"modelRN.placeHolderList[1166]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateZ" 
		"modelRN.placeHolderList[1167]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleX" 
		"modelRN.placeHolderList[1168]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleY" 
		"modelRN.placeHolderList[1169]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleZ" 
		"modelRN.placeHolderList[1170]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateX" 
		"modelRN.placeHolderList[1171]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateY" 
		"modelRN.placeHolderList[1172]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateZ" 
		"modelRN.placeHolderList[1173]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateX" 
		"modelRN.placeHolderList[1174]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateY" 
		"modelRN.placeHolderList[1175]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateZ" 
		"modelRN.placeHolderList[1176]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleX" 
		"modelRN.placeHolderList[1177]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleY" 
		"modelRN.placeHolderList[1178]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleZ" 
		"modelRN.placeHolderList[1179]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateX" 
		"modelRN.placeHolderList[1180]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateY" 
		"modelRN.placeHolderList[1181]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateZ" 
		"modelRN.placeHolderList[1182]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateX" 
		"modelRN.placeHolderList[1183]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateY" 
		"modelRN.placeHolderList[1184]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateZ" 
		"modelRN.placeHolderList[1185]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.scaleX" 
		"modelRN.placeHolderList[1186]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.scaleY" 
		"modelRN.placeHolderList[1187]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1188]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.translateX" 
		"modelRN.placeHolderList[1189]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.translateY" 
		"modelRN.placeHolderList[1190]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.translateZ" 
		"modelRN.placeHolderList[1191]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.rotateX" 
		"modelRN.placeHolderList[1192]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.rotateY" 
		"modelRN.placeHolderList[1193]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1194]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.rotateY" 
		"modelRN.placeHolderList[1195]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.rotateX" 
		"modelRN.placeHolderList[1196]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1197]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.translateX" 
		"modelRN.placeHolderList[1198]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.translateY" 
		"modelRN.placeHolderList[1199]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.translateZ" 
		"modelRN.placeHolderList[1200]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.scaleX" 
		"modelRN.placeHolderList[1201]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.scaleY" 
		"modelRN.placeHolderList[1202]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKSubRingFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1203]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleX" 
		"modelRN.placeHolderList[1204]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleY" 
		"modelRN.placeHolderList[1205]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleZ" 
		"modelRN.placeHolderList[1206]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateX" 
		"modelRN.placeHolderList[1207]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateY" 
		"modelRN.placeHolderList[1208]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateZ" 
		"modelRN.placeHolderList[1209]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateX" 
		"modelRN.placeHolderList[1210]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateY" 
		"modelRN.placeHolderList[1211]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateZ" 
		"modelRN.placeHolderList[1212]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleX" 
		"modelRN.placeHolderList[1213]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleY" 
		"modelRN.placeHolderList[1214]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleZ" 
		"modelRN.placeHolderList[1215]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateX" 
		"modelRN.placeHolderList[1216]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateY" 
		"modelRN.placeHolderList[1217]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateZ" 
		"modelRN.placeHolderList[1218]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateX" 
		"modelRN.placeHolderList[1219]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateY" 
		"modelRN.placeHolderList[1220]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateZ" 
		"modelRN.placeHolderList[1221]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleX" 
		"modelRN.placeHolderList[1222]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleY" 
		"modelRN.placeHolderList[1223]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleZ" 
		"modelRN.placeHolderList[1224]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateX" 
		"modelRN.placeHolderList[1225]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateY" 
		"modelRN.placeHolderList[1226]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateZ" 
		"modelRN.placeHolderList[1227]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateX" 
		"modelRN.placeHolderList[1228]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateY" 
		"modelRN.placeHolderList[1229]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateZ" 
		"modelRN.placeHolderList[1230]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.scaleX" 
		"modelRN.placeHolderList[1231]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.scaleY" 
		"modelRN.placeHolderList[1232]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1233]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.translateX" 
		"modelRN.placeHolderList[1234]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.translateY" 
		"modelRN.placeHolderList[1235]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.translateZ" 
		"modelRN.placeHolderList[1236]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.rotateX" 
		"modelRN.placeHolderList[1237]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.rotateY" 
		"modelRN.placeHolderList[1238]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1239]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.rotateX" 
		"modelRN.placeHolderList[1240]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.rotateY" 
		"modelRN.placeHolderList[1241]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.rotateZ" 
		"modelRN.placeHolderList[1242]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.translateX" 
		"modelRN.placeHolderList[1243]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.translateY" 
		"modelRN.placeHolderList[1244]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.translateZ" 
		"modelRN.placeHolderList[1245]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.scaleX" 
		"modelRN.placeHolderList[1246]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.scaleY" 
		"modelRN.placeHolderList[1247]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKSubPinkyFinger0_L.scaleZ" 
		"modelRN.placeHolderList[1248]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleX" 
		"modelRN.placeHolderList[1249]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleY" 
		"modelRN.placeHolderList[1250]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleZ" 
		"modelRN.placeHolderList[1251]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateX" 
		"modelRN.placeHolderList[1252]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateY" 
		"modelRN.placeHolderList[1253]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateZ" 
		"modelRN.placeHolderList[1254]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateX" 
		"modelRN.placeHolderList[1255]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateY" 
		"modelRN.placeHolderList[1256]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateZ" 
		"modelRN.placeHolderList[1257]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleX" 
		"modelRN.placeHolderList[1258]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleY" 
		"modelRN.placeHolderList[1259]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleZ" 
		"modelRN.placeHolderList[1260]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateX" 
		"modelRN.placeHolderList[1261]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateY" 
		"modelRN.placeHolderList[1262]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateZ" 
		"modelRN.placeHolderList[1263]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateX" 
		"modelRN.placeHolderList[1264]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateY" 
		"modelRN.placeHolderList[1265]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateZ" 
		"modelRN.placeHolderList[1266]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleX" 
		"modelRN.placeHolderList[1267]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleY" 
		"modelRN.placeHolderList[1268]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleZ" 
		"modelRN.placeHolderList[1269]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateX" 
		"modelRN.placeHolderList[1270]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateY" 
		"modelRN.placeHolderList[1271]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateZ" 
		"modelRN.placeHolderList[1272]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateX" 
		"modelRN.placeHolderList[1273]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateY" 
		"modelRN.placeHolderList[1274]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateZ" 
		"modelRN.placeHolderList[1275]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleX" 
		"modelRN.placeHolderList[1276]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleY" 
		"modelRN.placeHolderList[1277]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleZ" 
		"modelRN.placeHolderList[1278]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateX" 
		"modelRN.placeHolderList[1279]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateY" 
		"modelRN.placeHolderList[1280]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateZ" 
		"modelRN.placeHolderList[1281]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateX" 
		"modelRN.placeHolderList[1282]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateY" 
		"modelRN.placeHolderList[1283]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateZ" 
		"modelRN.placeHolderList[1284]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleX" 
		"modelRN.placeHolderList[1285]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleY" 
		"modelRN.placeHolderList[1286]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleZ" 
		"modelRN.placeHolderList[1287]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateX" 
		"modelRN.placeHolderList[1288]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateY" 
		"modelRN.placeHolderList[1289]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateZ" 
		"modelRN.placeHolderList[1290]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateX" 
		"modelRN.placeHolderList[1291]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateY" 
		"modelRN.placeHolderList[1292]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateZ" 
		"modelRN.placeHolderList[1293]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleX" 
		"modelRN.placeHolderList[1294]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleY" 
		"modelRN.placeHolderList[1295]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleZ" 
		"modelRN.placeHolderList[1296]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateX" 
		"modelRN.placeHolderList[1297]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateY" 
		"modelRN.placeHolderList[1298]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateZ" 
		"modelRN.placeHolderList[1299]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateX" 
		"modelRN.placeHolderList[1300]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateY" 
		"modelRN.placeHolderList[1301]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateZ" 
		"modelRN.placeHolderList[1302]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleX" 
		"modelRN.placeHolderList[1303]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleY" 
		"modelRN.placeHolderList[1304]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleZ" 
		"modelRN.placeHolderList[1305]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.followMain" 
		"modelRN.placeHolderList[1306]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.followRoot" 
		"modelRN.placeHolderList[1307]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.swivel" 
		"modelRN.placeHolderList[1308]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rock" 
		"modelRN.placeHolderList[1309]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.roll" 
		"modelRN.placeHolderList[1310]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollStartAngle" 
		"modelRN.placeHolderList[1311]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollEndAngle" 
		"modelRN.placeHolderList[1312]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.stretchy" 
		"modelRN.placeHolderList[1313]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.antiPop" 
		"modelRN.placeHolderList[1314]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght1" 
		"modelRN.placeHolderList[1315]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght2" 
		"modelRN.placeHolderList[1316]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness1" 
		"modelRN.placeHolderList[1317]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness2" 
		"modelRN.placeHolderList[1318]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.volume" 
		"modelRN.placeHolderList[1319]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateY" 
		"modelRN.placeHolderList[1320]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateZ" 
		"modelRN.placeHolderList[1321]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateX" 
		"modelRN.placeHolderList[1322]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateX" 
		"modelRN.placeHolderList[1323]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateY" 
		"modelRN.placeHolderList[1324]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateZ" 
		"modelRN.placeHolderList[1325]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateX" 
		"modelRN.placeHolderList[1326]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateY" 
		"modelRN.placeHolderList[1327]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateZ" 
		"modelRN.placeHolderList[1328]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateX" 
		"modelRN.placeHolderList[1329]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateY" 
		"modelRN.placeHolderList[1330]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateZ" 
		"modelRN.placeHolderList[1331]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleX" 
		"modelRN.placeHolderList[1332]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleY" 
		"modelRN.placeHolderList[1333]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleZ" 
		"modelRN.placeHolderList[1334]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateX" 
		"modelRN.placeHolderList[1335]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateY" 
		"modelRN.placeHolderList[1336]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateZ" 
		"modelRN.placeHolderList[1337]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateX" 
		"modelRN.placeHolderList[1338]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateY" 
		"modelRN.placeHolderList[1339]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateZ" 
		"modelRN.placeHolderList[1340]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleX" 
		"modelRN.placeHolderList[1341]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleY" 
		"modelRN.placeHolderList[1342]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleZ" 
		"modelRN.placeHolderList[1343]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateX" 
		"modelRN.placeHolderList[1344]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateY" 
		"modelRN.placeHolderList[1345]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateZ" 
		"modelRN.placeHolderList[1346]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateX" 
		"modelRN.placeHolderList[1347]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateY" 
		"modelRN.placeHolderList[1348]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateZ" 
		"modelRN.placeHolderList[1349]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleX" 
		"modelRN.placeHolderList[1350]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleY" 
		"modelRN.placeHolderList[1351]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleZ" 
		"modelRN.placeHolderList[1352]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateX" 
		"modelRN.placeHolderList[1353]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateY" 
		"modelRN.placeHolderList[1354]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateZ" 
		"modelRN.placeHolderList[1355]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateX" 
		"modelRN.placeHolderList[1356]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateY" 
		"modelRN.placeHolderList[1357]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateZ" 
		"modelRN.placeHolderList[1358]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleX" 
		"modelRN.placeHolderList[1359]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleY" 
		"modelRN.placeHolderList[1360]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleZ" 
		"modelRN.placeHolderList[1361]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.parentInverseMatrix" 
		"modelRN.placeHolderList[1362]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateX" 
		"modelRN.placeHolderList[1363]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateY" 
		"modelRN.placeHolderList[1364]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateZ" 
		"modelRN.placeHolderList[1365]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateX" 
		"modelRN.placeHolderList[1366]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateY" 
		"modelRN.placeHolderList[1367]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateZ" 
		"modelRN.placeHolderList[1368]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateOrder" 
		"modelRN.placeHolderList[1369]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotatePivot" 
		"modelRN.placeHolderList[1370]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotatePivotTranslate" 
		"modelRN.placeHolderList[1371]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleX" 
		"modelRN.placeHolderList[1372]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleY" 
		"modelRN.placeHolderList[1373]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleZ" 
		"modelRN.placeHolderList[1374]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.followMain" 
		"modelRN.placeHolderList[1375]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.followRoot" 
		"modelRN.placeHolderList[1376]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.swivel" 
		"modelRN.placeHolderList[1377]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rock" 
		"modelRN.placeHolderList[1378]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.roll" 
		"modelRN.placeHolderList[1379]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollStartAngle" 
		"modelRN.placeHolderList[1380]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollEndAngle" 
		"modelRN.placeHolderList[1381]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.stretchy" 
		"modelRN.placeHolderList[1382]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.antiPop" 
		"modelRN.placeHolderList[1383]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght1" 
		"modelRN.placeHolderList[1384]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght2" 
		"modelRN.placeHolderList[1385]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness1" 
		"modelRN.placeHolderList[1386]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness2" 
		"modelRN.placeHolderList[1387]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.volume" 
		"modelRN.placeHolderList[1388]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateX" 
		"modelRN.placeHolderList[1389]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateY" 
		"modelRN.placeHolderList[1390]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateZ" 
		"modelRN.placeHolderList[1391]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateX" 
		"modelRN.placeHolderList[1392]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateY" 
		"modelRN.placeHolderList[1393]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateZ" 
		"modelRN.placeHolderList[1394]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateX" 
		"modelRN.placeHolderList[1395]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateY" 
		"modelRN.placeHolderList[1396]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateZ" 
		"modelRN.placeHolderList[1397]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateX" 
		"modelRN.placeHolderList[1398]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateY" 
		"modelRN.placeHolderList[1399]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateZ" 
		"modelRN.placeHolderList[1400]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleX" 
		"modelRN.placeHolderList[1401]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleY" 
		"modelRN.placeHolderList[1402]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleZ" 
		"modelRN.placeHolderList[1403]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateX" 
		"modelRN.placeHolderList[1404]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateY" 
		"modelRN.placeHolderList[1405]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateZ" 
		"modelRN.placeHolderList[1406]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateX" 
		"modelRN.placeHolderList[1407]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateY" 
		"modelRN.placeHolderList[1408]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateZ" 
		"modelRN.placeHolderList[1409]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleX" 
		"modelRN.placeHolderList[1410]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleY" 
		"modelRN.placeHolderList[1411]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleZ" 
		"modelRN.placeHolderList[1412]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateX" 
		"modelRN.placeHolderList[1413]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateY" 
		"modelRN.placeHolderList[1414]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateZ" 
		"modelRN.placeHolderList[1415]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateX" 
		"modelRN.placeHolderList[1416]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateY" 
		"modelRN.placeHolderList[1417]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateZ" 
		"modelRN.placeHolderList[1418]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleX" 
		"modelRN.placeHolderList[1419]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleY" 
		"modelRN.placeHolderList[1420]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleZ" 
		"modelRN.placeHolderList[1421]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateX" 
		"modelRN.placeHolderList[1422]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateY" 
		"modelRN.placeHolderList[1423]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateZ" 
		"modelRN.placeHolderList[1424]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateX" 
		"modelRN.placeHolderList[1425]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateY" 
		"modelRN.placeHolderList[1426]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateZ" 
		"modelRN.placeHolderList[1427]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleX" 
		"modelRN.placeHolderList[1428]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleY" 
		"modelRN.placeHolderList[1429]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleZ" 
		"modelRN.placeHolderList[1430]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateX" 
		"modelRN.placeHolderList[1431]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateY" 
		"modelRN.placeHolderList[1432]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateZ" 
		"modelRN.placeHolderList[1433]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.follow" 
		"modelRN.placeHolderList[1434]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.lock" 
		"modelRN.placeHolderList[1435]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateX" 
		"modelRN.placeHolderList[1436]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateY" 
		"modelRN.placeHolderList[1437]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateZ" 
		"modelRN.placeHolderList[1438]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.follow" 
		"modelRN.placeHolderList[1439]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.lock" 
		"modelRN.placeHolderList[1440]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateX" 
		"modelRN.placeHolderList[1441]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateY" 
		"modelRN.placeHolderList[1442]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateZ" 
		"modelRN.placeHolderList[1443]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.follow" 
		"modelRN.placeHolderList[1444]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.lock" 
		"modelRN.placeHolderList[1445]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKIKBlend" 
		"modelRN.placeHolderList[1446]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.IKVis" 
		"modelRN.placeHolderList[1447]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKVis" 
		"modelRN.placeHolderList[1448]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKIKBlend" 
		"modelRN.placeHolderList[1449]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.IKVis" 
		"modelRN.placeHolderList[1450]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKVis" 
		"modelRN.placeHolderList[1451]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.FKIKBlend" 
		"modelRN.placeHolderList[1452]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.IKVis" 
		"modelRN.placeHolderList[1453]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.FKVis" 
		"modelRN.placeHolderList[1454]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKIKBlend" 
		"modelRN.placeHolderList[1455]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.IKVis" 
		"modelRN.placeHolderList[1456]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKVis" 
		"modelRN.placeHolderList[1457]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKIKBlend" 
		"modelRN.placeHolderList[1458]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.IKVis" 
		"modelRN.placeHolderList[1459]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKVis" 
		"modelRN.placeHolderList[1460]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateX" 
		"modelRN.placeHolderList[1461]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateY" 
		"modelRN.placeHolderList[1462]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateZ" 
		"modelRN.placeHolderList[1463]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.visibility" 
		"modelRN.placeHolderList[1464]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateX" 
		"modelRN.placeHolderList[1465]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateY" 
		"modelRN.placeHolderList[1466]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateZ" 
		"modelRN.placeHolderList[1467]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.spread" 
		"modelRN.placeHolderList[1468]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.indexCurl" 
		"modelRN.placeHolderList[1469]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.middleCurl" 
		"modelRN.placeHolderList[1470]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.ringCurl" 
		"modelRN.placeHolderList[1471]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.pinkyCurl" 
		"modelRN.placeHolderList[1472]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.thumbCurl" 
		"modelRN.placeHolderList[1473]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.translate" 
		"modelRN.placeHolderList[1474]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotate" 
		"modelRN.placeHolderList[1475]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.scale" 
		"modelRN.placeHolderList[1476]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.spread" 
		"modelRN.placeHolderList[1477]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.indexCurl" 
		"modelRN.placeHolderList[1478]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.middleCurl" 
		"modelRN.placeHolderList[1479]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.ringCurl" 
		"modelRN.placeHolderList[1480]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.pinkyCurl" 
		"modelRN.placeHolderList[1481]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.thumbCurl" 
		"modelRN.placeHolderList[1482]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotatePivot" 
		"modelRN.placeHolderList[1483]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotatePivotTranslate" 
		"modelRN.placeHolderList[1484]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotateOrder" 
		"modelRN.placeHolderList[1485]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.parentMatrix" 
		"modelRN.placeHolderList[1486]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "5B09996F-4BD1-A2E7-6BA8-368EC8936F9D";
	setAttr ".version" -type "string" "5.5.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "01506C29-4A5E-1CAF-8BD7-AEB40D5CDB2F";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "5DD58B0B-421B-86FD-01A4-F78C0579063A";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "23402647-4FEC-0693-D246-709D55A86929";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "DE1AEFC8-4E59-8994-AC07-89A7FF409FD2";
createNode lambert -n "lambert2";
	rename -uid "7C9E1360-4A26-3F45-35DE-32B828BB19FB";
	setAttr ".c" -type "float3" 0.13 0.6631 0.3761 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "51416D74-458F-3E8F-97B6-4D8B94DCA243";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "8F5C7374-4D2D-A404-7EE0-9787608E6D62";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "73AFD763-4847-C6B9-5772-A5BEF2C60A62";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n"
		+ "            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 680\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 2\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n"
		+ "            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 701\n            -height 443\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|side1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 642\n            -height 435\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -camera \\\"|front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 680\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -camera \\\"|front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 680\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A9338E1B-4C84-4B98-5DE6-CC84BA48B27F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 35 -ast 0 -aet 36 ";
	setAttr ".st" 6;
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "F90C0404-4649-03F8-41B8-B0AFD8734194";
	setAttr ".version" 5;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "F762165A-4E79-6B13-1417-0AB9603D52B5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -9.6311175442449422 11 -3.991884762285105
		 16 -9.6311175442449422 21 -6.6637338705733633 28 -3.991884762285105 36 -9.6311175442449422;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 1 1;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 1 1;
	setAttr -s 6 ".kix[0:5]"  0.38342961511660884 0.36666666666666664 
		0.16666666666666669 0.16666666666666663 0.31168258367779234 0.33776596694563832;
	setAttr -s 6 ".kiy[0:5]"  -0.075135709846568421 0 0 2.3496803258165984 
		-3.1165818037385962 0.13538793101906776;
	setAttr -s 6 ".kox[0:5]"  0.383429645995299 0.16666666666666669 0.16666666666666663 
		0.23333333333333339 0.20516431744520858 0.2712342349977247;
	setAttr -s 6 ".koy[0:5]"  -0.075135746039450169 0 0 3.2895524561432392 
		-2.0514824073761702 0.10871982732610706;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "71BB3A6F-4409-6D0A-FA2A-84A86DC60BF5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 16 0 21 0 28 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "56DA1BE7-4D97-25FA-7471-01B29E8A7DEB";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  0 1 11 1 16 1 21 1 28 1 36 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "6C3215DA-471B-D468-9681-B6BC578624B6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -4.4098159509202457 11 -1.9738089188664263
		 16 -4.4098159509202457 21 -4.4098159509202457 28 -1.8849156758571373 36 -4.4098159509202457;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "B56B1FCE-4139-7E8F-7C51-84B94404C44F";
	setAttr ".tan" 1;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 -3.9440068546379967 28 4.5867041335695244
		 36 0;
	setAttr -s 4 ".kix[0:3]"  0.37229192698110997 0.32705374141331051 
		0.34631952606141569 0.21298619272808228;
	setAttr -s 4 ".kiy[0:3]"  -0.10078289080824049 0.13767058721878131 
		-0.064788995543494821 -0.071987772826105356;
	setAttr -s 4 ".kox[0:3]"  0.37229191151758034 0.17814662518511601 
		0.25204086564487083 0.21298629723270207;
	setAttr -s 4 ".koy[0:3]"  -0.10078288160730153 0.074989348992321597 
		-0.047151468334253495 -0.071987761544621845;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "A5FA381D-4FD9-394D-4CA6-8D8932D07585";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 16 0 21 0 28 -0.1512712359033925
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSpine2_M_translateX";
	rename -uid "C7DAEC37-4383-4468-0F19-03B8BFF3CCF6";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 -0.28191478268425785 11 1.2341096856811242
		 16 -1.0686166867409645 22 -0.17317859809449587 29 1.2362894019515935 36 -0.28191478268425785;
	setAttr -s 6 ".kit[5]"  18;
	setAttr -s 6 ".kot[5]"  18;
	setAttr -s 6 ".kix[0:5]"  0.61113414442393377 0.44621750717492664 
		0.16666667210654826 0.14640866841547412 0.28703895496825382 0.23333333333333328;
	setAttr -s 6 ".kiy[0:5]"  -1.1914076883604762e-07 1.8915449863569713 
		-0.48979247389311731 1.0551157172465142 1.2388869734698496 0;
	setAttr -s 6 ".kox[0:5]"  0.61113412628571195 0.33983111723015708 
		0.16666666666666663 0.17221646842857208 0.26953657748053594 0.23333333333333328;
	setAttr -s 6 ".koy[0:5]"  0 1.4405662482207551 -0.48979252439505649 
		1.2411032785267631 1.1633444791462488 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSpine2_M_translateY";
	rename -uid "E0B9C5D9-4CDA-A428-79AC-A8832A370459";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 16 0 22 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSpine2_M_translateZ";
	rename -uid "5D7D99BD-472B-5BA3-9E99-1EAD41DEFC76";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 16 0 22 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSpine2_M_rotateX";
	rename -uid "223A787F-4A94-32EA-0A04-F7999248604B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 22.404871970551795 11 -15.593916631457173
		 16 -22.684910559639722 22 -10.034537402766363 29 13.507040267619695 36 22.404871970551795;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSpine2_M_rotateY";
	rename -uid "6C7D241E-47CE-AEBE-C03F-AC9E7F612D40";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1.5562840953843764 11 -1.4731073964526487
		 16 -3.4540447185658882 22 -1.271333349485146 29 -0.48950066530428477 36 1.5562840953843764;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSpine2_M_rotateZ";
	rename -uid "2796CAE1-4DB9-7630-710C-BDBDB224D398";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 4.9616292039576031 11 3.9792906850494729
		 16 3.7932858735818886 22 4.162524160952354 29 4.8247582551337969 36 4.9616292039576031;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_scaleX";
	rename -uid "119BD545-4924-8F89-829A-73B91E919F2E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 11 1 16 1 22 1 29 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_scaleY";
	rename -uid "88726E7D-4D94-B46C-609A-5EA5CAB4D52F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 11 1 16 1 22 1 29 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_scaleZ";
	rename -uid "0B66BF32-465F-69C1-EBBB-96A92FCB17FA";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 11 1 16 1 22 1 29 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "18B80F5D-4CCA-2343-0CD8-C1A6EE5A4DE8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "660894DD-4735-DA7B-0C54-EBA18BC62A38";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "555E4936-49E4-87D5-772D-80929F2E6216";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "DD4AA9BF-4260-B956-8D09-7AB8A3E86388";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -10.912 13 -10.912 26 -10.912 36 -10.912;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "98194E8D-41C6-D2AB-F6C3-548B0CF2BE1C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -8.409445728379696 13 -8.8254330544467958
		 26 -8.409445728379696 36 -8.409445728379696;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_L_rotateZ";
	rename -uid "ECA00476-4DA9-0114-5D91-B5A06A39E8BE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 81.59 13 81.59 18 81.59 26 81.59 31 81.59
		 36 81.59;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "40FFC76B-4EEB-A07B-8263-87AEE3E182E0";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 13 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "3EE8AE39-4034-CD78-6155-CB860558E367";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 13 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "82D696FB-447A-4A3A-2CAA-23A6C7678049";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 13 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKNeck_M_rotateX";
	rename -uid "AB47B1AA-4145-B01B-4F02-F5BCD64E3A0C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -2.4834768620942187 16 -1.4857700366353324
		 28 -3.5665975468756588 36 -2.4834768620942187;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKNeck_M_rotateY";
	rename -uid "8996983C-48A7-4E0B-F77F-2498C2D47015";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0.40577473750340171 16 2.1514589655169845
		 28 0.22450388158813719 36 0.40577473750340171;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKNeck_M_translateX";
	rename -uid "BC61D491-45F0-61C1-CF66-F29F81A780D5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  -2.3384353741496598e-06 0 28 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKNeck_M_translateY";
	rename -uid "7CB0C36F-4D12-7C63-608F-71B3BFBF1EFD";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  -2.3384353741496598e-06 0 28 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKNeck_M_translateZ";
	rename -uid "DB332711-40F6-BDC5-7EDB-0399288909EA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  -2.3384353741496598e-06 0 28 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKNeck_M_scaleX";
	rename -uid "6D6DDF5A-4579-4628-A780-D8912DA56CB9";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  -2.3384353741496598e-06 1 28 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKNeck_M_scaleY";
	rename -uid "5C297E0B-4747-77F6-E87C-5B81FAFF6D4E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  -2.3384353741496598e-06 1 28 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKNeck_M_scaleZ";
	rename -uid "F2D35AD5-4EE8-2BB7-3B04-21AB234AB13C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  -2.3384353741496598e-06 1 28 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "8EAEC4D2-4A52-5879-623B-3892198E8F93";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "0C3339CE-4DCD-64F7-9DBB-A4A6F41FEF8A";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "A1CFE10B-46A1-94C4-25D9-E0978BC9409D";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 17.965511463229216 7 28.719153733740097
		 13 -11.434084702441575 15 0 17 0.34591928057583637 20 0 27 0 31 0 36 0;
	setAttr -s 10 ".kit[0:9]"  1 18 18 18 1 18 18 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 18 18 18 1 18 18 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  0.24998653188025849 0.1 0.13333333333333333 
		0.2 0.17319861497688799 0.066666666666666652 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.16666666666666652;
	setAttr -s 10 ".kiy[0:9]"  0.87403670121293164 0.21481876758865182 
		0 0 0.056185942701122323 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  0.24998656491128107 0.13333333333333333 
		0.2 0.066666666666666652 0.14555715247988704 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.16666666666666652 0.16666666666666652;
	setAttr -s 10 ".koy[0:9]"  0.87403646763414145 0.2864250234515357 
		0 0 0.047218997497111559 0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "31590F2E-4951-F74B-FB9B-C4A09E9D17EA";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  0 -48.194156545295471 3 -37.206915732661585
		 7 -20.240167555667483 15 35.783314813836739 17 31.286937015274674 20 24.650379320882355
		 27 -8.4939115350139609 31 -30.670015273831648 36 -48.194156545295471;
	setAttr -s 9 ".kit[0:8]"  1 18 1 18 18 2 2 2 
		2;
	setAttr -s 9 ".kot[0:8]"  1 18 1 18 2 18 2 2 
		2;
	setAttr -s 9 ".ktl[4:8]" no no no no no;
	setAttr -s 9 ".kix[0:8]"  0.24514202670792926 0.1 0.27946089527880152 
		0.26666666666666666 0.066666666666666652 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.16666666666666652;
	setAttr -s 9 ".kiy[0:8]"  24.441202789133644 11.980280995554851 36.369347702987284 
		0 -4.4531741971817542 -6.6365576943923195 -33.144290855896315 -22.176103738817687 
		-17.524141271463822;
	setAttr -s 9 ".kox[0:8]"  0.24514198902373513 0.13333333333333333 
		0.31852478428488518 0.066666666666666652 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.16666666666666652 1;
	setAttr -s 9 ".koy[0:8]"  24.441204071044922 15.973707994073134 41.453176251536007 
		0 -6.6365576943923195 -27.846593985202052 -22.176103738817687 -17.524141271463822 
		0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "B184A6D6-4D5E-ECC2-EACE-F98510243527";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 1.2629535709597626 3 10.268068592456768
		 7 20.15891011862514 13 8.748444355127873 15 0.98392006928423115 17 0 20 0 27 0 31 0.41335044068234839
		 36 1.2629535709597626;
	setAttr -s 10 ".kit[0:9]"  1 18 1 18 18 18 18 18 
		18 1;
	setAttr -s 10 ".kot[0:9]"  1 18 1 18 18 18 18 18 
		18 1;
	setAttr -s 10 ".kix[0:9]"  0.094212607083062241 0.1 0.2410212603242447 
		0.2 0.066666666666666652 0.066666666666666652 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.19132860195823009;
	setAttr -s 10 ".kiy[0:9]"  10.270871747670897 8.0982670918565898 3.5259287059307098 
		-14.381242537005683 -2.9517602078526934 0 0 0 0.56131269820433938 0.47623832523822784;
	setAttr -s 10 ".kox[0:9]"  0.09421260695283612 0.13333333333333333 
		0.21342652383647279 0.066666666666666652 0.066666666666666652 0.099999999999999978 
		0.23333333333333339 0.13333333333333341 0.16666666666666652 0.19132853858302257;
	setAttr -s 10 ".koy[0:9]"  10.270868204534054 10.797689455808786 3.1222418373983238 
		-4.7937475123352264 -2.9517602078526934 0 0 0 0.70164087275542308 0.47624059955278603;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "24FA004F-44F1-4CB5-2870-309B92FD0C7E";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 10 3 10 7 10 13 10 15 10 17 10 20 10 27 10
		 31 10 36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "2DDC66FB-45FB-7FE2-064A-F18680992CC4";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "360CEF64-4ED3-CBCF-1D2E-19B694B66337";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "22ED7A01-4ABD-6F94-7CD4-619031121AD2";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 7 1 13 1 15 1 17 1 20 1 27 1 31 1
		 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "72DD5407-4F27-3462-5245-36A02A1E965C";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 7 1 13 1 15 1 17 1 20 1 27 1 31 1
		 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "4438FC38-44FA-8F37-7AA1-09A20F2A03BB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "3D8D3AAD-4BE2-6FA4-0E85-FCA2CC62DD3E";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "B8F5A36D-486A-66B5-3181-898D6E1BCD13";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 60 3 60 7 60 13 60 15 60 17 60 20 60 27 60
		 31 60 36 60;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "EBAE902B-4CF1-B1A0-C458-C3AC7C57AB30";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 30 3 30 7 30 13 30 15 30 17 30 20 30 27 30
		 31 30 36 30;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "E88C350F-4E36-F61D-6099-1EA4668A67C0";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 34 3 16.214968929693143 7 0 13 0 15 -17.4
		 17 -10.21843435113211 20 0 27 14.756621413436957 31 25.404751852826763 36 34;
	setAttr -s 10 ".kit[0:9]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  0.18609875944962706 0.1 0.13333333333333333 
		0.2 0.066666666666666652 0.066666666666666652 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.16666666666666652;
	setAttr -s 10 ".kiy[0:9]"  -22.439554809807873 -14.571428571428573 
		0 0 0 6.96 7.4925167293707178 16.166660269980664 8.5526127051391381 0;
	setAttr -s 10 ".kox[0:9]"  0.18609871057172617 0.13333333333333333 
		0.2 0.066666666666666652 0.066666666666666652 0.099999999999999978 0.23333333333333339 
		0.13333333333333341 0.16666666666666652 0.16666666666666652;
	setAttr -s 10 ".koy[0:9]"  -22.439551949501038 -19.428571428571431 
		0 0 0 10.44 17.48253903519835 9.2380915828460974 10.690765881423907 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "F3688DC8-4D68-F89B-125A-1A9B54C47CCB";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "554E9D3A-4B49-3E7F-0296-449B4063BD73";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_followRoot";
	rename -uid "9D391E75-4186-2232-0317-2BBC57E6F21B";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 7 0 13 0 15 0 17 0 20 0 27 0 31 0
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_followMain";
	rename -uid "8FFD2329-49AB-11B5-6B7C-62ADD333E938";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 10 3 10 7 10 13 10 15 10 17 10 20 10 27 10
		 31 10 36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "A2FF63CE-4CCD-377A-2660-7180069DC703";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 7 1 13 1 15 1 17 1 20 1 27 1 31 1
		 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "8D3FFA0F-4975-C8CD-17D0-2994022E0486";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 7 1 13 1 15 1 17 1 20 1 27 1 31 1
		 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "278BF91A-4E07-1CA8-A3E6-D19C77804A66";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 7 1 13 1 15 1 17 1 20 1 27 1 31 1
		 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_R_rotateZ";
	rename -uid "0C2BC166-48DD-35E9-B81B-71B54B3912C3";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1.0764598445159828 12 1.0764598445159828
		 14 1.0764598445159828 18 1.0764598445159828 30 1.0764598445159828 32 1.0764598445159828
		 36 1.0764598445159828;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "8C3E6510-43E1-6ACA-D490-60B59EFFE382";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 -3.030068104158214 16 -3.030068104158214
		 23 4.378388284065279 29 -2.7866448267656594 31 -4.0533015662045031 33 -3.9099160233000085
		 36 -3.030068104158214;
	setAttr -s 7 ".kit[1:6]"  1 1 1 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 1 1 18 18 18;
	setAttr -s 7 ".ktl[1:6]" no yes yes yes yes yes;
	setAttr -s 7 ".kix[1:6]"  0.53333333333333333 0.50259398081671214 
		0.15112254660645807 0.066666666666666763 0.066666666666666652 0.099999999999999867;
	setAttr -s 7 ".kiy[1:6]"  0 4.7459972507359964 -8.1417200141196133 
		0 0.4092933848185159 0;
	setAttr -s 7 ".kox[1:6]"  0.4556354923484226 0.47401009062305088 
		0.11514228777325826 0.066666666666666652 0.099999999999999867 0.099999999999999867;
	setAttr -s 7 ".koy[1:6]"  5.983505018055439 4.4760790430009365 -6.2032827535194617 
		0 0.61394007722777311 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "B096980A-4FBB-32E0-8237-D9B0BC73D65A";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  0 0.29902639003369808 7 0 11 1.5146811635768933
		 16 1.7988809998712796 23 18.973755758921957 29 8.5748010108954045 31 1.0977853462941169
		 33 0.29232943006782763 36 0.29902639003369808;
	setAttr -s 9 ".kit[4:8]"  1 1 18 18 18;
	setAttr -s 9 ".kot[4:8]"  1 1 18 18 18;
	setAttr -s 9 ".kix[4:8]"  0.23016804551619402 0.13434567892513519 
		0.066666666666666763 0.066666666666666652 0.099999999999999867;
	setAttr -s 9 ".kiy[4:8]"  2.6326372156155626 -14.252842267791879 
		-2.4163677486788719 0 0;
	setAttr -s 9 ".kox[4:8]"  0.19999999999999996 0.046985573849330442 
		0.066666666666666652 0.099999999999999867 0.099999999999999867;
	setAttr -s 9 ".koy[4:8]"  2.2875782176852226 -4.984737497899931 -2.4163677486788679 
		0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "E865D9DF-42E1-C4E0-FAF8-FC95D357378C";
	setAttr ".tan" 2;
	setAttr -s 7 ".ktv[0:6]"  0 23.671331633953791 7 -8.2396824925757777
		 16 -49.240744281101883 23 -21.163414413404684 31 30.071496198860984 33 31.270960085826427
		 36 23.671331633953791;
	setAttr -s 7 ".kit[3:6]"  18 18 2 2;
	setAttr -s 7 ".kot[2:6]"  18 18 2 2 2;
	setAttr -s 7 ".ktl[0:6]" no no no yes no no no;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "A681D815-4769-4C4C-DA17-CC8E9BA9D199";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 30.246500996452696 29 -10.614381124574773
		 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "2FD97443-4486-309D-61FC-5D8C6D4BC782";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -1.2840517720678764 7 -0.76177876126097155
		 16 0 23 0 29 -4.9527711208332565 31 -4.9527711208332565 33 -4.9527711208332565 36 -1.2840517720678764;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "70A0A097-45FB-EC4B-40C2-0BAB55F25635";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 4.2446573073883114 29 0
		 31 0 33 0 36 0;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  0.49421688081142029 0.19999999999999996 
		0.066666666666666763 0.066666666666666652 0.099999999999999867;
	setAttr -s 8 ".kiy[3:7]"  0.00092426968323389093 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  0.46091506145894523 0.066666666666666763 
		0.066666666666666652 0.099999999999999867 0.099999999999999867;
	setAttr -s 8 ".koy[3:7]"  0.00086198994540609419 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "02686336-46C7-18DA-2BA8-D78AA64432A8";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 16 1 23 1 29 1 31 1 33 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "56B05A01-4A79-6AB2-6029-0BABCF078808";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 16 1 23 1 29 1 31 1 33 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "B31DC1E2-4469-B5AB-509F-86BD9D2B738C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 16 1 23 1 29 1 31 1 33 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_followMain";
	rename -uid "6E08FFDA-4A1F-BADC-86DD-C3AF1EA0A500";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 10 7 10 16 10 23 10 29 10 31 10 33 10
		 36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_followRoot";
	rename -uid "564893F2-46B0-389B-D632-B380B11C4ABF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "CE60FB88-4D3A-0F0D-B936-3DBC3F39E4DD";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "1EB9694F-46B8-72A3-49E7-A99BF671ED61";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 11.600000000000001 11 24.559670781893001
		 16 34.1 23 0 29 0 31 -17.700000000000003 33 -8 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "3F11880E-4F13-1ADB-5270-04967246504B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 30 7 30 16 30 23 30 29 30 31 30 33 30
		 36 30;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "842EB2A9-4B6A-0F18-19A8-1F982F0FE0D7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 60 7 60 16 60 23 60 29 60 31 60 33 60
		 36 60;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "0CC9D417-4690-C262-B048-21BCE40BDF35";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "8A785EF1-4FB9-0613-D201-FCA624CD0728";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "4A183C24-429D-B6B0-D63B-0D813C89D5D6";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "DB3F89E9-4D10-8556-084D-7D87DD1F8902";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 16 1 23 1 29 1 31 1 33 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "53BAA700-4017-7B07-F82B-6DBF3313939A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 7 1 16 1 23 1 29 1 31 1 33 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "13C90424-4CBE-6480-DF9D-F99399B0DB70";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "120D542D-483F-12AA-3876-F28947CE3146";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 16 0 23 0 29 0 31 0 33 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "C34D4287-42E0-2718-FA52-4D813137BB93";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 10 7 10 16 10 23 10 29 10 31 10 33 10
		 36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "FE050A1B-4A22-7DB7-0701-60BC8B3727C1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 11.41486424145751 7 3.2694654538024297
		 13 7.072166795200606 15 10.117420706268362 17 11.41486424145751 36 11.41486424145751;
	setAttr -s 6 ".kit[4:5]"  3 1;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 3 1;
	setAttr -s 6 ".ktl[0:5]" no yes yes yes no no;
	setAttr -s 6 ".kix[5]"  0.099999999999999978;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  0.58556355390076842 0.2 0.066666666666666652 
		0.066666666666666652 0.6333333333333333 0.099999999999999978;
	setAttr -s 6 ".koy[0:5]"  0 0 1.7119888131164827 2.1713487231284518 
		0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKNeck_M_rotateZ";
	rename -uid "7616ACF8-46CA-3F1A-2812-3AAB57501509";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  -2.3384353741496598e-06 0 0 -4.5668480067116697
		 16 -4.5921509589982632 28 -4.6254044572957991 36 -4.5668480067116697;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode reference -n "GuardBat_RigRN";
	rename -uid "5BCAA881-4902-C40B-7A66-A496A9B457E4";
	setAttr ".fn[0]" -type "string" "P:/Funked Punk/01_Assets/02_CharaProps/02_pGuardBat/02_Rig/GuardBat_Rig.ma";
	setAttr -s 109 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"GuardBat_RigRN"
		"GuardBat_RigRN" 0
		"GuardBat_RigRN" 113
		0 "|GuardBat_RigRNfosterParent1|Handle_ctr_parentConstraint2" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr" 
		"-s -r "
		2 "|GuardBat_Rig:Group" "visibility" " 1"
		2 "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M" 
		"visibility" " -k 0 -cb 1 0"
		2 "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr" 
		"visibility" " 1"
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.translateZ" 
		"GuardBat_RigRN.placeHolderList[1]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.translateY" 
		"GuardBat_RigRN.placeHolderList[2]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.translateX" 
		"GuardBat_RigRN.placeHolderList[3]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.rotateX" 
		"GuardBat_RigRN.placeHolderList[4]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.rotateY" 
		"GuardBat_RigRN.placeHolderList[5]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.rotateZ" 
		"GuardBat_RigRN.placeHolderList[6]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.scaleX" 
		"GuardBat_RigRN.placeHolderList[7]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.scaleY" 
		"GuardBat_RigRN.placeHolderList[8]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.scaleZ" 
		"GuardBat_RigRN.placeHolderList[9]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:MainSystem|GuardBat_Rig:Main.visibility" 
		"GuardBat_RigRN.placeHolderList[10]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[11]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[12]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[13]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.translateX" 
		"GuardBat_RigRN.placeHolderList[14]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.translateY" 
		"GuardBat_RigRN.placeHolderList[15]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[16]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[17]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[18]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[19]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[20]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[21]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[22]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.translateX" 
		"GuardBat_RigRN.placeHolderList[23]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.translateY" 
		"GuardBat_RigRN.placeHolderList[24]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[25]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[26]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[27]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[28]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[29]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[30]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[31]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.translateX" 
		"GuardBat_RigRN.placeHolderList[32]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.translateY" 
		"GuardBat_RigRN.placeHolderList[33]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[34]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[35]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[36]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[37]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[38]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[39]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[40]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.translateX" 
		"GuardBat_RigRN.placeHolderList[41]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.translateY" 
		"GuardBat_RigRN.placeHolderList[42]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[43]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[44]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[45]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[46]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[47]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[48]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[49]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.translateX" 
		"GuardBat_RigRN.placeHolderList[50]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.translateY" 
		"GuardBat_RigRN.placeHolderList[51]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[52]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[53]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[54]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[55]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[56]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[57]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[58]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.translateX" 
		"GuardBat_RigRN.placeHolderList[59]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.translateY" 
		"GuardBat_RigRN.placeHolderList[60]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[61]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[62]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[63]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[64]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[65]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[66]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[67]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.translateX" 
		"GuardBat_RigRN.placeHolderList[68]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.translateY" 
		"GuardBat_RigRN.placeHolderList[69]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[70]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[71]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[72]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[73]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.scaleX" 
		"GuardBat_RigRN.placeHolderList[74]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.scaleY" 
		"GuardBat_RigRN.placeHolderList[75]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.scaleZ" 
		"GuardBat_RigRN.placeHolderList[76]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.translateX" 
		"GuardBat_RigRN.placeHolderList[77]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.translateY" 
		"GuardBat_RigRN.placeHolderList[78]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.translateZ" 
		"GuardBat_RigRN.placeHolderList[79]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.rotateX" 
		"GuardBat_RigRN.placeHolderList[80]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.rotateY" 
		"GuardBat_RigRN.placeHolderList[81]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:FKSystem|GuardBat_Rig:FKOffsetRoot_M|GuardBat_Rig:FKExtraRoot_M|GuardBat_Rig:FKRoot_M|GuardBat_Rig:FKXRoot_M|GuardBat_Rig:FKOffsetjoint2_M|GuardBat_Rig:FKExtrajoint2_M|GuardBat_Rig:FKjoint2_M|GuardBat_Rig:FKXjoint2_M|GuardBat_Rig:FKOffsetjoint3_M|GuardBat_Rig:FKExtrajoint3_M|GuardBat_Rig:FKjoint3_M|GuardBat_Rig:FKXjoint3_M|GuardBat_Rig:FKOffsetjoint4_M|GuardBat_Rig:FKExtrajoint4_M|GuardBat_Rig:FKjoint4_M|GuardBat_Rig:FKXjoint4_M|GuardBat_Rig:FKOffsetjoint5_M|GuardBat_Rig:FKExtrajoint5_M|GuardBat_Rig:FKjoint5_M|GuardBat_Rig:FKXjoint5_M|GuardBat_Rig:FKOffsetjoint6_M|GuardBat_Rig:FKExtrajoint6_M|GuardBat_Rig:FKjoint6_M|GuardBat_Rig:FKXjoint6_M|GuardBat_Rig:FKOffsetjoint7_M|GuardBat_Rig:FKExtrajoint7_M|GuardBat_Rig:FKjoint7_M|GuardBat_Rig:FKXjoint7_M|GuardBat_Rig:FKOffsetjoint8_M|GuardBat_Rig:FKExtrajoint8_M|GuardBat_Rig:FKjoint8_M.rotateZ" 
		"GuardBat_RigRN.placeHolderList[82]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.scale" 
		"GuardBat_RigRN.placeHolderList[83]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.translate" 
		"GuardBat_RigRN.placeHolderList[84]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.translateX" 
		"GuardBat_RigRN.placeHolderList[85]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.translateY" 
		"GuardBat_RigRN.placeHolderList[86]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.translateZ" 
		"GuardBat_RigRN.placeHolderList[87]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotate" 
		"GuardBat_RigRN.placeHolderList[88]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotateX" 
		"GuardBat_RigRN.placeHolderList[89]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotateY" 
		"GuardBat_RigRN.placeHolderList[90]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotateZ" 
		"GuardBat_RigRN.placeHolderList[91]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotateOrder" 
		"GuardBat_RigRN.placeHolderList[92]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotateOrder" 
		"GuardBat_RigRN.placeHolderList[93]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.parentInverseMatrix" 
		"GuardBat_RigRN.placeHolderList[94]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotatePivot" 
		"GuardBat_RigRN.placeHolderList[95]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotatePivot" 
		"GuardBat_RigRN.placeHolderList[96]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotatePivotTranslate" 
		"GuardBat_RigRN.placeHolderList[97]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.rotatePivotTranslate" 
		"GuardBat_RigRN.placeHolderList[98]" ""
		5 3 "GuardBat_RigRN" "|GuardBat_Rig:Group|GuardBat_Rig:MotionSystem|GuardBat_Rig:RootSystem|GuardBat_Rig:RootFollowMain|GuardBat_Rig:RootOffsetX_M|GuardBat_Rig:RootExtraX_M|GuardBat_Rig:Handle_ctr.parentMatrix" 
		"GuardBat_RigRN.placeHolderList[99]" ""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.rotateX" "GuardBat_RigRN.placeHolderList[100]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.rotateY" "GuardBat_RigRN.placeHolderList[101]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.rotateZ" "GuardBat_RigRN.placeHolderList[102]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.visibility" "GuardBat_RigRN.placeHolderList[103]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.translateX" "GuardBat_RigRN.placeHolderList[104]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.translateY" "GuardBat_RigRN.placeHolderList[105]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.translateZ" "GuardBat_RigRN.placeHolderList[106]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.scaleX" "GuardBat_RigRN.placeHolderList[107]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.scaleY" "GuardBat_RigRN.placeHolderList[108]" 
		""
		5 4 "GuardBat_RigRN" "|GuardBat_Rig:Bat:front1.scaleZ" "GuardBat_RigRN.placeHolderList[109]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "FKScapula_R_translateX";
	rename -uid "60FE464C-4C7F-C5AC-B777-1D92B960EEEC";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_R_translateY";
	rename -uid "6930441F-463D-1C0D-0243-6A861A1345A6";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_R_translateZ";
	rename -uid "F1312DB0-49CD-C0B4-7434-2484D45B1560";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_R_rotateX";
	rename -uid "075EBC48-4D5C-D693-4389-FBA91FCA5395";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_R_rotateY";
	rename -uid "118EB6AB-4E2F-3902-D147-77BE785D88BE";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 -3.7225888017833251 12 -8.6400002228778163
		 14 -8.7850748534858418 18 -6.2614560536160671 30 -8.6400002228778163 32 -8.7850748534858418
		 36 -3.7225888017833251;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_scaleX";
	rename -uid "A5AF1457-4DEB-EA14-3E67-5DAB6105E7CA";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 14 1 18 1 30 1 32 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_scaleY";
	rename -uid "CE37DBF2-4455-9B38-1722-019253519045";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 14 1 18 1 30 1 32 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_scaleZ";
	rename -uid "2EC73DB4-4EBC-B026-8212-A0B87C030E54";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 14 1 18 1 30 1 32 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_R_translateX";
	rename -uid "98537DBE-404B-E701-7355-6EB98737412E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_R_translateY";
	rename -uid "5DE2E924-4D28-F4D7-8216-84B1C9C21F7E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_R_translateZ";
	rename -uid "BB8501EB-46F2-D29A-A079-AAB98086F7A2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_R_rotateX";
	rename -uid "9137581F-4014-F60B-DB57-8699C4B6097A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 11.792008193929867 36 11.792008193929867;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_R_rotateY";
	rename -uid "DD54201D-4DCF-CAB8-1D4C-9F878605EE83";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 38.909749893388302 36 38.909749893388302;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_R_rotateZ";
	rename -uid "8425BE9D-437A-70E8-A36B-D09EE010E241";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 110.16861112289369 36 110.16861112289369;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_R_scaleX";
	rename -uid "43C994A9-4211-1963-9A9F-C98F91515B6A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_R_scaleY";
	rename -uid "19E96FED-41B9-2D09-8512-2CB93CD530E6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_R_scaleZ";
	rename -uid "7997C630-4E42-520F-4B62-B880CBC132D9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "ADABA6EF-468A-8B76-CAC8-E18CC94ACE2D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 16 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "7700B895-4564-40E2-C155-5AAF81E89A53";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 16 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "89B4D6F7-4071-12E2-2AC7-559E8C65BDE2";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 16 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "DE8BCDE0-47DA-EBA6-22E4-DE8D11BE379C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 -20.879033346656268 11 13.248350672260957
		 16 20.997736972410841 29 -11.939665246091769 36 -20.879033346656268;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "5736EC22-4CC3-857B-D467-F78DE3F0534C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 9.7380598248623844 11 -6.2973554742709421
		 16 -9.7899095269078966 29 5.6890650758236054 36 9.7380598248623844;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "6B1089E0-4434-1941-A108-F0A8601C294C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 -1.7983923794175503 11 -0.73204875059908681
		 16 -1.8185252904903297 29 -0.59539964960330272 36 -1.7983923794175503;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "F1A8D95E-4F9F-5EF1-2E40-80B95E44A89D";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 11 1 16 1 29 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "65DC17D1-4EAA-B07D-B0F2-6F83036512DE";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 11 1 16 1 29 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "DACA5AB1-4F8C-92E0-833B-58991092C56B";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 11 1 16 1 29 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "front1_rotateX";
	rename -uid "BB9A7747-4F9B-6E25-A958-EA8BD6B78284";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "front1_rotateY";
	rename -uid "2526FC94-4AFA-F55D-E496-49879717195D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "front1_rotateZ";
	rename -uid "FA86D7D1-4980-501F-3BB5-69958ADBF77E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "FKRoot_M_rotateX1";
	rename -uid "096157A0-4CAF-CB87-34B0-408D66833680";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateY1";
	rename -uid "C4E085B1-48C9-B76D-AD6A-0C975A3AB8FE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateZ1";
	rename -uid "803EDC61-47E4-5C76-3465-ECBC910FC1B7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -6.0656898423665329;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint2_M_rotateX";
	rename -uid "1CC6896A-422A-2794-E2A5-BF9AAF59EDF8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint2_M_rotateY";
	rename -uid "022B1064-4A75-E01A-1A2E-7DA2B97E1479";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint2_M_rotateZ";
	rename -uid "7E40EF02-49DA-5E56-C7A5-54A59DB4BC2F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint3_M_rotateX";
	rename -uid "5817A9CA-4E54-86A5-BF05-C280F5A04045";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint3_M_rotateY";
	rename -uid "D7B65619-490E-0E90-A813-03B130EA0160";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint3_M_rotateZ";
	rename -uid "098321EF-47EA-8D42-F042-5FB037C24CC6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint4_M_rotateX";
	rename -uid "F986433F-47A6-3623-7F00-74B1D671507A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint4_M_rotateY";
	rename -uid "DE830AB9-4658-3554-2F5A-2B81BBA21023";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint4_M_rotateZ";
	rename -uid "F7964703-4F84-C2BC-2CBA-7E917A20BFAB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint5_M_rotateX";
	rename -uid "EFADE5E3-443D-8605-A953-92B3AEE1C3E6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint5_M_rotateY";
	rename -uid "16FE2A29-4F86-6C1D-55D0-0AB655509622";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint5_M_rotateZ";
	rename -uid "0A8985FA-4EBA-5066-8698-3D875ABD3BCE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint6_M_rotateX";
	rename -uid "A1335A51-4B5B-E55B-EA0E-82A3BD6A2100";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint6_M_rotateY";
	rename -uid "60792868-4A81-795D-E345-8696A57E7EA1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint6_M_rotateZ";
	rename -uid "B43AAF16-472C-AA68-9D0C-E8A3629884C7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint7_M_rotateX";
	rename -uid "78BC1CA6-46E7-0751-364D-429C1F4BA1C4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint7_M_rotateY";
	rename -uid "10147408-4EFB-D6B9-21EB-988A53600BCB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint7_M_rotateZ";
	rename -uid "64ACCCC6-4FFF-BAB4-E811-F98F0F5EA11E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint8_M_rotateX";
	rename -uid "A1AE59A4-4298-F773-5FD8-ADBBB9C8BE46";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint8_M_rotateY";
	rename -uid "620BA6FD-49CC-412B-11E3-318FE5AA8233";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint8_M_rotateZ";
	rename -uid "C718BD58-4532-4610-3C32-1C95E7436EFE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateX";
	rename -uid "95F3BC53-411D-BA6E-64BD-379C74860E7E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateY";
	rename -uid "69042A1C-4C99-B2DF-D2A5-CC9F2BDB8AD7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateZ";
	rename -uid "DD66D051-42C7-1ED4-484A-60BE670DAB37";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "HipSwinger_M_rotateX";
	rename -uid "03898889-4F55-17C2-99B3-F78291DA84FF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "HipSwinger_M_rotateY";
	rename -uid "DF59DFD0-4F83-3F2F-059F-34B2519B20FF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "HipSwinger_M_rotateZ";
	rename -uid "44BB38C9-425C-D49A-C934-87B0704582E5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "9F2E6DE2-4686-5D25-BF95-F5847B59C89E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0.82934804813715812 4 0.82934804813715812
		 11 0.82934804813715812 17 0.82934804813715812 22 0.82934804813715812 31 0.82934804813715812
		 34 0.82934804813715812 36 0.82934804813715812;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "24EE1299-48A1-16F9-8647-44A6ECBF476C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0.11316554913969905 4 0.11316554913969905
		 11 0.11316554913969905 17 0.11316554913969905 22 0.11316554913969905 31 0.11316554913969905
		 34 0.11316554913969905 36 0.11316554913969905;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "A6EF7633-4F55-4BB2-005B-389E03A01317";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 4.1835982671395797 4 0.83230595106044103
		 11 0.6203509981505938 17 4.4825721253646469 22 0.88781648025341131 31 0.49552777617958321
		 34 5.1368716167647861 36 4.2101958074403978;
	setAttr -s 8 ".kit[3:7]"  18 1 1 18 1;
	setAttr -s 8 ".kot[3:7]"  18 1 1 18 1;
	setAttr -s 8 ".kix[0:7]"  0.14168551674328267 0.16334279145787581 
		0.23045331710464129 0.2 0.0038595977018520623 0.40357947864579713 0.099999999999999867 
		0.084156547879300436;
	setAttr -s 8 ".kiy[0:7]"  -0.057556986647102605 -0.018993456897997418 
		-0.00021396056162146311 0 -0.00092296359332472741 0.01076269690750737 0 -0.023674948380375344;
	setAttr -s 8 ".kox[0:7]"  0.14168546252573527 0.1912550605367869 
		0.51426594701285167 0.16666666666666663 0.11315838463294015 0.14506825732740095 0.066666666666666652 
		0.084156545593092824;
	setAttr -s 8 ".koy[0:7]"  -0.057557000429369509 -0.022239087038024477 
		-0.00047749344957992435 0 -0.027060101750253404 0.0038686936734755872 0 -0.023674947093240917;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKJaw_M_rotateX";
	rename -uid "C0559909-4E0C-B497-69B4-B188866C2F3E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKJaw_M_rotateY";
	rename -uid "908360AA-49EF-5C68-082F-F6B3366CC90A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKJaw_M_rotateZ";
	rename -uid "41EBF753-4260-FAD8-6089-23891FE2A288";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_L_rotateX";
	rename -uid "513C4DAD-4785-5BA1-3F28-19B63AF3BEA9";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_L_rotateY";
	rename -uid "AEDA7464-4E91-D16A-1CB4-28801D7CA5FC";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 -3.7225888017833251 12 -8.6400002228778163
		 14 -8.7850748534858418 18 -3.7225888017833251 30 -8.6400002228778163 32 -8.7850748534858418
		 36 -3.7225888017833251;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_L_rotateZ";
	rename -uid "F5DA086D-43C6-9BAB-6F5C-028426940299";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 13.219047051687388 12 13.219047051687388
		 14 13.219047051687388 18 13.219047051687388 30 13.219047051687388 32 13.219047051687388
		 36 13.219047051687388;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode pairBlend -n "pairBlend1";
	rename -uid "40A819F0-4CF7-5FF8-16EB-A98201B3983F";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "41072410-4185-AD15-C65A-D885734DE3AE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -9.4789993788179654 5 -9.4789993788179654
		 11 -9.4789993788179654 15 -9.4789993788179654 22 -9.4789993788179654 29 -9.4789993788179654
		 34 -9.4789993788179654 36 -9.4789993788179654;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulderArmor_L_rotateY";
	rename -uid "77DF883D-4C80-E1BD-B53C-A4A6FA698AC4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -10.398723284456054 5 -10.398723284456054
		 11 -10.398723284456054 15 -10.398723284456054 22 -10.398723284456054 29 -10.398723284456054
		 34 -10.398723284456054 36 -10.398723284456054;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "1BAA2981-441F-8460-12BF-138D9DDEB544";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -9.154301728347324 5 -9.154301728347324
		 11 -9.154301728347324 15 -9.154301728347324 22 -9.154301728347324 29 -9.154301728347324
		 34 -9.154301728347324 36 -9.154301728347324;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_L_rotateX";
	rename -uid "145E432E-490C-FB22-F376-109DEE006814";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 4.5582972845441025;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_L_rotateY";
	rename -uid "49222E3C-4177-76B9-61B9-7BBD01AC57BE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 28.545845313055914;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_L_rotateZ";
	rename -uid "E515DB6A-4CFD-B2DA-8A81-229440DAB7C9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 108.37964530518894;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_L_rotateX";
	rename -uid "445153E9-440A-A976-9358-078E905D89E5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 67.147072134343517 36 67.147072134343517;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_L_rotateY";
	rename -uid "3C91A889-402F-CD03-371B-C6BFA7C34262";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 33.886263880141591 36 33.886263880141591;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_L_rotateZ";
	rename -uid "9FCD962E-4415-1703-5E07-5F998CE24534";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 10.539969763659412 36 10.539969763659412;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode pairBlend -n "pairBlend2";
	rename -uid "7D9285C4-43CB-5294-DD7B-67AB61DF08AF";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend2_inRotateX1";
	rename -uid "E807024E-4617-C8ED-3816-8AAD80428B22";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -30.816095692492567 3 -30.816095692492567
		 11 -30.816095692492567 15 -30.816095692492567 20 -30.816095692492567 29 -30.816095692492567
		 34 -30.816095692492567 36 -30.816095692492567;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulderArmor_R_rotateY";
	rename -uid "428AD9DA-4773-E247-856E-10837F2A10AF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -28.90175634338372 3 -28.90175634338372
		 11 -28.90175634338372 15 -28.90175634338372 20 -28.90175634338372 29 -28.90175634338372
		 34 -28.90175634338372 36 -28.90175634338372;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pairBlend2_inRotateZ1";
	rename -uid "1E4CC21A-4E1C-82D6-A0AB-6497A81C3BFE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 24.897414404091464 3 24.897414404091464
		 11 24.897414404091464 15 24.897414404091464 20 24.897414404091464 29 24.897414404091464
		 34 24.897414404091464 36 24.897414404091464;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_R_rotateX";
	rename -uid "8B53D6FB-44AF-E523-0B9E-2B87B9B5655B";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 -54.902271871893547 13 -50.825653641649623
		 18 -53.494108762222041 29 -49.694094306628095 36 -54.902271871893547;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_R_rotateY";
	rename -uid "4CA9D15A-420D-C6EA-6D98-39AF556DE5BA";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 -9.7306596373899534 13 -8.7592217371883532
		 18 -9.8546802314762907 29 -8.6923411457839634 36 -9.7306596373899534;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_R_rotateZ";
	rename -uid "FC72DC2B-4F05-482C-8615-16AA63F180A3";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 11.749107557774167 13 12.918245550300711
		 18 11.75718251778278 29 13.08539923855707 36 11.749107557774167;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint1_M_rotateX";
	rename -uid "8584F4AD-49A9-0076-061E-CC9A67EA51E8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint1_M_rotateY";
	rename -uid "81B39D5A-4F5B-C440-82D6-53886B1AC981";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint1_M_rotateZ";
	rename -uid "1740A46E-4742-4E14-5DAE-92A5D411A0DD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint11_M_rotateX";
	rename -uid "F9FAEC57-45EB-0D86-E171-D49531EEB5F3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint11_M_rotateY";
	rename -uid "7451DD58-4376-7878-501B-88B9FC3A5E3B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint11_M_rotateZ";
	rename -uid "68675CA6-4606-7962-0BF3-8283F0D721A4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint12_M_rotateX";
	rename -uid "098F9721-4558-D42A-26E3-10ADD7A91F16";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint12_M_rotateY";
	rename -uid "CE8E746F-4757-D4BB-338E-7EA4352AD5FC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint12_M_rotateZ";
	rename -uid "40D9A05A-4AE4-DC57-E29E-67B9B279D588";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint13_M_rotateX";
	rename -uid "0EE0F32F-45F2-C219-4B2D-4D90340608E1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint13_M_rotateY";
	rename -uid "D02138E2-411E-10A0-736D-34A9A0021A1F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint13_M_rotateZ";
	rename -uid "2EB1C147-4D54-5672-C79B-C4B0FC2800A7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint14_M_rotateX";
	rename -uid "9BDAC5AB-4631-2B72-37A7-2A9CF0782EEB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint14_M_rotateY";
	rename -uid "70BA1279-405E-43A6-5FF8-52AA1C51673C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint14_M_rotateZ";
	rename -uid "798F04D2-4153-0324-0C40-0FA0A8C0A221";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_L_rotateX";
	rename -uid "36FBEF62-4A39-4CC8-6E15-408EB393664A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 7 0.23416967904329086 18 0.30801521348937166
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_L_rotateY";
	rename -uid "486224A8-42FC-F387-D722-9EBF46758C91";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -8.371838697256953 7 -9.546339861731937
		 18 -9.9167194367159563 36 -8.371838697256953;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_L_rotateZ";
	rename -uid "732343B5-440D-98D2-C1A1-41B9665E7692";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 7 -0.94624787426701662 18 -1.2446476512116555
		 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_L_rotateX";
	rename -uid "A110B555-4EB0-987A-AE3A-65AE7B2DB9A9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -0.02966454189571175;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_L_rotateY";
	rename -uid "C33AA24A-415F-22B5-BF45-85806B437D04";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 19.642770916180798;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_L_rotateZ";
	rename -uid "7DFFD7F5-454F-2ADA-A047-CA8F760C236F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 7.9118371663605096;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_L_rotateX";
	rename -uid "170A5694-43F8-A3C1-DEA2-F787E280A96F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_L_rotateY";
	rename -uid "D4BE2E35-4D4B-9F89-81E0-A5B44E583E40";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 36.09842983949185;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_L_rotateZ";
	rename -uid "C56A1A71-493F-3E47-79F5-A8A044EAEB61";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_L_rotateX";
	rename -uid "AB9F4E89-4649-A8CE-A9ED-D2B9626ED0F7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_L_rotateY";
	rename -uid "8B397C4F-4D34-B576-87B1-23A876EEA24A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -14.234559574613495;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_L_rotateZ";
	rename -uid "55F26678-464F-E772-DAFF-62B317B68C4E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_L_rotateX";
	rename -uid "3424BD92-473C-35F5-4301-0EAE280BAE88";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_L_rotateY";
	rename -uid "B88C57B3-479E-9D78-1AB3-0EB5FD383350";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_L_rotateZ";
	rename -uid "BB150679-4A97-43CD-14B9-9A9CFFB6F75C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateX";
	rename -uid "E5ADF0E6-4775-305A-B175-AAB066DAEA9D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateY";
	rename -uid "8B9BE8E6-4C2B-75A5-47D6-EF94890EFA95";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 15.273506950460339;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateZ";
	rename -uid "19333543-4158-1139-3A4F-F88AC6BC742B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -7.0723387346359692;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateX";
	rename -uid "C39B25AE-4827-D9E6-FB6A-AB9CE234A0B9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1.4853211126162535;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateY";
	rename -uid "4CC82518-4CF5-C08A-C7E5-118D682A88AC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 41.951450978581903;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateZ";
	rename -uid "41DC7920-4B77-B919-C385-A6A8133BA3FC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -1.647238781083127;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateX";
	rename -uid "CCC29F5C-4192-12E2-39BB-94AE67C76DC9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateY";
	rename -uid "BE2883BF-4579-EDEE-EF52-928D7BB485ED";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 19.828824810953666;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateZ";
	rename -uid "42398524-4AC8-54AE-F7AA-10B9B557B592";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_L_rotateX";
	rename -uid "7439C73E-4359-15AC-86FA-8BA1236C0A4E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_L_rotateY";
	rename -uid "C22D3F09-4E09-6864-7C1C-14B80D33CD02";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -33.46828689936283 36 -33.46828689936283;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_L_rotateZ";
	rename -uid "9FA7B43C-49B0-C0FF-81FB-01BF408EB2B5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateX";
	rename -uid "F70B82B4-41CA-3881-355D-8A85AD706216";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.94725640818503265 36 0.94725640818503265;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateY";
	rename -uid "B0E3EDB8-421A-1F27-9746-16A5D0183FAD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 38.864678800575099 36 38.864678800575099;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateZ";
	rename -uid "EC6BF475-49D3-3941-9F52-F09517ACF2FF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 4.1713908124789008 36 4.1713908124789008;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateX";
	rename -uid "ADA35F99-4E65-A601-E4D2-FCAE026EB170";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateY";
	rename -uid "FAEBDAB6-457B-3A68-02FF-53A78C204444";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 23.953226392152178 36 23.953226392152178;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateZ";
	rename -uid "7B08F5D2-49D3-D818-D618-BCAA70E94397";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateX";
	rename -uid "D4BDC2A3-4434-30AB-2C91-838C4324C7E8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateY";
	rename -uid "526CF8B1-4A97-90F2-4013-DF93CA91003A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -3.7242261594448451;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateZ";
	rename -uid "E410BAA3-4239-73FF-54D0-D1BBBE9D04B0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_L_rotateX";
	rename -uid "AA3F7A3D-432D-C37E-AA5D-A4B55709DD6A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_L_rotateY";
	rename -uid "3693DA65-4061-E094-9C5E-A09FECA4A8D6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_L_rotateZ";
	rename -uid "923B8D2E-4F2B-AD2D-4C56-C59F7714219C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_L_rotateX";
	rename -uid "1F95872B-4F02-BE43-05BF-1F8826FC9714";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -7.6294210732062417 36 -7.6294210732062417;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_L_rotateY";
	rename -uid "1BA29304-4EB1-EF5B-E4AE-87A811C7A211";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 28.538609352463777 36 28.538609352463777;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_L_rotateZ";
	rename -uid "D8486DEE-44BD-C427-D90D-04995070B861";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -11.429585305783373 36 -11.429585305783373;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_L_rotateX";
	rename -uid "D9746098-42E1-C8B9-84B2-1FBE0ACAD16F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 3.8883525479244598 36 3.8883525479244598;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_L_rotateY";
	rename -uid "F8788C3A-478D-BE41-CC2F-009F169D9253";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 37.615266906968699 36 37.615266906968699;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_L_rotateZ";
	rename -uid "ED92AF6E-4CDF-0881-2CA2-0592B42CCDA7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.005298513414967997 36 0.005298513414967997;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_L_rotateX";
	rename -uid "344B7245-4E11-CB29-2EC6-E8A2B86032D8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_L_rotateY";
	rename -uid "2E400F0E-49CE-7673-8224-FFBCC63514EA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 14.524470285308725 36 14.524470285308725;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_L_rotateZ";
	rename -uid "DCE71A4C-4F2C-6D78-393B-599D8801F902";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_L_rotateX";
	rename -uid "8E320F00-466E-0830-664D-9C86EEFD0CF3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 34.197279636435233;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_L_rotateY";
	rename -uid "E76C7D7D-4458-F411-A32F-5ABB43BBFDDD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -27.22958782434997;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_L_rotateZ";
	rename -uid "9E831198-4515-BB51-7AE5-0AB48E1923AC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 31.989132485036503;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_L_rotateX";
	rename -uid "F9E49AAD-4F2B-FAA5-D97A-08ACF018AD9C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_L_rotateY";
	rename -uid "266B4AB3-49A8-E49F-2988-608D0C1ED7FB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 15.856081436036527;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_L_rotateZ";
	rename -uid "035650AF-4636-B93D-71B3-168031EA3940";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_L_rotateX";
	rename -uid "1FDA0D62-4884-E971-C54B-FE89202D5ACF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_L_rotateY";
	rename -uid "5B31C91B-4DF7-58A6-916F-81B16D7A7973";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 5.1411036476686629;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_L_rotateZ";
	rename -uid "29D80042-41A4-FED3-A2CF-039041734731";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_R_rotateX";
	rename -uid "8B37009E-4857-A1EF-A9C8-E4AADFF65C51";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_R_rotateY";
	rename -uid "3923671A-4B78-1D98-0A39-FC930C725956";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -8.371838697256953;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_R_rotateZ";
	rename -uid "1780B769-47FA-637A-4306-A8885FACEEA3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_R_rotateX";
	rename -uid "52D1595E-42EE-66ED-6F8C-0988E8F03F61";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -9.7205516087706911;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_R_rotateY";
	rename -uid "B792F8AD-4433-8D6C-C837-DEA0E04A24E0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 39.411563665962582;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_R_rotateZ";
	rename -uid "A2300A60-43A6-368E-6FC4-0CACCB216429";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -9.8643424518477403;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_R_rotateX";
	rename -uid "42D7AD7C-4DBB-EF74-345A-E486D55A0004";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_R_rotateY";
	rename -uid "49093E7D-4620-D729-DBB0-5392759BBC8B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 81.335963548504438;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_R_rotateZ";
	rename -uid "AC26B435-4AE2-765C-090A-6C981944FCCB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_R_rotateX";
	rename -uid "573CB34C-43C5-5F29-FCA6-6390E2F08490";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_R_rotateY";
	rename -uid "0E139D51-4546-A033-4993-468FE9A9B643";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 18.026300242887672;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_R_rotateZ";
	rename -uid "352E111B-4D87-261B-9906-968C47CCB10A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_R_rotateX";
	rename -uid "F7055C7B-42B4-526C-4F99-37AAF6ECABA9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_R_rotateY";
	rename -uid "EE3B9058-419C-F39E-B1A8-3A839C58B2E0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_R_rotateZ";
	rename -uid "41E6FD9E-4A13-DBCB-7429-059D13058019";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateX";
	rename -uid "2FDAE00E-4B1F-8C75-48DA-4DBFBE8352A4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 2.0334126111906667;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateY";
	rename -uid "A12E2885-4DA9-DB50-05A0-DBBDFC77CFEE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 47.98939436837864;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateZ";
	rename -uid "C3575349-4E41-BB5C-5B9A-91B8A3FFDF7B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -11.748572139699672;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateX";
	rename -uid "BA9E38A3-4C12-8E72-34FE-1B9422474EE7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateY";
	rename -uid "B1AC5437-49C2-8E37-168D-958241FA3F8D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 64.892461158848761;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateZ";
	rename -uid "5AF6B58E-4E94-AA5B-21D1-2B9AA52FF732";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateX";
	rename -uid "55ABCC7C-4088-5FB8-34B0-5BB2DDBDF020";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 3.2507771488558417;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateY";
	rename -uid "8AB63F74-4458-B256-564B-8CB2D90DCCFD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 10.60173007351319;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateZ";
	rename -uid "AB46E055-4242-5F9F-E153-7BBE573C5923";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -2.0991757170730279;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_R_rotateX";
	rename -uid "4B060A9B-4A48-9E52-F8EB-9BBE2CD5B881";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_R_rotateY";
	rename -uid "46B9B8FC-40D1-86B7-96D6-2DA8767C4857";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_R_rotateZ";
	rename -uid "BCAF38E6-42D6-3FFB-C1E1-4D83C35689B3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateX";
	rename -uid "9C7791AB-41E4-0BC1-957B-E790A1A9960E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 20.677940168254523;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateY";
	rename -uid "04B97E3D-4834-DEB8-F87F-49AD47E4DD77";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 65.978563269982743;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateZ";
	rename -uid "CF482B25-4C47-6147-9453-A5A846212B83";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -12.851085005064675;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateX";
	rename -uid "2323F010-46D3-A9E0-DD58-2F8C2002CF6E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -0.18364148121606541;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateY";
	rename -uid "EBD3B6A4-4EF8-11C3-4EF6-CFBE58ADFFBE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 41.102362908313403;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateZ";
	rename -uid "7DE6854A-481A-DAE6-0DE9-D6867D00A99A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -0.061299772862692815;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateX";
	rename -uid "1AC5FEDD-491B-8E60-BE48-489633E94E6D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateY";
	rename -uid "A44362EC-4EDF-2DB7-1DF2-B3AE6AB3E06F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 25.636675831627382;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateZ";
	rename -uid "6272592D-4E53-FFF4-3363-90B0B759AE4E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_R_rotateX";
	rename -uid "3058E53C-46C2-DC5F-867D-66BED9312D85";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_R_rotateY";
	rename -uid "49425D7A-447F-5464-D470-9DAA24756223";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_R_rotateZ";
	rename -uid "7557B5D5-4259-7D6C-BA1F-14AA963D82DB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_R_rotateX";
	rename -uid "DD0EEF70-46AE-B8EF-6291-D8907E1F304F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_R_rotateY";
	rename -uid "7AC3B8A9-41DB-7897-ED19-FCAC88620A45";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 61.974301735331949;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_R_rotateZ";
	rename -uid "0D53C399-4B42-B45F-F568-48B89A12C6BD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -0.69336083645581492;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_R_rotateX";
	rename -uid "5DCBDF1C-4B3A-4E3E-CDC4-4DA6ACD67304";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_R_rotateY";
	rename -uid "6C866ADA-445D-01C3-F557-AD85B3DB2C71";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 38.539793316347243;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_R_rotateZ";
	rename -uid "C50CB018-4450-33D2-D51E-D3B9E55A79C6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_R_rotateX";
	rename -uid "036CF554-4102-9D0F-D2B4-31AEBA8287C0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_R_rotateY";
	rename -uid "32125180-49BF-C611-EA29-FB867B3CB319";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 48.085976736137575;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_R_rotateZ";
	rename -uid "26F07EA4-44C6-C332-CB6C-6BB8296BE9B7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_R_rotateX";
	rename -uid "B6ABE4AF-47DB-A70F-096C-FFACE02CF997";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 11.259063780354579;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_R_rotateY";
	rename -uid "223FBE3E-42DC-C31F-68E2-A28CD532171B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 5.27061675819178;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_R_rotateZ";
	rename -uid "1A0BF154-450C-CEEA-C5E0-85A1A0B1EE32";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0.51387779926901112;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_R_rotateX";
	rename -uid "CE234894-4DE5-5F25-8543-679FEBDBECE3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 8.4179208512044017;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_R_rotateY";
	rename -uid "7130E739-4F41-C0DC-3A29-A683E0B3B6EA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 17.442809509472337;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_R_rotateZ";
	rename -uid "E4BFDAF1-4C34-AD17-6182-48A184F94007";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 2.1186324387719648;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_R_rotateX";
	rename -uid "82BECB06-437A-499C-3637-DD8657FAFCAF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_R_rotateY";
	rename -uid "354654EF-4767-003C-E1F1-E5BD3A106F47";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 50.281193267225703;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_R_rotateZ";
	rename -uid "3559A13A-4B34-5107-F578-1991E62B9EA9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_L_rotateX";
	rename -uid "9E6183A1-4441-37BE-966D-8A9D169B90AA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_L_rotateY";
	rename -uid "4C855DE7-49F3-F4B9-7969-D7A424CB935F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_L_rotateZ";
	rename -uid "D481F876-4560-8724-FB19-F793C8F62157";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_L_rotateX";
	rename -uid "D542473A-44A2-0769-57D5-5481E064C052";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_L_rotateY";
	rename -uid "5072108B-4716-4C4A-893B-23A8E07859B6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_L_rotateZ";
	rename -uid "80A4D0D2-4519-8BF1-757A-CD8963AE00C8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_L_rotateX";
	rename -uid "B1BDF3FD-4E69-7F94-2CDB-91B9D3471096";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_L_rotateY";
	rename -uid "48991683-446A-8B66-909E-DC97F8B6203A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_L_rotateZ";
	rename -uid "B2FAD2F7-41B2-5940-3825-4A916F4C829A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_L_rotateX";
	rename -uid "F3D8F234-4E29-C651-E404-09BC1AA526F2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_L_rotateY";
	rename -uid "B297B406-46B3-5B9F-61FE-D1987532E3E6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_L_rotateZ";
	rename -uid "14B7DB65-442A-A913-0499-049399655EC3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_R_rotateX";
	rename -uid "C17A5CF4-4EE8-1D6A-D9F8-B293A08FD218";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_R_rotateY";
	rename -uid "DEB7173A-4E74-122B-535F-99A8B043BFE2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_R_rotateZ";
	rename -uid "536880D4-4BEB-A7DE-5D27-8098F4E9CAFA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_R_rotateX";
	rename -uid "B5A8A964-43C4-DEFC-C2DD-FCABDD5C1314";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_R_rotateY";
	rename -uid "DA385406-44D7-220A-4BFE-06932A3D0C33";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_R_rotateZ";
	rename -uid "AD4FE66B-4825-FF5A-F931-89A49F86FDAF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_R_rotateX";
	rename -uid "7F8FDCD3-4ABA-7F33-7C5F-E9A255C1962C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_R_rotateY";
	rename -uid "8F754BFA-45D3-353A-11F9-21AA42FB9144";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_R_rotateZ";
	rename -uid "836D631E-4196-F2AB-524D-D9B8D55D17B8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_R_rotateX";
	rename -uid "5E9B5398-41F9-EC5E-0796-2387670C5E0F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_R_rotateY";
	rename -uid "6C7EC1E2-4944-926A-05EB-2D9AF60AE451";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_R_rotateZ";
	rename -uid "3B3CCAC3-4FF7-7731-891D-81A5AAE09DF6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateX1";
	rename -uid "EFC0226E-4580-5DBB-6CC1-A984D3ADE0FC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateY1";
	rename -uid "D506C0F3-4466-0B49-2F53-3ABB096AF662";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateZ1";
	rename -uid "10E75FA3-49A2-6C7F-CDBD-F8AEEABBC460";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "front1_visibility";
	rename -uid "5B1F8E53-479D-C511-F1D4-85A788507A36";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "front1_scaleX";
	rename -uid "8AE81E4F-45B4-CEAC-5279-13B7E93B52E6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTU -n "front1_scaleY";
	rename -uid "486D0FAE-4734-96FF-9C7E-2799270F6B37";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTU -n "front1_scaleZ";
	rename -uid "5FE9B3DE-4DC6-AFE9-C27A-368F8ADFF52E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTU -n "front1_visibility1";
	rename -uid "351170BA-49AD-D7AD-DB00-2899BE19872E";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "front1_translateX";
	rename -uid "2E593677-424C-E421-E190-C081A0C4DCB4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 -7.152557373046875e-07;
createNode animCurveTL -n "front1_translateY";
	rename -uid "F68869BC-4D2B-5095-A8E8-DBA48A454589";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 41.340141296386719;
createNode animCurveTL -n "front1_translateZ";
	rename -uid "2BD1BD59-47B7-6022-8BAA-66BE17E96B63";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1005.0614064819482;
createNode animCurveTU -n "front1_scaleX1";
	rename -uid "E4C617A8-47B3-65ED-14E2-C8931E9B6E07";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTU -n "front1_scaleY1";
	rename -uid "A853DAEE-4BF4-3BC2-3ACE-34B0F524BA62";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTU -n "front1_scaleZ1";
	rename -uid "4BBA557E-4460-2449-0024-19A6ED00F90E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTL -n "FKRingFinger2_L_translateX";
	rename -uid "FAC79962-426D-B3A4-94F2-A480F6888E3C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_L_translateY";
	rename -uid "372DA184-4ACD-97F6-C83C-76B6838ACC99";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_L_translateZ";
	rename -uid "BFE4D3CE-4F1C-A244-76BA-D78E402C2D7E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_L_scaleX";
	rename -uid "6C5DCE19-4CC9-0E6C-4F60-E9801E9235AC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_L_scaleY";
	rename -uid "375D2C22-4321-F719-2781-3AA4C861CAAF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_L_scaleZ";
	rename -uid "9C4DF751-4070-02A3-9C9D-E79E6C6A89F9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint4_M_translateX";
	rename -uid "CD23A6E5-4B78-80B1-BBE8-669AB039C947";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint4_M_translateY";
	rename -uid "FCF48CA9-47CB-7219-11A3-FBBBA3323295";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint4_M_translateZ";
	rename -uid "ACE80DE7-4DC3-F411-9C43-5FA8D12B9F61";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint4_M_scaleX";
	rename -uid "40EDF674-4011-0023-0A16-AE8483A57CF1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint4_M_scaleY";
	rename -uid "90491F9E-49E5-94D2-193C-C787D5260171";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint4_M_scaleZ";
	rename -uid "55EED96B-408F-A0D8-6A60-1283457317C1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_L_translateX";
	rename -uid "6663CB29-4A8D-873F-C29C-5CBDB243BAD0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_L_translateY";
	rename -uid "1509F405-4341-C942-73B9-9A856AEFF82F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_L_translateZ";
	rename -uid "83FE4DB2-470B-060C-2DC6-AAA4289B0F74";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_L_scaleX";
	rename -uid "C7FAA632-41F4-D509-BB58-D8BA72514D35";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_L_scaleY";
	rename -uid "AE2CBE01-4488-80B8-2D8F-9B8E525C89FA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_L_scaleZ";
	rename -uid "1275450F-47C1-B210-E35B-B2B582ADA9FC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKJaw_M_translateX";
	rename -uid "A41532D7-4722-CE27-4872-58B5AFA5A257";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKJaw_M_translateY";
	rename -uid "4C84A16E-4855-E01D-D248-369C31936626";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKJaw_M_translateZ";
	rename -uid "1FF08CF2-46C5-D529-0E17-42828B852E9C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKJaw_M_scaleX";
	rename -uid "83121DCB-4933-8AEA-DB5C-D2A960897996";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKJaw_M_scaleY";
	rename -uid "5123D950-4656-8BB8-4C7D-E58A30714398";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKJaw_M_scaleZ";
	rename -uid "8A896B55-4F9E-14DF-3A8F-20AD29CA6077";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint5_M_translateX";
	rename -uid "1E36A76E-4788-7C67-579F-158497DF2267";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint5_M_translateY";
	rename -uid "E86A188D-4872-499E-A424-C59BB596EA45";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint5_M_translateZ";
	rename -uid "43ABA0F3-4BAF-310A-11D4-BCA9B1F6FE70";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint5_M_scaleX";
	rename -uid "9E2BE4E0-4AF7-2E78-B264-CC89976C2864";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint5_M_scaleY";
	rename -uid "F244D92E-4CA5-FAE0-531C-EE8F8E9D418F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint5_M_scaleZ";
	rename -uid "D481E933-4446-59EF-0440-7998F909C521";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_R_translateX";
	rename -uid "F4CB09E3-476E-3AA7-A6B5-D1AC40ACA50A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_R_translateY";
	rename -uid "6603E450-4AB6-AFF3-3C23-308D6A23E418";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_R_translateZ";
	rename -uid "893E2AB8-4F24-D5C3-132D-D98E9882D014";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_R_scaleX";
	rename -uid "B1EB0162-4E6B-9B4F-B76E-3CB92951C84C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_R_scaleY";
	rename -uid "CFA12B23-43F8-7B4A-B65B-9AA840246219";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_R_scaleZ";
	rename -uid "02708E80-477D-E24F-561C-64A7921ACA7E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_R_translateX";
	rename -uid "C8065289-4E39-6362-F6E6-038AA04EB194";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_R_translateY";
	rename -uid "6543DFE9-4AC4-B4C1-441B-9C82C234C5E2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_R_translateZ";
	rename -uid "8F9BB1C6-4C0C-0FCB-1D70-779C9E9BCFD9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_R_scaleX";
	rename -uid "0EBDA1DC-41D6-1C43-2A8E-DF94985324C2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_R_scaleY";
	rename -uid "4B34DDCF-46F6-980D-F25D-1C8E01C7067A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_R_scaleZ";
	rename -uid "B78AB7F6-4EE3-26F4-D505-6AB8739B4B4F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "HipSwinger_M_visibility";
	rename -uid "1938D279-453F-254E-5BC4-3FBA59E84F28";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_R_translateX";
	rename -uid "435BFB0C-4FF5-36E8-1080-CFA19CE12CFC";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 15 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_R_translateY";
	rename -uid "866CEF37-47A5-0BAF-9105-43A12DA258C2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 15 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_R_translateZ";
	rename -uid "37BB3512-4C9B-786B-3E17-9AB43317A6A5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 15 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_R_scaleX";
	rename -uid "76926FCE-4FA8-B072-B129-C9B6AE28CC56";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 15 1 18 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_R_scaleY";
	rename -uid "A5D08DE3-4545-780E-F7BC-4A9273034E80";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 15 1 18 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_R_scaleZ";
	rename -uid "66FB45C3-428E-D2F9-9493-F9AC93DA5046";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 15 1 18 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_R_translateX";
	rename -uid "83444F07-4B0A-7E48-17CF-E88EEBCBD60A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_R_translateY";
	rename -uid "66C2D6A0-429A-A2E7-83AE-258892160F43";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_R_translateZ";
	rename -uid "5D34A23E-470D-52E4-62A6-BBA986E51E1F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_R_scaleX";
	rename -uid "4128DBA1-4004-6480-99C1-C687AF00EC7E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_R_scaleY";
	rename -uid "89E00305-48FE-A6C2-6C5E-DDAAD20C4BD4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_R_scaleZ";
	rename -uid "25057D3B-4D13-9E2E-EF90-71A61E5F4D85";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_L_translateX";
	rename -uid "E55D1B8D-446A-FCCC-AD2A-4EB48D5C1DD0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_L_translateY";
	rename -uid "238520CD-4DDF-66F2-D954-CF8310C1FAF1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_L_translateZ";
	rename -uid "54D979BE-470B-B193-6BF1-60B9C6ABA7FE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_L_scaleX";
	rename -uid "B9BE609F-465B-4C2B-C68B-22859087817E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_L_scaleY";
	rename -uid "41F371AA-4085-91DA-5565-C08C5BEF5AD0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_L_scaleZ";
	rename -uid "4B892603-450E-216C-92E6-B3954B63A713";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_R_translateX";
	rename -uid "0739D9E3-4BF1-E3F8-830A-A3B96D48C5D0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_R_translateY";
	rename -uid "25E03BC1-4634-A75B-FD61-EEBEDAA70605";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_R_translateZ";
	rename -uid "D7D72C39-4183-9A2B-AEB9-97B3916F359C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_R_scaleX";
	rename -uid "CE213302-4F7F-B2BD-CAAE-C3AE98E92303";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_R_scaleY";
	rename -uid "06DBE8AA-4D6A-C1AE-BC92-9AB58CAF5394";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_R_scaleZ";
	rename -uid "E7714BAA-4D12-FC02-FBDE-6AA1376D9051";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_L_translateX";
	rename -uid "13752762-40FE-9EFD-B65D-19B6E8FC4166";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_L_translateY";
	rename -uid "7691BF70-48B8-F038-70E0-C5AA6F6EC7EC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_L_translateZ";
	rename -uid "E1F95838-4D91-BBB0-9841-518AE7928E41";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleX";
	rename -uid "68E5E75E-43B6-D6DA-10FB-53B168B33F5A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleY";
	rename -uid "ECFE19CE-41B4-E621-6E77-749A75DD1F3F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleZ";
	rename -uid "565225A2-4DF1-94C6-8543-F9B4103C5E5C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint3_M_translateX";
	rename -uid "5FAFDAE1-4EA2-3937-B993-0D9E86C3CA94";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint3_M_translateY";
	rename -uid "C7F1B333-4FE9-4BDC-4A0A-77B8676EE631";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint3_M_translateZ";
	rename -uid "08A8949B-4B63-3AFC-31C7-438442B2E389";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint3_M_scaleX";
	rename -uid "B0331B23-4B92-52F2-12F8-D28D38320E03";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint3_M_scaleY";
	rename -uid "EF658BF7-4434-8FDB-8111-56915072ABB9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint3_M_scaleZ";
	rename -uid "DAB855FB-429C-51CB-7A05-399976E751B0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_L_translateX";
	rename -uid "DCDC2535-4BCC-6BE6-6CDD-A0B8D4C41352";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_L_translateY";
	rename -uid "38A2DF19-447C-1DD1-7196-91A33A29506A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_L_translateZ";
	rename -uid "3323B093-467D-11A4-E3EA-E582523B3111";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_L_scaleX";
	rename -uid "DC94F2ED-410C-9ECD-2F69-A2AC7094B2D9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_L_scaleY";
	rename -uid "67F15969-4965-0D53-A528-BF9B86C46AE3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_L_scaleZ";
	rename -uid "15FB51AB-486F-98C8-5755-E09C8159B3A4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_R_translateX";
	rename -uid "3F305261-4C9B-7E0B-1478-4AAAB94EDA01";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_R_translateY";
	rename -uid "BD69B5E7-49A9-940A-EB00-2DA5E11D82EA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_R_translateZ";
	rename -uid "6716B238-4947-1EEA-BD85-44B0A8E9C68D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_R_scaleX";
	rename -uid "9D59F047-4A66-14C4-25AE-92907E95C0D2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_R_scaleY";
	rename -uid "D829F007-42F0-99B7-F820-71B9DA7683EF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_R_scaleZ";
	rename -uid "716B9B61-45BC-7BAD-3B53-9BB0C071FBE9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_R_translateX";
	rename -uid "54DA61F5-4035-120B-169C-5C8A7279C02C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_R_translateY";
	rename -uid "BFA0677D-4ED8-CEEF-9E6C-E58828DB8970";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_R_translateZ";
	rename -uid "4962FF45-45D7-E801-8383-2AAAEDBB3FB1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleX";
	rename -uid "2513CC0E-4A90-559E-EF27-4AA1D4242042";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleY";
	rename -uid "F645A124-4ECA-AF5C-C10D-A9BA680EEA7A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleZ";
	rename -uid "30D3D328-4F68-065D-3753-D9B073B7A39E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_L_translateX";
	rename -uid "BF294E58-41C0-6FC7-322E-F3AB1EC46FF7";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0.40526829304252099 5 0 11 0.12967377916614733
		 15 0.74607921977360814 22 0 29 0.12967377916614733 34 0.74607921977360814 36 0.40526829304252099;
	setAttr -s 8 ".kit[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  0.040971667198216516 0.16666666666666666 
		0.19999999999999998 0.13333333333333336 0.23333333333333328 0.23333333333333339 0.16666666666666663 
		0.066666666666666652;
	setAttr -s 8 ".kiy[0:7]"  -0.52831789849988153 0 0.38902133749844203 
		0 0 0.38902133749844203 0 0;
	setAttr -s 8 ".kox[0:7]"  0.040971658099442726 0.19999999999999998 
		0.13333333333333336 0.23333333333333328 0.23333333333333339 0.16666666666666663 0.066666666666666652 
		0.066666666666666652;
	setAttr -s 8 ".koy[0:7]"  -0.52831785846501589 0 0.25934755833229478 
		0 0 0.2778723839274585 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_L_translateY";
	rename -uid "6D1965B2-47F6-1284-1315-FC892375C029";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -0.16769241213725983 5 0 11 -0.013689285136259841
		 15 -0.25878458663157383 22 0 29 -0.013689285136259841 34 -0.25878458663157383 36 -0.16769241213725983;
	setAttr -s 8 ".kit[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  0.10491902814246715 0.16666666666666666 
		0.19999999999999998 0.13333333333333336 0.23333333333333328 0.23333333333333339 0.16666666666666663 
		0.066666666666666652;
	setAttr -s 8 ".kiy[0:7]"  0.21462912485003471 0 -0.041067855408779524 
		0 0 -0.041067855408779524 0 0;
	setAttr -s 8 ".kox[0:7]"  0.10491903393872026 0.19999999999999998 
		0.13333333333333336 0.23333333333333328 0.23333333333333339 0.16666666666666663 0.066666666666666652 
		0.066666666666666652;
	setAttr -s 8 ".koy[0:7]"  0.21462907602683148 0 -0.027378570272519692 
		0 0 -0.029334182434842503 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_L_translateZ";
	rename -uid "C0474D1A-4E07-3AD2-F152-03B43A21AEFC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0.21796862465925645 5 0 11 0.025750676310800347
		 15 0.33637133435070443 22 0 29 0.025750676310800347 34 0.33637133435070443 36 0.21796862465925645;
	setAttr -s 8 ".kit[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  0.075404859312145564 0.16666666666666666 
		0.19999999999999998 0.13333333333333336 0.23333333333333328 0.23333333333333339 0.16666666666666663 
		0.066666666666666652;
	setAttr -s 8 ".kiy[0:7]"  -0.24764898849805325 0 0.077252028932401046 
		0 0 0.077252028932401046 0 0;
	setAttr -s 8 ".kox[0:7]"  0.075404857541434472 0.19999999999999998 
		0.13333333333333336 0.23333333333333328 0.23333333333333339 0.16666666666666663 0.066666666666666652 
		0.066666666666666652;
	setAttr -s 8 ".koy[0:7]"  -0.24764899257570505 0 0.051501352621600709 
		0 0 0.055180020666000723 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_scaleX";
	rename -uid "27EA2FDC-4FC6-7F22-07AC-5B996980710F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 1 11 1 15 1 22 1 29 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_scaleY";
	rename -uid "09517522-4255-F2B6-C6ED-468AF222CDF1";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 1 11 1 15 1 22 1 29 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_scaleZ";
	rename -uid "9206FEAD-4337-72D9-30BD-628E2877A994";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 1 11 1 15 1 22 1 29 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_blendFKShoulderL";
	rename -uid "D4801E8A-4DA2-34E5-00CC-B4A027A53ACA";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 11 0 15 0 22 0 29 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_spread";
	rename -uid "6872D569-478B-E182-FAB7-1CAA146804CB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_indexCurl";
	rename -uid "F57652F6-411B-9DC4-F0D1-E88F9E5A06C6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_middleCurl";
	rename -uid "68A61D61-4AA3-EFD7-33D8-15A168457673";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_ringCurl";
	rename -uid "7FA2E7C1-4C85-9545-D5D0-32ACBF4D303E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_pinkyCurl";
	rename -uid "031E4B62-437D-645B-9721-C0BAFEBA6053";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_thumbCurl";
	rename -uid "7D33A9C7-40D4-B1BD-DEA5-A58D8C61A42B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_L_translateX";
	rename -uid "0F9D5EC6-4F31-089F-8A44-5F89AA381912";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_L_translateY";
	rename -uid "E61C2788-4979-A7B8-C8D5-EA9E37C6DF56";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_L_translateZ";
	rename -uid "1B65F551-4E08-CAC5-CD43-FD8406A3F736";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_L_follow";
	rename -uid "1472BB5E-40EA-692E-E688-5BAAADA04A05";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_L_lock";
	rename -uid "F6A97C84-4DF8-9507-7B93-E3B83AE274B5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_R_translateX";
	rename -uid "7B03A262-4CB0-2AF8-FF57-60925B4FFD32";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_R_translateY";
	rename -uid "771DEED1-4821-F2BB-CEAC-F7AA9446A1C8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_R_translateZ";
	rename -uid "0D5104D9-4AAB-1F9E-3166-C188D211089A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_R_scaleX";
	rename -uid "6409E2DA-4318-6012-4B12-C0B4B07CF7FD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_R_scaleY";
	rename -uid "7FE2B1A4-4094-02A0-86CA-48B3B45D3E72";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_R_scaleZ";
	rename -uid "A956469C-4BC9-A872-318A-53B813B505C0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_R_translateX";
	rename -uid "8382E327-4C93-19A2-729D-FFA560F8B5D1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_R_translateY";
	rename -uid "32D779C0-4689-3B4F-277C-E28E10998AB3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_R_translateZ";
	rename -uid "99D9F799-4770-0AC2-C70A-A6B27EDDE382";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_R_scaleX";
	rename -uid "25817D41-40FC-A671-21AA-D4A46B769A60";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_R_scaleY";
	rename -uid "14694DCB-4816-3CB6-9CAC-58A25B636F80";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_R_scaleZ";
	rename -uid "C594E2D1-45E5-A338-7563-139A7E0D7141";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_L_translateX";
	rename -uid "3BFB3B90-460E-C97A-1525-4FAEE9860F80";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_L_translateY";
	rename -uid "B3CCD410-4139-A84F-B67F-619F42C65566";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_L_translateZ";
	rename -uid "9E2527D4-4EF1-8A66-41C2-A58460CAA6C7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_L_scaleX";
	rename -uid "DF8893C4-461E-589F-EFF4-AC87AAF0C764";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_L_scaleY";
	rename -uid "43C4014D-4474-F7AB-2008-8B9EE7E99B80";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_L_scaleZ";
	rename -uid "079347B0-478B-5433-9C48-57B3D2F3CFA0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_L_FKIKBlend";
	rename -uid "F8E99E4B-4A97-D785-9B43-0881E7927237";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 10 36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_L_FKVis";
	rename -uid "2594ED51-478A-E36E-2CDE-FCA56E984095";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_L_IKVis";
	rename -uid "A1A6E492-48CF-326E-F6B3-DD8868B05D50";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_R_translateX";
	rename -uid "A3E5112E-49AD-815D-DC1F-D8AA9E2048CA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_R_translateY";
	rename -uid "C25D0792-4D41-5FED-ECA8-8392523B9D12";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_R_translateZ";
	rename -uid "3FFF9316-4B0A-8D46-8F01-BF86E96FDDF9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleX";
	rename -uid "D03D8BAD-48B0-0041-2714-0D8DF803897F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleY";
	rename -uid "88BDE31C-4319-7A44-270F-E29CDC317A6D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleZ";
	rename -uid "85C5FC9C-4783-9A5C-B7CE-308FDC826DA7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_R_translateX";
	rename -uid "07E544FD-4DAA-BEB9-9C7B-34A80CCA77A4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_R_translateY";
	rename -uid "92E45853-4739-1B70-C0AA-F6AD9C7C19FE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_R_translateZ";
	rename -uid "4A8F753D-4143-2F4A-1CB3-C3ADEC25BE13";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleX";
	rename -uid "6CD0D870-45DC-FFE3-E09D-7E8612A1E161";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleY";
	rename -uid "553EFF46-487E-1BCB-6596-99984B4DC2AE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleZ";
	rename -uid "31F03A78-4A58-B552-7C18-5795D867444E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_R_translateX";
	rename -uid "AC3C12AB-4FCA-9902-4744-49B9E20AE58E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_R_translateY";
	rename -uid "5078A5E8-4CA6-37A1-B589-02B9C6CD5FB2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_R_translateZ";
	rename -uid "2169B967-4C80-7CD4-BF71-D6B55096E120";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_R_scaleX";
	rename -uid "35FD778C-4C43-EF13-7A74-F1828DBD6901";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_R_scaleY";
	rename -uid "1DF0D3F9-4940-428C-4C1B-228F53FD48D2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_R_scaleZ";
	rename -uid "F1E5A5FA-46C6-6457-EDDF-0CA825F71F3F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_visibility";
	rename -uid "EECC9871-4960-2986-860A-77BA847C5E87";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateX";
	rename -uid "B8C00382-43F6-676D-DC1D-178ED83B1608";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateY";
	rename -uid "AA19DB7A-4FE9-9022-473C-3FACEB744C8C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateZ";
	rename -uid "DC69DBDE-46F3-5DCE-4ED6-55A741515680";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleX";
	rename -uid "C2DF9FFA-4DD4-5D67-A24A-C483182F2C59";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleY";
	rename -uid "934CA4CD-4E7A-634A-3802-999BCC875164";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleZ";
	rename -uid "D59A4CD9-4EF7-9189-E360-2F8E79BDA59B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint13_M_translateX";
	rename -uid "EDCE1E97-429A-FADA-32D9-859F9A6E70EE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint13_M_translateY";
	rename -uid "CE203197-40D6-E9F2-5860-5E9ACE8B82B8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint13_M_translateZ";
	rename -uid "017129EA-4F18-690D-32BF-9B8A8A5C50F0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint13_M_scaleX";
	rename -uid "FC7C96A1-45C1-89E0-484B-01A0BF4CB348";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint13_M_scaleY";
	rename -uid "8FA0B196-46A7-7DDB-2366-7388C81B929A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint13_M_scaleZ";
	rename -uid "234F22FC-4735-4664-CC08-4E8A778BDE60";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_L_translateX";
	rename -uid "5AF27AF4-4B17-7DFD-568D-79859673AD41";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_L_translateY";
	rename -uid "8C868AEA-48A0-3308-5F22-51B5A1388B5E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_L_translateZ";
	rename -uid "D9D78E06-4146-1F5E-9E8D-2E8CAD86422A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_L_scaleX";
	rename -uid "A11F35EC-42D5-7D9F-BBEB-55B55D6CC219";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_L_scaleY";
	rename -uid "CF4A03A9-413C-B2B1-DE89-B0B1AD5E2567";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_L_scaleZ";
	rename -uid "39A11A08-4D05-A5ED-F7D3-4F876DCB4C5D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_spread";
	rename -uid "0E7BEC1B-4CED-CCFE-6A8C-6D9D11D22F4D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 14 0 21 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_indexCurl";
	rename -uid "54B0B110-4B3E-66E4-2C3C-7F8CDDD0647B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1.2999999523162842 6 1.0274524688720703
		 14 0.83837276697158813 21 1.2999999523162842 29 0.98008555173873901 36 1.2999999523162842;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  0.20740492128575222 0.26666666666666666 
		0.23333333333333328 0.26666666666666672 0.23333333333333328;
	setAttr -s 6 ".kiy[1:5]"  -0.24498812353044522 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  0.26666666666666666 0.23333333333333328 
		0.26666666666666672 0.23333333333333328 0.23333333333333328;
	setAttr -s 6 ".koy[1:5]"  -0.3149885701547776 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_middleCurl";
	rename -uid "8CD56092-4978-A069-15FF-7993B5EBED1A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1.2999999523162842 6 1.0274524688720703
		 14 0.83837276697158813 21 1.2999999523162842 29 0.98008555173873901 36 1.2999999523162842;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  0.20740492128575222 0.26666666666666666 
		0.23333333333333328 0.26666666666666672 0.23333333333333328;
	setAttr -s 6 ".kiy[1:5]"  -0.24498812353044522 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  0.26666666666666666 0.23333333333333328 
		0.26666666666666672 0.23333333333333328 0.23333333333333328;
	setAttr -s 6 ".koy[1:5]"  -0.3149885701547776 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_ringCurl";
	rename -uid "CC98DBA5-428C-DB52-28C2-07BD36DA95D1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1.2999999523162842 6 1.0274524688720703
		 14 0.83837276697158813 21 1.2999999523162842 29 0.98008555173873901 36 1.2999999523162842;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  0.20740492128575222 0.26666666666666666 
		0.23333333333333328 0.26666666666666672 0.23333333333333328;
	setAttr -s 6 ".kiy[1:5]"  -0.24498812353044522 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  0.26666666666666666 0.23333333333333328 
		0.26666666666666672 0.23333333333333328 0.23333333333333328;
	setAttr -s 6 ".koy[1:5]"  -0.3149885701547776 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_pinkyCurl";
	rename -uid "A744821C-46E9-FFA1-108E-0AB93DA7B452";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1.2999999523162842 6 1.0274524688720703
		 14 0.83837276697158813 21 1.2999999523162842 29 0.98008555173873901 36 1.2999999523162842;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  0.20740492128575222 0.26666666666666666 
		0.23333333333333328 0.26666666666666672 0.23333333333333328;
	setAttr -s 6 ".kiy[1:5]"  -0.24498812353044522 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  0.26666666666666666 0.23333333333333328 
		0.26666666666666672 0.23333333333333328 0.23333333333333328;
	setAttr -s 6 ".koy[1:5]"  -0.3149885701547776 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_thumbCurl";
	rename -uid "60A355A0-4FD6-12F2-DB49-59BDC20D52ED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 14 0 21 0 29 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_R_FKIKBlend";
	rename -uid "A0D52055-42FE-B938-2319-A1BA13B41201";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_R_FKVis";
	rename -uid "ECE1A9EC-4B10-0913-8BE8-F5BB78B08FD2";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_R_IKVis";
	rename -uid "CF1ACEF3-43B7-5091-3E39-32BC38326C54";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_visibility1";
	rename -uid "4C15D206-48B8-E91B-A6FC-D9B4B3E950F5";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateX1";
	rename -uid "70FCF784-4BC7-CA7A-2D02-2DADBCA6ECDF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateY1";
	rename -uid "DA9CC7AD-482F-D086-6FEB-2CAC19283DC5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateZ1";
	rename -uid "4DB2D34A-4CE3-128F-FD22-91B84189ADA0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleX1";
	rename -uid "EA9856EE-40D9-711C-E4CE-64BCC9620F7C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleY1";
	rename -uid "81A128D1-435C-50E4-D23C-7092B11B6468";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleZ1";
	rename -uid "FC60DCDD-4F64-DFD1-7927-9AB79DBDC8E7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_R_translateX";
	rename -uid "DC0E15EB-4D77-7DEA-0A63-93B6F1DFC21B";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -1.1409044203641323 3 0 11 -0.45873952811888113
		 15 -1.1774147477428369 20 0 29 -0.45873952811888113 34 -1.1774147477428369 36 -1.1409044203641323;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_R_translateY";
	rename -uid "FEE140D9-4387-F30C-7C43-10AEC6E14D2A";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -0.45919141160750887 3 0 11 -0.18463356589490945
		 15 -0.47388609458712283 20 0 29 -0.18463356589490945 34 -0.47388609458712283 36 -0.45919141160750887;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_R_translateZ";
	rename -uid "CF8D0D05-44D0-3CC8-761D-62BA91D371CC";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 -0.31698192938110381 3 0 11 -0.12745339408895667
		 15 -0.32712573617882401 20 0 29 -0.12745339408895667 34 -0.32712573617882401 36 -0.31698192938110381;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_scaleX";
	rename -uid "D1270273-425B-46F9-9A19-9F8AAA8A3049";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 3 1 11 1 15 1 20 1 29 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_scaleY";
	rename -uid "E9A8CA70-42B5-62F7-B241-46BA7A89FB69";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 3 1 11 1 15 1 20 1 29 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_scaleZ";
	rename -uid "73684FCD-4E77-DB97-48DF-F4A20D704DEF";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 3 1 11 1 15 1 20 1 29 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_blendFKShoulderR";
	rename -uid "55AECB70-47FC-9B44-74C6-AA9EDC7CF20F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 11 0 15 0 20 0 29 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_R_translateX";
	rename -uid "DDC71EC7-4D17-0060-2F42-99A6D0E84A1F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_R_translateY";
	rename -uid "555863C1-490C-6168-2299-DC96E9669CD2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_R_translateZ";
	rename -uid "819C0212-492C-9A33-8499-709C9EBAFDA1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleX";
	rename -uid "022D0F92-4831-E0C4-07A7-C596ADC74204";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleY";
	rename -uid "B0AF28B2-49AA-8A0F-36F3-9A9007E411A4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleZ";
	rename -uid "0137F26B-46A4-2BC3-61E5-EEB848E86136";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_L_translateX";
	rename -uid "2C2D1584-41B0-C24E-67B7-D68CF6502306";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_L_translateY";
	rename -uid "887B46F3-4263-339D-D845-8BA2F2671A69";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_L_translateZ";
	rename -uid "04C62DB5-4673-7EF4-88B6-3A804B313DB7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleX";
	rename -uid "78B0592E-45FC-9D02-081B-E58BEFC120EC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleY";
	rename -uid "2DB252CF-46A1-A3F7-51BE-D99801B7DA1E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleZ";
	rename -uid "CE09C44A-4D6B-A2C2-6A95-6990DAA75AF6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint2_M_translateX";
	rename -uid "2647892A-48D4-6F32-04FD-A783B9EC9B01";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint2_M_translateY";
	rename -uid "5A94E908-4816-3971-A8A8-198524645DCE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint2_M_translateZ";
	rename -uid "490DDCD8-4FB0-6C4D-A9DC-3AA8F7AFEFDB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint2_M_scaleX";
	rename -uid "47031DBE-4987-4D6B-0461-C5A7962E5F81";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint2_M_scaleY";
	rename -uid "A2D2A210-4BAB-36CC-D3E6-D388C8CB186C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint2_M_scaleZ";
	rename -uid "0237D258-4BF4-C940-179F-4E91598F663F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint1_M_translateX";
	rename -uid "8087C024-46D3-F217-EA03-639EC668F002";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint1_M_translateY";
	rename -uid "55F8DD77-40E2-BEAF-EE0E-5492B80966B4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint1_M_translateZ";
	rename -uid "9211B127-4601-1860-2DC6-CBB6F8E26688";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint1_M_scaleX";
	rename -uid "D8C702DF-46AF-E527-A9D1-F087CA70C310";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint1_M_scaleY";
	rename -uid "2D9CB6F0-4287-2378-44F4-4DBD85AC8E8B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint1_M_scaleZ";
	rename -uid "341A0417-4785-1277-3204-F4A1E95302C5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "66A27CA7-4DCC-ACF8-7878-27AE64AB75C2";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 11 0 17 0 22 0 31 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "0CC90ACD-4659-8BEE-A702-9BB1344C1E91";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 11 0 17 0 22 0 31 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "D3512FDE-464E-2827-3010-6684927FECA4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 11 0 17 0 22 0 31 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "ADC5FC51-412E-2B83-F9D4-5094AF90401F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 11 1 17 1 22 1 31 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "8BC738B3-4EAC-6AAC-E316-498B313D29AE";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 11 1 17 1 22 1 31 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "B4D21D86-4A48-00A6-4075-A0939959C99E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 11 1 17 1 22 1 31 1 34 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "CE42F1DF-4F3F-F85E-DF7E-8F9E0FEA0B0F";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 11 0 17 0 22 0 31 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_R_translateX";
	rename -uid "7B28A219-42D0-1D58-4AA8-E0ADEF8264CC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_R_translateY";
	rename -uid "31443A58-4210-EA0A-E5A6-D48E8BC86069";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_R_translateZ";
	rename -uid "4ED9EA04-436F-46F0-A29D-EE83A406BFA9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleX";
	rename -uid "AFD1A8F9-4625-3703-5AD2-50B097A8A91B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleY";
	rename -uid "D79A4247-4460-19DB-28DF-7EA7B1E436CB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleZ";
	rename -uid "EB5D1A79-47CA-49C9-4128-298E0ABCAD8B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_L_translateX";
	rename -uid "AA834225-4715-38DD-6BDA-29B35A70D2FE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_L_translateY";
	rename -uid "BB63ABDA-4AF3-BFA2-760F-68AC19475C5A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_L_translateZ";
	rename -uid "2966237F-4B6F-A3CD-067A-10B46A359B33";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleX";
	rename -uid "C877634E-4897-B16D-2791-8CB44F0ABFBA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleY";
	rename -uid "C5DB7708-4AC4-A291-C104-1E8864B30FC3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleZ";
	rename -uid "9A294396-4EE9-3DE5-BFBC-1682308B7C1D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_R_translateX";
	rename -uid "62006507-405F-7E29-852A-6C892D3007BE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_R_translateY";
	rename -uid "3E448A98-43F4-90DB-B7AF-F28321AB7C6E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_R_translateZ";
	rename -uid "8C4907A1-48DD-5B5D-FC2F-CBB78D4D2AF9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_R_scaleX";
	rename -uid "40DBE4DB-4C32-E974-9054-C9BFD6D10E6F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_R_scaleY";
	rename -uid "24465C92-4579-8D48-4E9B-888171655AC3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_R_scaleZ";
	rename -uid "FA831756-43F4-500E-6D98-A1BCBFE772A2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_L_translateX";
	rename -uid "A180A3A9-4B66-561D-327B-93B79271EE32";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_L_translateY";
	rename -uid "1E10A9C3-412B-E857-87ED-EBB916ED7445";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_L_translateZ";
	rename -uid "F9D39893-4681-3434-CB67-729027FFF6E5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_L_scaleX";
	rename -uid "A8BD3DBF-42DD-16B5-63FD-BCA147ED4479";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_L_scaleY";
	rename -uid "05B263C5-42DA-05A1-A8C3-43876573E182";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_L_scaleZ";
	rename -uid "48C9F58E-4315-52D2-F1F9-56B3D92E579D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint12_M_translateX";
	rename -uid "5306327A-4F68-A6A6-D392-47BC80ED044C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint12_M_translateY";
	rename -uid "886AA55D-4741-C265-235F-0DBFA9D384AE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint12_M_translateZ";
	rename -uid "FA276D7C-460D-3E66-B0DB-7CBF77DC6D9F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint12_M_scaleX";
	rename -uid "65D325AE-4564-A52D-479E-089B543040A1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint12_M_scaleY";
	rename -uid "4F8035C3-4157-7E90-9FB3-0EA788A98153";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint12_M_scaleZ";
	rename -uid "7B304A5C-48E0-5695-28F4-65B3A3E72F49";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_R_translateX";
	rename -uid "D9CCB89A-421B-E2AB-5AFD-ED8F58568618";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_R_translateY";
	rename -uid "CAD4E2BE-4F2B-0A35-0DF1-88907B1E2777";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_R_translateZ";
	rename -uid "78F68D8E-4D22-97ED-B07B-B4A12B46EDA8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_R_follow";
	rename -uid "4122DBC9-4C3E-C559-60DF-399E005F2C62";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_R_lock";
	rename -uid "CF040870-4AC8-9233-C219-07837DF55655";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_L_translateX";
	rename -uid "4C21E59C-4213-C774-0F38-0B842EA82D12";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_L_translateY";
	rename -uid "08EDDE6A-41E7-3413-F29B-8ABFB264E967";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_L_translateZ";
	rename -uid "F9F3B6D4-4D7E-C497-ED17-6091C76F8AC1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_L_scaleX";
	rename -uid "659952A8-41EF-4944-AA89-EAA1047915ED";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_L_scaleY";
	rename -uid "90D3F443-48C6-A777-305E-9AB66A1B0A75";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_L_scaleZ";
	rename -uid "3430324E-490E-5758-9F26-98B2F289EF42";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint6_M_translateX";
	rename -uid "3A77290D-4454-3007-753D-A49A77C02F8F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint6_M_translateY";
	rename -uid "0BB03D09-4B82-795C-5DE9-61A864B18F28";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint6_M_translateZ";
	rename -uid "8664F3FB-489E-1A4A-7068-A7881B327B10";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint6_M_scaleX";
	rename -uid "86753601-4322-DE13-C0D5-3F8D513D1E2F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint6_M_scaleY";
	rename -uid "1E3C95AA-4259-D7A0-E104-359DFB88D88E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint6_M_scaleZ";
	rename -uid "C15AB2E1-4A17-80CC-D35F-5E93DA4EA611";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_L_translateX";
	rename -uid "7738DB21-421C-4D92-D3B6-EAAD927969D3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_L_translateY";
	rename -uid "3F9654C2-4F70-E6E1-6DBA-DA8930F3BDA8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_L_translateZ";
	rename -uid "26791ABF-41B5-45F6-0071-8A978A810504";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_L_scaleX";
	rename -uid "13424948-4293-44AF-EAC1-F5B3C3976C52";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_L_scaleY";
	rename -uid "ACC15E03-4F82-D393-3D58-0BB1DD962003";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_L_scaleZ";
	rename -uid "09202C31-4F10-B47B-E93F-5E836E2E6B00";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_L_translateX";
	rename -uid "6353F589-4A99-05F0-C7E0-E486E87547D8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_L_translateY";
	rename -uid "ED4604BE-402F-9AB4-C5B5-A0BBEFC29620";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_L_translateZ";
	rename -uid "D3D9481A-456E-1DC3-8891-078135C319C2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_L_scaleX";
	rename -uid "FED4F788-4444-65DD-A787-899A39932E14";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_L_scaleY";
	rename -uid "0DFB0426-42C3-4803-1550-C3B00C7C0920";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_L_scaleZ";
	rename -uid "330F8007-4D7A-0F17-731F-62BDCEEE981E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_L_translateX";
	rename -uid "1202372C-409D-2A52-0B6C-EB880E70812B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_L_translateY";
	rename -uid "F81A73FD-4D4A-9FE3-CE63-C2B751151CAC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_L_translateZ";
	rename -uid "66EC11D0-4C6A-B9A1-2217-0F8437F116F1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleX";
	rename -uid "2CF3C785-42BC-705A-3786-EA88BE772542";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleY";
	rename -uid "8CCBFB1F-486B-3572-D3BD-0182DE181AEE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleZ";
	rename -uid "EB63C567-4DA5-05A5-ABA0-3986CD08436B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_L_translateX";
	rename -uid "9B70FC69-46BE-98D7-09B0-AE9C8B5E2E50";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 7 0 18 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_L_translateY";
	rename -uid "094B9187-4B0D-BA98-D4FE-B4B364199FF5";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 7 0 18 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_L_translateZ";
	rename -uid "D43BBD2C-4797-A231-B7E1-749DD44CF190";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 7 0 18 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_L_scaleX";
	rename -uid "3A8EDED3-4010-8926-ED41-2F9C26567AB3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 7 1 18 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_L_scaleY";
	rename -uid "34D9BA20-46A0-3D49-55EC-E5A3E16C5D9A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 7 1 18 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_L_scaleZ";
	rename -uid "39D5823E-4AD3-E18A-C33F-82AF16020AB4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 7 1 18 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_L_translateX";
	rename -uid "C9BDB4D7-4FF6-8DE3-89E8-5B8134D0D3F0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_L_translateY";
	rename -uid "FDADBF73-4B16-72EA-278F-289F4BF6D3D1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_L_translateZ";
	rename -uid "6CBB803E-43C4-14E2-51FD-1E9FC47AEC2A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_L_scaleX";
	rename -uid "17BBC656-4852-EBC4-18BC-96A84BF7B31F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_L_scaleY";
	rename -uid "8E4F2B24-4601-C1BC-9E55-A0B57559F6DE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_L_scaleZ";
	rename -uid "3364991A-408C-EC30-8AAC-6994258D91A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_L_translateX";
	rename -uid "D21624E1-46AA-E185-6AF3-E6B9D1743BF9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_L_translateY";
	rename -uid "5438C26A-488F-82C7-C711-23ADF760204D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_L_translateZ";
	rename -uid "236033D8-4894-81D5-0258-A9965017F045";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleX";
	rename -uid "FC7AF34A-43F9-90C7-3620-8ABCDB7F8204";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleY";
	rename -uid "461120A4-44FD-2E64-9353-2F8C1FE4859A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleZ";
	rename -uid "B1B8F634-4298-49BD-2D2D-72BBC1B477E9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_R_FKIKBlend";
	rename -uid "F6207D9F-4202-5C70-F3B2-6C86A3B31487";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_R_FKVis";
	rename -uid "CA4DA0C3-429E-CE83-4ECF-BF96399C5DAD";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_R_IKVis";
	rename -uid "EBE8335C-43E4-C2EA-F7C6-60983E186F50";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_L_translateX";
	rename -uid "468CF84F-4869-207E-B58E-62A8A096C94A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_L_translateY";
	rename -uid "D195372D-4F9E-F866-800E-4FBC28F37948";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_L_translateZ";
	rename -uid "4A7203B3-4930-DE8F-CBAD-90BEEFE54FE3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_L_scaleX";
	rename -uid "E18AF89A-460D-CCBE-CD70-C8A98826C868";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_L_scaleY";
	rename -uid "AF7D039D-49C7-65E9-2967-0EB8310E1CD4";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_L_scaleZ";
	rename -uid "289206AE-4AD9-8EC3-26E4-70A13A5BA441";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_L_translateX";
	rename -uid "AF33E027-4ADC-D2B3-288A-D3AAC04DE4D4";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_L_translateY";
	rename -uid "057C000C-432D-45E4-82A5-D898B662C647";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_L_translateZ";
	rename -uid "2EC1ABED-406A-DA75-B387-4AA27CB23B30";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_scaleX";
	rename -uid "0EB41C4D-4CE2-B3C2-7821-5DA9383D73E3";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 14 1 18 1 30 1 32 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_scaleY";
	rename -uid "A5F77887-4A3F-8F99-AE4B-F8AE8161D356";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 14 1 18 1 30 1 32 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_scaleZ";
	rename -uid "D3A3B9EB-4483-2D20-05D4-26AA69925A80";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 14 1 18 1 30 1 32 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKSpine_M_FKIKBlend";
	rename -uid "18412233-450D-8015-6BE3-AA84D6192E2B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKSpine_M_FKVis";
	rename -uid "1051C2F0-4B81-D034-4564-E7AA94AF7552";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKSpine_M_IKVis";
	rename -uid "15B7DF87-4EA7-874D-2DD0-A29ACB3E2080";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_R_translateX";
	rename -uid "BADD09B8-4C36-AB6C-2F6F-4680B84AA698";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_R_translateY";
	rename -uid "2338A9AE-4330-8857-BA43-D89CA1FA207C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_R_translateZ";
	rename -uid "4AA6CCA3-42CF-1D71-58AB-00B677161716";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleX";
	rename -uid "E4512518-46F5-A018-B6E7-D3AA8270FA7C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleY";
	rename -uid "477B3A4E-4AFA-91B6-D0B1-BF8E53BA351B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleZ";
	rename -uid "7D910299-4756-4CEB-7164-BE96E5F554EE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_L_translateX";
	rename -uid "C256B95F-4A38-C8FB-9D2B-62926FF93F5D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_L_translateY";
	rename -uid "4D1C48F5-4B2B-E655-7EF1-31B071589F27";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_L_translateZ";
	rename -uid "C9300681-4F40-CD67-5BB0-1C8AC8BDB02F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_L_scaleX";
	rename -uid "9B3F2372-4DAC-9A6E-F883-06856AC5BBE2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_L_scaleY";
	rename -uid "8BDF8E71-4238-92C9-751F-3587B24E014D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_L_scaleZ";
	rename -uid "6EF58BA4-4572-0DD3-4E63-A491553C998B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint8_M_translateX";
	rename -uid "5BDC9F82-4BD4-8FA6-953A-48948FDB4352";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint8_M_translateY";
	rename -uid "23D7C94B-4DAC-F017-A7A3-38AC4CCE4960";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint8_M_translateZ";
	rename -uid "E0F0F705-4527-A2A9-42CA-F7A26BCA1755";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint8_M_scaleX";
	rename -uid "4CC2BF94-4E36-C8EC-9CBB-8A8C3D57795E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint8_M_scaleY";
	rename -uid "15DF1622-4184-FCF4-39DD-D89450B0B5D4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint8_M_scaleZ";
	rename -uid "F920C7F8-4956-4ED7-739D-B48C8BBACAB0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_L_translateX";
	rename -uid "B46FA9BD-4B05-D77D-ECA4-C48EF650FB4C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_L_translateY";
	rename -uid "66AE6186-4F98-1D8D-25A7-AA9A0251F1A6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_L_translateZ";
	rename -uid "6ABE6033-49E6-7905-F7CE-ADA40D7D56E9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_L_scaleX";
	rename -uid "1E096DCC-4D5F-9E07-F844-F4838C30CDFC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_L_scaleY";
	rename -uid "E0F79B8C-422A-2E2A-C5DA-B7A1AF115C5A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_L_scaleZ";
	rename -uid "114F2C34-4A0C-9B6A-2C9A-79920A09D835";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint11_M_translateX";
	rename -uid "EE8AC9A3-4280-59A8-0997-C683E64E5BFA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint11_M_translateY";
	rename -uid "A01DAC36-48A7-E0F8-9ED4-5B8BBECE86B3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint11_M_translateZ";
	rename -uid "E37EC031-4A28-BF03-445D-80A15EA575DD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint11_M_scaleX";
	rename -uid "6F683520-461C-9EBF-2955-A69F1EDD647D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint11_M_scaleY";
	rename -uid "C7DF8CF2-4721-5027-FC69-FE8A171F0D21";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint11_M_scaleZ";
	rename -uid "431F1CE2-41E7-84E1-AF54-E99D7764C0D1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_L_translateX";
	rename -uid "3DF77A8D-410D-F124-56A7-46896B86DBDA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_L_translateY";
	rename -uid "7C6ACEE4-4607-9E46-C512-DC8FECF766AF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_L_translateZ";
	rename -uid "2F38CA51-48B4-3FE3-6CF4-029DE726F90D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_L_scaleX";
	rename -uid "105269E1-488E-A341-754D-B6B90FE72847";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_L_scaleY";
	rename -uid "1F9E32D6-4C68-4815-A4BD-45A774C16E3C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_L_scaleZ";
	rename -uid "0CE10587-490F-AAFE-5D9A-9AB4BC2411CF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_L_translateX";
	rename -uid "9FCF32B4-4C80-E2F4-2F19-AE969AA4A95C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_L_translateY";
	rename -uid "007D2160-40D6-1326-0E39-C6A3D63772B6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_L_translateZ";
	rename -uid "924B7F2F-4EF5-80E9-8001-72805306CAF0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_L_scaleX";
	rename -uid "4868D7B1-4D2A-5569-B853-11A8C24C9CD6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_L_scaleY";
	rename -uid "35359CD2-470B-7137-8DB3-0798892598A9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_L_scaleZ";
	rename -uid "4C87CBBF-4C14-5087-7A50-E9BFC97A5E1F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_R_translateX";
	rename -uid "85723B19-4E94-0177-75CD-C3AB840549DD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_R_translateY";
	rename -uid "B4957EE5-45ED-A827-400D-6B83D2DC3EB8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_R_translateZ";
	rename -uid "42A5B0FD-4062-68BA-63DD-8798B53AAA35";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_R_scaleX";
	rename -uid "84F7EC9F-47B1-ED8E-EA46-3E9E60454631";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_R_scaleY";
	rename -uid "3D1871E9-4E7C-5BE5-B544-36AAC1F65B91";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_R_scaleZ";
	rename -uid "ECCA0003-476F-02CD-4CD0-BA84CAD8BA6D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint7_M_translateX";
	rename -uid "92D21D11-495E-444E-8946-F3ABA85A8EBC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint7_M_translateY";
	rename -uid "DB8D315A-46A8-1064-131B-209A4D3D96A7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint7_M_translateZ";
	rename -uid "72D3DAE6-4BC7-86FE-033E-3B9BEB9D4DEE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint7_M_scaleX";
	rename -uid "DB636799-49B0-2318-86B6-7DB7136F7D97";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint7_M_scaleY";
	rename -uid "0AC359E6-4418-73C3-43BE-8684704A329D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint7_M_scaleZ";
	rename -uid "08A81E16-4F5D-276A-5AE4-2D8D3C7E3111";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_L_translateX";
	rename -uid "17141B3B-4F6C-0EF0-0B26-92BA694B8929";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_L_translateY";
	rename -uid "D2B27599-419C-52F2-E73E-1493D37E174D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_L_translateZ";
	rename -uid "32F865E5-4885-CB27-A843-E89F3786C4C4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleX";
	rename -uid "3A41CE73-4481-EF2B-BBDA-579A28A21421";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleY";
	rename -uid "907B395E-4F90-834D-7EF6-548998D0FC82";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleZ";
	rename -uid "554653AD-42E7-AE33-E0D5-3D842C8D7772";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_R_translateX";
	rename -uid "11C5526F-45B1-A7E5-B01D-B786D1AEB4D9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_R_translateY";
	rename -uid "931764EA-470E-F2E2-38A3-63874AD7541A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_R_translateZ";
	rename -uid "05E117C1-465B-5677-07B4-7AA508EC71F7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_R_scaleX";
	rename -uid "985C76AD-43C4-0867-2086-E2B9C81066D7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_R_scaleY";
	rename -uid "43FD5801-4F94-3DDD-D398-D7BCAB9A09BF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_R_scaleZ";
	rename -uid "47E1D437-4919-0015-8FA5-74870E592C9E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_R_translateX";
	rename -uid "76E01F4C-4327-81A1-D4FD-A490A4D8474D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_R_translateY";
	rename -uid "9A100BCA-445C-62A2-3C50-559245C26ACC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_R_translateZ";
	rename -uid "86D7854E-4BE4-D4C7-769A-F8BD62F9EE57";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_R_scaleX";
	rename -uid "EECBAE56-4EA2-EEE6-9E1B-E981731CF74A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_R_scaleY";
	rename -uid "842D623D-4DA7-B417-1968-7389BF1CDB0D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_R_scaleZ";
	rename -uid "94B98A16-4D58-9E29-5A73-C8A530660C3C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint14_M_translateX";
	rename -uid "CE265D9B-4211-3664-0F2E-C49EFDE87B88";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint14_M_translateY";
	rename -uid "E1AA65AC-4AC2-C111-E493-0497AB98167A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint14_M_translateZ";
	rename -uid "BB2ECD56-4261-3044-16B8-34854013F8DE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint14_M_scaleX";
	rename -uid "6FEF6484-4D80-3B1B-2DAC-CE9729251B0A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint14_M_scaleY";
	rename -uid "89F081EF-45FF-5547-6D22-248F311D7E15";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint14_M_scaleZ";
	rename -uid "C3BD777E-4F5C-2C81-7A0C-A8A749021062";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_R_translateX";
	rename -uid "40C944EC-4C7C-DE52-F600-61B269697194";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_R_translateY";
	rename -uid "0F81EE94-49E1-2701-D405-8B8F32CABF54";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_R_translateZ";
	rename -uid "5B480A85-4506-DC40-CC9D-6A8406145DE6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_R_scaleX";
	rename -uid "B56711CE-4741-1D5D-FFF5-549390A6165D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_R_scaleY";
	rename -uid "19B60654-4DF5-77CD-A96E-1696596015B3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_R_scaleZ";
	rename -uid "513552F2-4911-C611-D686-808DFE613B30";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_R_translateX";
	rename -uid "BA9E2AD4-4B40-3EE2-F333-A0B2E66EA66F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_R_translateY";
	rename -uid "C029626C-483A-16E1-1C6A-11A5086D0DFC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_R_translateZ";
	rename -uid "CD4D4095-49FA-FB9D-B76F-54AA999FCBFE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_R_scaleX";
	rename -uid "E2BA38FC-475F-0301-D359-4DA261F1968C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_R_scaleY";
	rename -uid "1C31FA83-418B-B827-0E53-C6BA92B055C6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_R_scaleZ";
	rename -uid "5A72751F-411A-213C-24C8-AC9054CF8994";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateX1";
	rename -uid "51C6A5EE-4CCA-6CFC-8441-F28E9A58747D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateY1";
	rename -uid "8DE06587-4B94-1651-2501-51A57D89D1EB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateZ1";
	rename -uid "80D5EA9F-4E57-520A-8AE6-D4A85BCB0FBF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleX1";
	rename -uid "FA702679-4BA0-CEC6-D98E-1EA356C6484D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleY1";
	rename -uid "8F9359E1-47E8-6C8F-8509-B593DCB1848A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleZ1";
	rename -uid "C2464AFD-438F-8D6A-7E02-ADA9C374BA5C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_R_translateX";
	rename -uid "2717B3CF-40F8-FCBE-665E-36B32F006354";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_R_translateY";
	rename -uid "39EECCE6-4F55-BDCA-2466-70A0AB6E6D18";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_R_translateZ";
	rename -uid "2F2A3627-4B8F-98AC-9A8F-9A93B750F1FB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_R_scaleX";
	rename -uid "BE083A1D-4AD4-8503-B604-8287E7B0CA02";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_R_scaleY";
	rename -uid "BDAB0BC2-49ED-BC8D-31E6-77B5E63F6179";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_R_scaleZ";
	rename -uid "29258322-40B5-D5F7-E745-2C8D5A213D2A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_L_translateX";
	rename -uid "EE09D235-4F8E-D491-796F-3FB9005744D8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_L_translateY";
	rename -uid "D28327FA-4D5A-4FC6-027D-328A9F0A55F6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_L_translateZ";
	rename -uid "30B09760-49A7-82AE-B3D1-1C915C0E2D6B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_L_scaleX";
	rename -uid "9E1B5537-4AEE-844F-739C-E9B3DCEF0317";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_L_scaleY";
	rename -uid "756A2C0A-4209-2B8E-B583-C7A86E4849CF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_L_scaleZ";
	rename -uid "5C6B9EB9-4E52-2684-E395-2DA61659E8FE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_R_translateX";
	rename -uid "2EEE4CFE-4530-EBE4-6F3D-17BE3318B9D9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_R_translateY";
	rename -uid "7FDE636B-4E73-BC7E-2620-A993F9CADF1B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_R_translateZ";
	rename -uid "A30E4E0C-4A9C-9E91-212F-1ABA8BEC5712";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_R_scaleX";
	rename -uid "3BF26ADB-4DB1-AED5-D455-7BB507038C8E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_R_scaleY";
	rename -uid "145AE820-4711-917A-80E7-BDB5C8C3A5F7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_R_scaleZ";
	rename -uid "A0269031-4105-DF50-BFBB-4AB645BAF63D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_L_translateX";
	rename -uid "4C6D8216-432B-19BC-E995-1D90409333DB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_L_translateY";
	rename -uid "16CD414F-4D71-87E8-A6D3-3E951F9A405A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_L_translateZ";
	rename -uid "D1157DE5-43AF-956F-A37A-6488E24CB89F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_L_scaleX";
	rename -uid "1E4DDCFA-4D8E-F01F-BE64-DC8B44C15886";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_L_scaleY";
	rename -uid "07A7930C-493B-7455-2E28-35978A1EB5A2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_L_scaleZ";
	rename -uid "C7BB30FD-4F0C-2451-10D1-44B3A7B2FD48";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_L_FKIKBlend";
	rename -uid "2589195A-4CA4-52F4-CDD1-C89B23634AC6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_L_FKVis";
	rename -uid "0381D7ED-4D83-E851-800B-BEB261D3B51F";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_L_IKVis";
	rename -uid "10FC8943-4BDD-0C69-5C5F-30A5340651C9";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  36 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_R_translateX";
	rename -uid "5AAB64AF-40C3-B185-BF10-A6B9E4440DEA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_R_translateY";
	rename -uid "8B9209FA-4668-74F1-1765-CEA2BCCEE533";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_R_translateZ";
	rename -uid "2EA0133F-4DC2-163C-3CD4-0C9A545D4C97";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_R_scaleX";
	rename -uid "5002CE48-42FB-A292-0C87-1AA3EDD8F1D5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_R_scaleY";
	rename -uid "FE14E31B-460D-CD0D-20B2-ECBA90E1D38B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_R_scaleZ";
	rename -uid "26CE3975-431F-0936-FEE6-B698198D6A3B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "8E529CB6-4869-7879-5363-2EB1737AC667";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 30 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "9012C0A0-45B9-5F57-BBD5-A7B9AD96124F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 30 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "62DB0C2B-4B46-B4AE-DC6F-A488169A88F1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 30 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "037235E5-4109-80E0-2EE7-04938D308E13";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 69.67736907139097 9 65.869562431352136
		 16 66.407781441999333 24 70.899828200630822 30 70.158127320626392 36 69.67736907139097;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "FF46C5DA-4CAA-9605-7596-F29C5D8312BA";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 31.085142951832445 9 31.561788048304201
		 16 31.545442194515736 24 30.937684373039364 30 31.030019520429043 36 31.085142951832445;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "9EA15C2E-49D7-5A41-E06B-47B7730639D5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -88.511939023595232 9 -89.203487380361821
		 16 -85.3229998354347 24 -88.725384423380405 30 -93.272834844255485 37 -87.645690932905751;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 1;
	setAttr -s 6 ".kix[0:5]"  0.27376519994478837 0.3 0.23333333333333334 
		0.26666666666666672 0.19999999999999996 0.17757084821350871;
	setAttr -s 6 ".kiy[0:5]"  -0.019786647058458975 0 0 -0.079286169082420074 
		0 0.063756967254448682;
	setAttr -s 6 ".kox[0:5]"  0.27376518161036073 0.23333333333333334 
		0.26666666666666672 0.19999999999999996 0.23333333333333339 0.17757080218965315;
	setAttr -s 6 ".koy[0:5]"  -0.019786645076237619 0 0 -0.059464626811815031 
		0 0.063756967404500653;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "B255BE47-44B1-4DB4-BA52-268F8A655241";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 16 1 30 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "F801E186-405E-9F88-1F17-5680C838EE8A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 16 1 30 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "2C5D5102-4E2C-E6C1-090C-8E9D554215A3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 1 16 1 30 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode reference -n "sharedReferenceNode";
	rename -uid "C1FEC960-440C-6AC3-2056-E9A06DA20DBF";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTU -n "FKScapula_R_Global";
	rename -uid "4C296349-47BE-BF88-391F-749C719228C8";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_Global";
	rename -uid "8F6A07B8-4878-3EE9-38B2-909F383101A5";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 0 14 0 18 0 30 0 32 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_Global";
	rename -uid "A4DAEB7B-4209-69FB-4290-F7B57D1A2366";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 30 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_L_Global";
	rename -uid "99286566-4354-6A49-BA11-7383187D2369";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_Global";
	rename -uid "9F788A57-4193-B90B-4E7B-6197CF5D83D4";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 11 0 15 0 20 0 29 0 34 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKElbow_R_translateX";
	rename -uid "047A18EE-41D4-641E-BC14-89BAC2209867";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 25 0 31 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKElbow_R_translateY";
	rename -uid "A6B5B933-4DE5-C9EB-6422-AD9DCD2AA7AB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 25 0 31 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKElbow_R_translateZ";
	rename -uid "2F960897-4DFC-3B05-4AC9-03BEA57CBB11";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 25 0 31 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKElbow_R_rotateX";
	rename -uid "B8410505-4AEA-F5A3-55C2-B795BF6FC644";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 25 0 31 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKElbow_R_rotateY";
	rename -uid "66DD65D1-48E9-B0B6-B775-8B929C038939";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 25 0 31 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKElbow_R_rotateZ";
	rename -uid "B741E7F4-43BB-5661-10E0-B0BA41293B0C";
	setAttr ".tan" 3;
	setAttr -s 6 ".ktv[0:5]"  0 92.175171426060444 13 92.175171426060444
		 18 92.175171426060444 25 92.175171426060444 31 92.175171426060444 36 92.175171426060444;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKElbow_R_scaleX";
	rename -uid "B4492000-4A92-1C0C-C03E-6E954F9FB894";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 25 1 31 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKElbow_R_scaleY";
	rename -uid "7F1710C9-4BC1-6216-9374-58B8938F9710";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 25 1 31 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKElbow_R_scaleZ";
	rename -uid "0F0D8836-4096-3055-D414-E0A16C4C2BC0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 25 1 31 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKElbow_L_translateX";
	rename -uid "0B5D552E-41C6-9A73-544F-218CC01BE375";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKElbow_L_translateY";
	rename -uid "72A3BE70-470C-FD29-C1A8-92903A407C5E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKElbow_L_translateZ";
	rename -uid "95CB6182-4494-7830-CE8B-C7A1542D0328";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKElbow_L_rotateX";
	rename -uid "71BEB37E-492C-4A84-2FE8-33BC4AC9EE02";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKElbow_L_rotateY";
	rename -uid "A43E2A7D-4FF3-37B3-D559-DD8E8F25EA62";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 26 0 36 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKElbow_L_rotateZ";
	rename -uid "9D53D049-4D56-78CE-EAC1-6885A83D0D30";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 96.534714373920252 13 100.04186738037167
		 18 95.609545542623579 26 100.04186738037167 36 96.534714373920252;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKElbow_L_scaleX";
	rename -uid "5E801CA5-411D-FA1F-657A-8ABB0C78ABC8";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKElbow_L_scaleY";
	rename -uid "A1D7A7DF-4120-10B0-5567-94B68A0165F6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKElbow_L_scaleZ";
	rename -uid "46FF29D0-4A67-1238-EA1D-1195A22BF6B7";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 26 1 36 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_Global";
	rename -uid "A29CAADD-4678-59A0-4588-BFBFF0C05314";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 11 0 15 0 22 0 29 0 34 0 36 0;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "601C2233-4F64-FF1A-6C86-4B8A0D3C60AB";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 4.5475166627130692 11 6.5516072366163165
		 16 3.6574127223579858 21 2.8159176039767226 28 0.99557267616389833 36 4.5475166627130692;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleArm_L_translateX";
	rename -uid "FA3F872B-4734-E57B-545B-56B443375874";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 -15.229706280209626 12 -13.781414500425418
		 20 -11.086842258489469 27 -12.186299822052451 36 -15.229706280209626;
createNode animCurveTL -n "PoleArm_L_translateY";
	rename -uid "2748B86C-4CE3-B1C3-BAC5-B1B9CBB96C1C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -64.879626153519936 20 -64.879626153519936
		 36 -64.879626153519936;
createNode animCurveTL -n "PoleArm_L_translateZ";
	rename -uid "53EB641B-46EF-A6DC-3EE0-C8A0100150CB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4210854715202004e-14 20 -1.4210854715202004e-14
		 36 -1.4210854715202004e-14;
createNode animCurveTU -n "PoleArm_L_follow";
	rename -uid "1B5DC8D4-41D0-7640-A08E-D1B0BC1C6812";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
createNode animCurveTU -n "PoleArm_L_lock";
	rename -uid "0525CD23-4E16-A6C6-2DC2-A0B0A82CCFEC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
createNode animCurveTA -n "FKSkirtJntTop_M_rotateX";
	rename -uid "78BB5AA1-42E7-2B5E-D361-54850E8DFD5A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "FKSkirtJntTop_M_rotateY";
	rename -uid "511DEC53-4F7F-1F63-01A4-71AB550E1D85";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "FKSkirtJntTop_M_rotateZ";
	rename -uid "60A2A0AC-42A6-CC60-A9D9-FD920B8AC476";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -6.1200002147435031 4 -6.1200002147435031;
createNode animCurveTL -n "FKSkirtJntTop_M_translateX";
	rename -uid "C6BCD9F3-4692-D06B-E0AF-D5A546BCDBFB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTL -n "FKSkirtJntTop_M_translateY";
	rename -uid "8A753AA1-4668-1EDB-E390-B7AE31E6BDFB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTL -n "FKSkirtJntTop_M_translateZ";
	rename -uid "B82FB029-43B4-062C-98DF-7B8DC3B5912D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTU -n "FKSkirtJntTop_M_scaleX";
	rename -uid "4B5B26BA-4D04-4C09-E6FE-3AB1229AE61F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 4 1;
createNode animCurveTU -n "FKSkirtJntTop_M_scaleY";
	rename -uid "CB1C3DC2-4D6E-FEC5-870C-7F959FF476DA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 4 1;
createNode animCurveTU -n "FKSkirtJntTop_M_scaleZ";
	rename -uid "B0C69936-4267-304B-790B-588668A10DEF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 4 1;
createNode animCurveTA -n "FKSubRingFinger0_L_rotateX";
	rename -uid "223B4003-46A6-481D-6707-9B990F4115E3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 -1.7277617955170113 21 7.662352608500802
		 27 7.4922154173588362 31 0.097624048049045883 36 0;
createNode animCurveTA -n "FKSubRingFinger0_L_rotateY";
	rename -uid "1E41B91A-4680-769A-016D-4B851B2CFE09";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -9.3131204052088528 10 -9.3131204052088368
		 21 -9.3131204052088421 27 -9.3131204052088421 31 -9.3131204052088528 36 -9.3131204052088528;
createNode animCurveTA -n "FKSubRingFinger0_L_rotateZ";
	rename -uid "C51C561B-4644-EB35-CE13-9FAC196120C1";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubRingFinger0_L_translateX";
	rename -uid "207FA964-4E7B-0003-31FA-14BE9D34C542";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubRingFinger0_L_translateY";
	rename -uid "804AFB3D-46B9-C7F8-F904-99AD0A09B116";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubRingFinger0_L_translateZ";
	rename -uid "21D6486A-49DA-F2DF-D5BC-B5AA72DB3914";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTU -n "FKSubRingFinger0_L_scaleX";
	rename -uid "0B67F27B-43D8-6D18-AAD1-DCB8A10C6BBE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 21 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubRingFinger0_L_scaleY";
	rename -uid "02C1D634-4A34-9012-F8B3-A188AFF89CB3";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 21 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubRingFinger0_L_scaleZ";
	rename -uid "E8AC409E-450E-DA41-5069-58B423077C46";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 21 1 27 1 31 1 36 1;
createNode animCurveTA -n "FKSubIndexFinger0_L_rotateX";
	rename -uid "302B30CB-4262-06A3-F6BB-FEA819BBE223";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -15.485786596294489 10 -15.485786596294489
		 17 -4.898016010220327 27 -7.5502327320903433 31 -15.400886846734196 36 -15.485786596294489;
createNode animCurveTA -n "FKSubIndexFinger0_L_rotateY";
	rename -uid "DC188EF1-4499-3BE6-DABF-F8811C254155";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 17 0 27 0 31 0 36 0;
createNode animCurveTA -n "FKSubIndexFinger0_L_rotateZ";
	rename -uid "648D8B86-46BE-A667-A8A9-CB9B15E57861";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 17 0 27 0 31 0 36 0;
createNode animCurveTA -n "FKSubMiddleFinger0_L_rotateX";
	rename -uid "E2B69343-4A54-E631-A0E6-4186895F44E2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -15.485786596294489 10 -15.485786596294489
		 18 -5.9602177909770377 27 -7.7798308796603175 31 -15.400853541103046 36 -15.485786596294489;
createNode animCurveTA -n "FKSubMiddleFinger0_L_rotateY";
	rename -uid "0E596628-4F31-D624-88A2-D3A3E0203C20";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 18 0 27 0 31 0 36 0;
createNode animCurveTA -n "FKSubMiddleFinger0_L_rotateZ";
	rename -uid "4496DA5A-4A81-F4EA-178F-509EFFC43717";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 18 0 27 0 31 0 36 0;
createNode animCurveTA -n "FKSubPinkyFinger0_L_rotateX";
	rename -uid "256E1AC1-4DF4-8B0C-7A6F-98A4DB39BA9B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 -15.485786596294489 10 -15.485786596294489
		 21 -5.9602177909770377 27 -6.1717263971939138 31 -15.364423793737853 36 -15.485786596294489;
createNode animCurveTA -n "FKSubPinkyFinger0_L_rotateY";
	rename -uid "69437AE3-4345-8306-5B8E-C3A762CB446D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTA -n "FKSubPinkyFinger0_L_rotateZ";
	rename -uid "4D2BE9C9-4176-4079-BB65-DCA18772D4F7";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubPinkyFinger0_L_translateX";
	rename -uid "ACCB1E34-4D41-0C00-991D-028B968AB0D2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubPinkyFinger0_L_translateY";
	rename -uid "C5B42F52-4083-B5EC-7344-77ADA07D9F22";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubPinkyFinger0_L_translateZ";
	rename -uid "3A22717F-43EB-9741-509C-E49AD68B839A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 21 0 27 0 31 0 36 0;
createNode animCurveTU -n "FKSubPinkyFinger0_L_scaleX";
	rename -uid "DF107CE0-4953-085C-A527-6D934DD718B6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 21 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubPinkyFinger0_L_scaleY";
	rename -uid "455C39F0-4655-936B-2679-879A8DB29C5F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 21 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubPinkyFinger0_L_scaleZ";
	rename -uid "442DCB7C-4045-256C-AEA1-3680A3114A01";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 21 1 27 1 31 1 36 1;
createNode animCurveTL -n "FKSubMiddleFinger0_L_translateX";
	rename -uid "4BB8A94D-4391-48ED-1372-77B82399BD18";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 18 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubMiddleFinger0_L_translateY";
	rename -uid "59A5373B-49FA-EF47-751E-32AB7B5F63D6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 18 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubMiddleFinger0_L_translateZ";
	rename -uid "5578B557-4945-3DFD-A9CA-E99FBCCD4E8F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 18 0 27 0 31 0 36 0;
createNode animCurveTU -n "FKSubMiddleFinger0_L_scaleX";
	rename -uid "68920333-4D10-E572-C214-1E9E740011D2";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 18 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubMiddleFinger0_L_scaleY";
	rename -uid "C56E885F-423D-A4C3-127D-4AAB96758D79";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 18 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubMiddleFinger0_L_scaleZ";
	rename -uid "B6460305-45C2-1125-33B8-96A4F9A37EC9";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 18 1 27 1 31 1 36 1;
createNode animCurveTL -n "FKSubIndexFinger0_L_translateX";
	rename -uid "3F77917B-422E-5F96-859C-8994CD6363FE";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 17 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubIndexFinger0_L_translateY";
	rename -uid "CDC3925F-4B82-2502-C3FC-01AD6B48B919";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 17 0 27 0 31 0 36 0;
createNode animCurveTL -n "FKSubIndexFinger0_L_translateZ";
	rename -uid "0B44D748-4B63-77A0-DDC3-DF9C90F0547E";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 17 0 27 0 31 0 36 0;
createNode animCurveTU -n "FKSubIndexFinger0_L_scaleX";
	rename -uid "162998FE-4548-803D-3C8D-2481071CB45B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 17 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubIndexFinger0_L_scaleY";
	rename -uid "B685F8CB-44F0-6281-63F4-88A1B61154BD";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 17 1 27 1 31 1 36 1;
createNode animCurveTU -n "FKSubIndexFinger0_L_scaleZ";
	rename -uid "CDBDB74A-479A-8941-CA5F-E19110849CD6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 10 1 17 1 27 1 31 1 36 1;
createNode animCurveTL -n "FKSkirtJntMid1_M_translateX";
	rename -uid "3FEEA7E6-4A05-9259-8D8D-50B4E2CE88C7";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 18 0 22 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid1_M_translateY";
	rename -uid "AA614469-4889-A197-4FA5-628B9F70EAF9";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 18 0 22 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid1_M_translateZ";
	rename -uid "8EEE127F-481D-6383-7416-878A5741D67C";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 18 0 22 0 36 0;
createNode animCurveTA -n "FKSkirtJntMid1_M_rotateX";
	rename -uid "A35F9805-4DDB-16B7-6F32-8591D376A8D0";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 -3.0026354856534043 18 0 22 0
		 28 -1.8145871484506864 36 0;
createNode animCurveTA -n "FKSkirtJntMid1_M_rotateY";
	rename -uid "DBB09C72-4BAF-9BFE-86D3-A4BB50E0D65D";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 -0.24145094833065203 18 0 22 0
		 28 -4.8626045263015634 36 0;
createNode animCurveTA -n "FKSkirtJntMid1_M_rotateZ";
	rename -uid "8FD7C7B4-4902-20FD-945A-3196A3E5331C";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 -20.007799021690097 18 0 22 0
		 28 -14.329638114256271 36 0;
createNode animCurveTU -n "FKSkirtJntMid1_M_scaleX";
	rename -uid "38B7AA81-47B1-19AA-04ED-3F9FA728E95E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 18 1 22 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid1_M_scaleY";
	rename -uid "70F98867-4D22-59BC-F100-0E9B5C991655";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 18 1 22 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid1_M_scaleZ";
	rename -uid "B0840C59-4B1F-AB9B-B29F-E789D8B1E975";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 18 1 22 1 36 1;
createNode animCurveTL -n "FKSkirtJntMid2_M_translateX";
	rename -uid "4CF0F124-4275-7447-A5FE-31A1C95DA9B5";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 11 0 18 0 22 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid2_M_translateY";
	rename -uid "88027822-4A80-BF78-409C-F694207FB7D0";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 11 0 18 0 22 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid2_M_translateZ";
	rename -uid "3690423F-4D1C-C751-90F9-4DBBF908E65B";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 11 0 18 0 22 0 36 0;
createNode animCurveTA -n "FKSkirtJntMid2_M_rotateX";
	rename -uid "7AEB0C29-41FB-9697-AD41-40A62F8A6339";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 -9.6688338580005873 18 0 22 0
		 28 22.84471791315741 36 0;
createNode animCurveTA -n "FKSkirtJntMid2_M_rotateY";
	rename -uid "70332CB3-4EB4-F50C-7018-31A4E794F545";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 -4.6479143628168584 18 0 22 0
		 28 4.7109003102833595 36 0;
createNode animCurveTA -n "FKSkirtJntMid2_M_rotateZ";
	rename -uid "E4D8072B-4574-E90D-2C9B-41A0719FE495";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 20.9498561272489 18 0 22 0 28 2.4384457443518786
		 36 0;
createNode animCurveTU -n "FKSkirtJntMid2_M_scaleX";
	rename -uid "DFF757D9-4DEE-6F88-A121-A183A364864A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 6 1 11 1 18 1 22 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid2_M_scaleY";
	rename -uid "0ACBFE7B-436F-0303-288D-A582B553EF11";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 6 1 11 1 18 1 22 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid2_M_scaleZ";
	rename -uid "A9D5057A-4354-C34D-E7A5-059D911DF604";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 6 1 11 1 18 1 22 1 36 1;
createNode animCurveTL -n "FKSkirtJntMid3_M_translateX";
	rename -uid "A64C17FB-477E-B936-B21C-D7A53A1AE57F";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 11 0 18 0 22 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid3_M_translateY";
	rename -uid "922DBA94-41BF-AA27-4BA7-6FB35E3DEB0A";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 11 0 18 0 22 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid3_M_translateZ";
	rename -uid "01B8D42E-4278-B96A-9E53-D39DB9038C4D";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 11 0 18 0 22 0 36 0;
createNode animCurveTA -n "FKSkirtJntMid3_M_rotateX";
	rename -uid "C9A24E38-45A4-AC4A-63AE-8B950D3DA7D2";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 -1.9121344793029891 18 0 22 0
		 28 7.1568665867071095 36 0;
createNode animCurveTA -n "FKSkirtJntMid3_M_rotateY";
	rename -uid "22EF5EBD-4EFD-EFFB-2EB5-3A90EF0D9737";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 3.9721721820327365 18 0 22 0
		 28 4.2562730369669373 36 0;
createNode animCurveTA -n "FKSkirtJntMid3_M_rotateZ";
	rename -uid "653CA877-45B1-7E99-E43B-899C17A3D81E";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 11 4.4183040726677305 18 0 22 0
		 28 -0.40319931443225138 36 0;
createNode animCurveTU -n "FKSkirtJntMid3_M_scaleX";
	rename -uid "96433436-4813-AE49-37FF-17BC49249A02";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 6 1 11 1 18 1 22 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid3_M_scaleY";
	rename -uid "069E0AF4-4DD0-FCA2-A1E8-EE96B6E45154";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 6 1 11 1 18 1 22 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid3_M_scaleZ";
	rename -uid "26B91DC8-47AD-F8EF-4EC7-8FBE89C4A558";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  0 1 6 1 11 1 18 1 22 1 36 1;
createNode animCurveTL -n "FKSkirtJntMid4_M_translateX";
	rename -uid "6D73231B-4CCB-2D44-B569-119A735D02AB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid4_M_translateY";
	rename -uid "C3DE3A5B-4672-BF91-2229-AC8C817EBC8F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTL -n "FKSkirtJntMid4_M_translateZ";
	rename -uid "28654224-40AA-75C0-8218-BAB90097F374";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "FKSkirtJntMid4_M_rotateX";
	rename -uid "98A184A1-43B6-3235-23C9-CAAFF3F55440";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "FKSkirtJntMid4_M_rotateY";
	rename -uid "5A54C535-475B-2518-D9FA-769B5FA2A698";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTA -n "FKSkirtJntMid4_M_rotateZ";
	rename -uid "824FD647-4E3F-F8F0-4701-9B8E3E3E1BE6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
createNode animCurveTU -n "FKSkirtJntMid4_M_scaleX";
	rename -uid "4F3A6C05-499D-6B26-7380-96840C0D0C1E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid4_M_scaleY";
	rename -uid "DF7E5807-4144-EDE1-FD10-8396C891497B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
createNode animCurveTU -n "FKSkirtJntMid4_M_scaleZ";
	rename -uid "C4861E89-49A6-8038-B8DF-8A9783C31F4A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 36 1;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "C8D33D3A-4F21-9792-AAD3-D8B76B365A5B";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 35;
	setAttr -av -k on ".unw" 35;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rm";
	setAttr -av -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av -k on ".hom";
	setAttr -av -k on ".hodm";
	setAttr -av -k on ".xry";
	setAttr -av -k on ".jxr";
	setAttr -av -k on ".sslt";
	setAttr -av -k on ".cbr";
	setAttr -av -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -av -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -av -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -av -k on ".mbcsx";
	setAttr -av -k on ".mbcsy";
	setAttr -av -k on ".mbasx";
	setAttr -av -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blth";
	setAttr -av -k on ".blfr";
	setAttr -av -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 46 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 56 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 52 ".u";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 50 ".tx";
select -ne :standardSurface1;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 20 ".gn";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -av -k on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -k on ".hwcc";
	setAttr -av -k on ".hwdp";
	setAttr -av -k on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 3 ".sol";
connectAttr "Main_scaleX.o" "modelRN.phl[709]";
connectAttr "Main_scaleY.o" "modelRN.phl[710]";
connectAttr "Main_scaleZ.o" "modelRN.phl[711]";
connectAttr "Main_visibility.o" "modelRN.phl[712]";
connectAttr "Main_translateX.o" "modelRN.phl[713]";
connectAttr "Main_translateY.o" "modelRN.phl[714]";
connectAttr "Main_translateZ.o" "modelRN.phl[715]";
connectAttr "Main_rotateX1.o" "modelRN.phl[716]";
connectAttr "Main_rotateY1.o" "modelRN.phl[717]";
connectAttr "Main_rotateZ1.o" "modelRN.phl[718]";
connectAttr "FKNeck_M_scaleX.o" "modelRN.phl[719]";
connectAttr "FKNeck_M_scaleY.o" "modelRN.phl[720]";
connectAttr "FKNeck_M_scaleZ.o" "modelRN.phl[721]";
connectAttr "FKNeck_M_rotateX.o" "modelRN.phl[722]";
connectAttr "FKNeck_M_rotateY.o" "modelRN.phl[723]";
connectAttr "FKNeck_M_rotateZ.o" "modelRN.phl[724]";
connectAttr "FKNeck_M_translateX.o" "modelRN.phl[725]";
connectAttr "FKNeck_M_translateY.o" "modelRN.phl[726]";
connectAttr "FKNeck_M_translateZ.o" "modelRN.phl[727]";
connectAttr "FKHead_M_scaleX.o" "modelRN.phl[728]";
connectAttr "FKHead_M_scaleY.o" "modelRN.phl[729]";
connectAttr "FKHead_M_scaleZ.o" "modelRN.phl[730]";
connectAttr "FKHead_M_Global.o" "modelRN.phl[731]";
connectAttr "FKHead_M_rotateZ.o" "modelRN.phl[732]";
connectAttr "FKHead_M_rotateX.o" "modelRN.phl[733]";
connectAttr "FKHead_M_rotateY.o" "modelRN.phl[734]";
connectAttr "FKHead_M_translateX.o" "modelRN.phl[735]";
connectAttr "FKHead_M_translateY.o" "modelRN.phl[736]";
connectAttr "FKHead_M_translateZ.o" "modelRN.phl[737]";
connectAttr "FKJaw_M_scaleX.o" "modelRN.phl[738]";
connectAttr "FKJaw_M_scaleY.o" "modelRN.phl[739]";
connectAttr "FKJaw_M_scaleZ.o" "modelRN.phl[740]";
connectAttr "FKJaw_M_translateX.o" "modelRN.phl[741]";
connectAttr "FKJaw_M_translateY.o" "modelRN.phl[742]";
connectAttr "FKJaw_M_translateZ.o" "modelRN.phl[743]";
connectAttr "FKJaw_M_rotateX.o" "modelRN.phl[744]";
connectAttr "FKJaw_M_rotateY.o" "modelRN.phl[745]";
connectAttr "FKJaw_M_rotateZ.o" "modelRN.phl[746]";
connectAttr "FKScapula_R_scaleX.o" "modelRN.phl[747]";
connectAttr "FKScapula_R_scaleY.o" "modelRN.phl[748]";
connectAttr "FKScapula_R_scaleZ.o" "modelRN.phl[749]";
connectAttr "FKScapula_R_Global.o" "modelRN.phl[750]";
connectAttr "FKScapula_R_translateX.o" "modelRN.phl[751]";
connectAttr "FKScapula_R_translateY.o" "modelRN.phl[752]";
connectAttr "FKScapula_R_translateZ.o" "modelRN.phl[753]";
connectAttr "FKScapula_R_rotateX.o" "modelRN.phl[754]";
connectAttr "FKScapula_R_rotateY.o" "modelRN.phl[755]";
connectAttr "FKScapula_R_rotateZ.o" "modelRN.phl[756]";
connectAttr "FKShoulder_R_scaleX.o" "modelRN.phl[757]";
connectAttr "FKShoulder_R_scaleY.o" "modelRN.phl[758]";
connectAttr "FKShoulder_R_scaleZ.o" "modelRN.phl[759]";
connectAttr "FKShoulder_R_Global.o" "modelRN.phl[760]";
connectAttr "modelRN.phl[761]" "pairBlend2.irx2";
connectAttr "FKShoulder_R_rotateX.o" "modelRN.phl[762]";
connectAttr "modelRN.phl[763]" "pairBlend2.irz2";
connectAttr "FKShoulder_R_rotateZ.o" "modelRN.phl[764]";
connectAttr "FKShoulder_R_rotateY.o" "modelRN.phl[765]";
connectAttr "FKShoulder_R_translateZ.o" "modelRN.phl[766]";
connectAttr "FKShoulder_R_translateY.o" "modelRN.phl[767]";
connectAttr "FKShoulder_R_translateX.o" "modelRN.phl[768]";
connectAttr "FKShoulder2_R_scaleX.o" "modelRN.phl[769]";
connectAttr "FKShoulder2_R_scaleY.o" "modelRN.phl[770]";
connectAttr "FKShoulder2_R_scaleZ.o" "modelRN.phl[771]";
connectAttr "FKShoulder2_R_rotateX.o" "modelRN.phl[772]";
connectAttr "FKShoulder2_R_rotateY.o" "modelRN.phl[773]";
connectAttr "FKShoulder2_R_rotateZ.o" "modelRN.phl[774]";
connectAttr "FKShoulder2_R_translateZ.o" "modelRN.phl[775]";
connectAttr "FKShoulder2_R_translateY.o" "modelRN.phl[776]";
connectAttr "FKShoulder2_R_translateX.o" "modelRN.phl[777]";
connectAttr "modelRN.phl[778]" "Handle_ctr_parentConstraint1.tg[0].ts";
connectAttr "FKWrist_R_scaleX.o" "modelRN.phl[779]";
connectAttr "FKWrist_R_scaleY.o" "modelRN.phl[780]";
connectAttr "FKWrist_R_scaleZ.o" "modelRN.phl[781]";
connectAttr "modelRN.phl[782]" "Handle_ctr_parentConstraint1.tg[0].tt";
connectAttr "FKWrist_R_translateX.o" "modelRN.phl[783]";
connectAttr "FKWrist_R_translateY.o" "modelRN.phl[784]";
connectAttr "FKWrist_R_translateZ.o" "modelRN.phl[785]";
connectAttr "modelRN.phl[786]" "Handle_ctr_parentConstraint1.tg[0].tr";
connectAttr "FKWrist_R_rotateX.o" "modelRN.phl[787]";
connectAttr "FKWrist_R_rotateY.o" "modelRN.phl[788]";
connectAttr "FKWrist_R_rotateZ.o" "modelRN.phl[789]";
connectAttr "modelRN.phl[790]" "Handle_ctr_parentConstraint1.tg[0].tpm";
connectAttr "modelRN.phl[791]" "Handle_ctr_parentConstraint1.tg[0].trp";
connectAttr "modelRN.phl[792]" "Handle_ctr_parentConstraint1.tg[0].trt";
connectAttr "modelRN.phl[793]" "Handle_ctr_parentConstraint1.tg[0].tro";
connectAttr "FKScapula_L_scaleX.o" "modelRN.phl[794]";
connectAttr "FKScapula_L_scaleY.o" "modelRN.phl[795]";
connectAttr "FKScapula_L_scaleZ.o" "modelRN.phl[796]";
connectAttr "FKScapula_L_Global.o" "modelRN.phl[797]";
connectAttr "FKScapula_L_translateX.o" "modelRN.phl[798]";
connectAttr "FKScapula_L_translateY.o" "modelRN.phl[799]";
connectAttr "FKScapula_L_translateZ.o" "modelRN.phl[800]";
connectAttr "FKScapula_L_rotateX.o" "modelRN.phl[801]";
connectAttr "FKScapula_L_rotateY.o" "modelRN.phl[802]";
connectAttr "FKScapula_L_rotateZ.o" "modelRN.phl[803]";
connectAttr "FKShoulder_L_scaleX.o" "modelRN.phl[804]";
connectAttr "FKShoulder_L_scaleY.o" "modelRN.phl[805]";
connectAttr "FKShoulder_L_scaleZ.o" "modelRN.phl[806]";
connectAttr "FKShoulder_L_Global.o" "modelRN.phl[807]";
connectAttr "modelRN.phl[808]" "pairBlend1.irx2";
connectAttr "FKShoulder_L_rotateX.o" "modelRN.phl[809]";
connectAttr "modelRN.phl[810]" "pairBlend1.irz2";
connectAttr "FKShoulder_L_rotateZ.o" "modelRN.phl[811]";
connectAttr "FKShoulder_L_rotateY.o" "modelRN.phl[812]";
connectAttr "FKShoulder_L_translateX.o" "modelRN.phl[813]";
connectAttr "FKShoulder_L_translateY.o" "modelRN.phl[814]";
connectAttr "FKShoulder_L_translateZ.o" "modelRN.phl[815]";
connectAttr "FKShoulder2_L_scaleX.o" "modelRN.phl[816]";
connectAttr "FKShoulder2_L_scaleY.o" "modelRN.phl[817]";
connectAttr "FKShoulder2_L_scaleZ.o" "modelRN.phl[818]";
connectAttr "FKShoulder2_L_rotateX.o" "modelRN.phl[819]";
connectAttr "FKShoulder2_L_rotateY.o" "modelRN.phl[820]";
connectAttr "FKShoulder2_L_rotateZ.o" "modelRN.phl[821]";
connectAttr "FKShoulder2_L_translateZ.o" "modelRN.phl[822]";
connectAttr "FKShoulder2_L_translateY.o" "modelRN.phl[823]";
connectAttr "FKShoulder2_L_translateX.o" "modelRN.phl[824]";
connectAttr "FKWrist_L_scaleX.o" "modelRN.phl[825]";
connectAttr "FKWrist_L_scaleY.o" "modelRN.phl[826]";
connectAttr "FKWrist_L_scaleZ.o" "modelRN.phl[827]";
connectAttr "FKWrist_L_translateX.o" "modelRN.phl[828]";
connectAttr "FKWrist_L_translateY.o" "modelRN.phl[829]";
connectAttr "FKWrist_L_translateZ.o" "modelRN.phl[830]";
connectAttr "FKWrist_L_rotateX.o" "modelRN.phl[831]";
connectAttr "FKWrist_L_rotateY.o" "modelRN.phl[832]";
connectAttr "FKWrist_L_rotateZ.o" "modelRN.phl[833]";
connectAttr "FKShoulderArmor_R_scaleX.o" "modelRN.phl[834]";
connectAttr "FKShoulderArmor_R_scaleY.o" "modelRN.phl[835]";
connectAttr "FKShoulderArmor_R_scaleZ.o" "modelRN.phl[836]";
connectAttr "FKShoulderArmor_R_Global.o" "modelRN.phl[837]";
connectAttr "modelRN.phl[838]" "pairBlend2.w";
connectAttr "FKShoulderArmor_R_blendFKShoulderR.o" "modelRN.phl[839]";
connectAttr "pairBlend2.orx" "modelRN.phl[840]";
connectAttr "pairBlend2.orz" "modelRN.phl[841]";
connectAttr "FKShoulderArmor_R_rotateY.o" "modelRN.phl[842]";
connectAttr "FKShoulderArmor_R_translateX.o" "modelRN.phl[843]";
connectAttr "FKShoulderArmor_R_translateY.o" "modelRN.phl[844]";
connectAttr "FKShoulderArmor_R_translateZ.o" "modelRN.phl[845]";
connectAttr "FKIndexFinger0_R_scaleX.o" "modelRN.phl[846]";
connectAttr "FKIndexFinger0_R_scaleY.o" "modelRN.phl[847]";
connectAttr "FKIndexFinger0_R_scaleZ.o" "modelRN.phl[848]";
connectAttr "FKIndexFinger0_R_translateX.o" "modelRN.phl[849]";
connectAttr "FKIndexFinger0_R_translateY.o" "modelRN.phl[850]";
connectAttr "FKIndexFinger0_R_translateZ.o" "modelRN.phl[851]";
connectAttr "FKIndexFinger0_R_rotateX.o" "modelRN.phl[852]";
connectAttr "FKIndexFinger0_R_rotateY.o" "modelRN.phl[853]";
connectAttr "FKIndexFinger0_R_rotateZ.o" "modelRN.phl[854]";
connectAttr "FKIndexFinger1_R_scaleX.o" "modelRN.phl[855]";
connectAttr "FKIndexFinger1_R_scaleY.o" "modelRN.phl[856]";
connectAttr "FKIndexFinger1_R_scaleZ.o" "modelRN.phl[857]";
connectAttr "FKIndexFinger1_R_translateX.o" "modelRN.phl[858]";
connectAttr "FKIndexFinger1_R_translateY.o" "modelRN.phl[859]";
connectAttr "FKIndexFinger1_R_translateZ.o" "modelRN.phl[860]";
connectAttr "FKIndexFinger1_R_rotateX.o" "modelRN.phl[861]";
connectAttr "FKIndexFinger1_R_rotateY.o" "modelRN.phl[862]";
connectAttr "FKIndexFinger1_R_rotateZ.o" "modelRN.phl[863]";
connectAttr "FKIndexFinger2_R_scaleX.o" "modelRN.phl[864]";
connectAttr "FKIndexFinger2_R_scaleY.o" "modelRN.phl[865]";
connectAttr "FKIndexFinger2_R_scaleZ.o" "modelRN.phl[866]";
connectAttr "FKIndexFinger2_R_translateX.o" "modelRN.phl[867]";
connectAttr "FKIndexFinger2_R_translateY.o" "modelRN.phl[868]";
connectAttr "FKIndexFinger2_R_translateZ.o" "modelRN.phl[869]";
connectAttr "FKIndexFinger2_R_rotateX.o" "modelRN.phl[870]";
connectAttr "FKIndexFinger2_R_rotateY.o" "modelRN.phl[871]";
connectAttr "FKIndexFinger2_R_rotateZ.o" "modelRN.phl[872]";
connectAttr "FKIndexFinger3_R_scaleX.o" "modelRN.phl[873]";
connectAttr "FKIndexFinger3_R_scaleY.o" "modelRN.phl[874]";
connectAttr "FKIndexFinger3_R_scaleZ.o" "modelRN.phl[875]";
connectAttr "FKIndexFinger3_R_translateX.o" "modelRN.phl[876]";
connectAttr "FKIndexFinger3_R_translateY.o" "modelRN.phl[877]";
connectAttr "FKIndexFinger3_R_translateZ.o" "modelRN.phl[878]";
connectAttr "FKIndexFinger3_R_rotateX.o" "modelRN.phl[879]";
connectAttr "FKIndexFinger3_R_rotateY.o" "modelRN.phl[880]";
connectAttr "FKIndexFinger3_R_rotateZ.o" "modelRN.phl[881]";
connectAttr "FKMiddleFinger0_R_scaleX.o" "modelRN.phl[882]";
connectAttr "FKMiddleFinger0_R_scaleY.o" "modelRN.phl[883]";
connectAttr "FKMiddleFinger0_R_scaleZ.o" "modelRN.phl[884]";
connectAttr "FKMiddleFinger0_R_translateX.o" "modelRN.phl[885]";
connectAttr "FKMiddleFinger0_R_translateY.o" "modelRN.phl[886]";
connectAttr "FKMiddleFinger0_R_translateZ.o" "modelRN.phl[887]";
connectAttr "FKMiddleFinger0_R_rotateX.o" "modelRN.phl[888]";
connectAttr "FKMiddleFinger0_R_rotateY.o" "modelRN.phl[889]";
connectAttr "FKMiddleFinger0_R_rotateZ.o" "modelRN.phl[890]";
connectAttr "FKMiddleFinger1_R_scaleX.o" "modelRN.phl[891]";
connectAttr "FKMiddleFinger1_R_scaleY.o" "modelRN.phl[892]";
connectAttr "FKMiddleFinger1_R_scaleZ.o" "modelRN.phl[893]";
connectAttr "FKMiddleFinger1_R_translateX.o" "modelRN.phl[894]";
connectAttr "FKMiddleFinger1_R_translateY.o" "modelRN.phl[895]";
connectAttr "FKMiddleFinger1_R_translateZ.o" "modelRN.phl[896]";
connectAttr "FKMiddleFinger1_R_rotateX.o" "modelRN.phl[897]";
connectAttr "FKMiddleFinger1_R_rotateY.o" "modelRN.phl[898]";
connectAttr "FKMiddleFinger1_R_rotateZ.o" "modelRN.phl[899]";
connectAttr "FKMiddleFinger2_R_scaleX.o" "modelRN.phl[900]";
connectAttr "FKMiddleFinger2_R_scaleY.o" "modelRN.phl[901]";
connectAttr "FKMiddleFinger2_R_scaleZ.o" "modelRN.phl[902]";
connectAttr "FKMiddleFinger2_R_translateX.o" "modelRN.phl[903]";
connectAttr "FKMiddleFinger2_R_translateY.o" "modelRN.phl[904]";
connectAttr "FKMiddleFinger2_R_translateZ.o" "modelRN.phl[905]";
connectAttr "FKMiddleFinger2_R_rotateX.o" "modelRN.phl[906]";
connectAttr "FKMiddleFinger2_R_rotateY.o" "modelRN.phl[907]";
connectAttr "FKMiddleFinger2_R_rotateZ.o" "modelRN.phl[908]";
connectAttr "FKMiddleFinger3_R_scaleX.o" "modelRN.phl[909]";
connectAttr "FKMiddleFinger3_R_scaleY.o" "modelRN.phl[910]";
connectAttr "FKMiddleFinger3_R_scaleZ.o" "modelRN.phl[911]";
connectAttr "FKMiddleFinger3_R_translateX.o" "modelRN.phl[912]";
connectAttr "FKMiddleFinger3_R_translateY.o" "modelRN.phl[913]";
connectAttr "FKMiddleFinger3_R_translateZ.o" "modelRN.phl[914]";
connectAttr "FKMiddleFinger3_R_rotateX.o" "modelRN.phl[915]";
connectAttr "FKMiddleFinger3_R_rotateY.o" "modelRN.phl[916]";
connectAttr "FKMiddleFinger3_R_rotateZ.o" "modelRN.phl[917]";
connectAttr "FKRingFinger0_R_scaleX.o" "modelRN.phl[918]";
connectAttr "FKRingFinger0_R_scaleY.o" "modelRN.phl[919]";
connectAttr "FKRingFinger0_R_scaleZ.o" "modelRN.phl[920]";
connectAttr "FKRingFinger0_R_translateX.o" "modelRN.phl[921]";
connectAttr "FKRingFinger0_R_translateY.o" "modelRN.phl[922]";
connectAttr "FKRingFinger0_R_translateZ.o" "modelRN.phl[923]";
connectAttr "FKRingFinger0_R_rotateX.o" "modelRN.phl[924]";
connectAttr "FKRingFinger0_R_rotateY.o" "modelRN.phl[925]";
connectAttr "FKRingFinger0_R_rotateZ.o" "modelRN.phl[926]";
connectAttr "FKRingFinger1_R_scaleX.o" "modelRN.phl[927]";
connectAttr "FKRingFinger1_R_scaleY.o" "modelRN.phl[928]";
connectAttr "FKRingFinger1_R_scaleZ.o" "modelRN.phl[929]";
connectAttr "FKRingFinger1_R_translateX.o" "modelRN.phl[930]";
connectAttr "FKRingFinger1_R_translateY.o" "modelRN.phl[931]";
connectAttr "FKRingFinger1_R_translateZ.o" "modelRN.phl[932]";
connectAttr "FKRingFinger1_R_rotateX.o" "modelRN.phl[933]";
connectAttr "FKRingFinger1_R_rotateY.o" "modelRN.phl[934]";
connectAttr "FKRingFinger1_R_rotateZ.o" "modelRN.phl[935]";
connectAttr "FKRingFinger2_R_scaleX.o" "modelRN.phl[936]";
connectAttr "FKRingFinger2_R_scaleY.o" "modelRN.phl[937]";
connectAttr "FKRingFinger2_R_scaleZ.o" "modelRN.phl[938]";
connectAttr "FKRingFinger2_R_translateX.o" "modelRN.phl[939]";
connectAttr "FKRingFinger2_R_translateY.o" "modelRN.phl[940]";
connectAttr "FKRingFinger2_R_translateZ.o" "modelRN.phl[941]";
connectAttr "FKRingFinger2_R_rotateX.o" "modelRN.phl[942]";
connectAttr "FKRingFinger2_R_rotateY.o" "modelRN.phl[943]";
connectAttr "FKRingFinger2_R_rotateZ.o" "modelRN.phl[944]";
connectAttr "FKRingFinger3_R_scaleX.o" "modelRN.phl[945]";
connectAttr "FKRingFinger3_R_scaleY.o" "modelRN.phl[946]";
connectAttr "FKRingFinger3_R_scaleZ.o" "modelRN.phl[947]";
connectAttr "FKRingFinger3_R_translateX.o" "modelRN.phl[948]";
connectAttr "FKRingFinger3_R_translateY.o" "modelRN.phl[949]";
connectAttr "FKRingFinger3_R_translateZ.o" "modelRN.phl[950]";
connectAttr "FKRingFinger3_R_rotateX.o" "modelRN.phl[951]";
connectAttr "FKRingFinger3_R_rotateY.o" "modelRN.phl[952]";
connectAttr "FKRingFinger3_R_rotateZ.o" "modelRN.phl[953]";
connectAttr "FKPinkyFinger0_R_scaleX.o" "modelRN.phl[954]";
connectAttr "FKPinkyFinger0_R_scaleY.o" "modelRN.phl[955]";
connectAttr "FKPinkyFinger0_R_scaleZ.o" "modelRN.phl[956]";
connectAttr "FKPinkyFinger0_R_translateX.o" "modelRN.phl[957]";
connectAttr "FKPinkyFinger0_R_translateY.o" "modelRN.phl[958]";
connectAttr "FKPinkyFinger0_R_translateZ.o" "modelRN.phl[959]";
connectAttr "FKPinkyFinger0_R_rotateX.o" "modelRN.phl[960]";
connectAttr "FKPinkyFinger0_R_rotateY.o" "modelRN.phl[961]";
connectAttr "FKPinkyFinger0_R_rotateZ.o" "modelRN.phl[962]";
connectAttr "FKPinkyFinger1_R_scaleX.o" "modelRN.phl[963]";
connectAttr "FKPinkyFinger1_R_scaleY.o" "modelRN.phl[964]";
connectAttr "FKPinkyFinger1_R_scaleZ.o" "modelRN.phl[965]";
connectAttr "FKPinkyFinger1_R_translateX.o" "modelRN.phl[966]";
connectAttr "FKPinkyFinger1_R_translateY.o" "modelRN.phl[967]";
connectAttr "FKPinkyFinger1_R_translateZ.o" "modelRN.phl[968]";
connectAttr "FKPinkyFinger1_R_rotateX.o" "modelRN.phl[969]";
connectAttr "FKPinkyFinger1_R_rotateY.o" "modelRN.phl[970]";
connectAttr "FKPinkyFinger1_R_rotateZ.o" "modelRN.phl[971]";
connectAttr "FKPinkyFinger2_R_scaleX.o" "modelRN.phl[972]";
connectAttr "FKPinkyFinger2_R_scaleY.o" "modelRN.phl[973]";
connectAttr "FKPinkyFinger2_R_scaleZ.o" "modelRN.phl[974]";
connectAttr "FKPinkyFinger2_R_rotateX.o" "modelRN.phl[975]";
connectAttr "FKPinkyFinger2_R_rotateY.o" "modelRN.phl[976]";
connectAttr "FKPinkyFinger2_R_rotateZ.o" "modelRN.phl[977]";
connectAttr "FKPinkyFinger2_R_translateX.o" "modelRN.phl[978]";
connectAttr "FKPinkyFinger2_R_translateY.o" "modelRN.phl[979]";
connectAttr "FKPinkyFinger2_R_translateZ.o" "modelRN.phl[980]";
connectAttr "FKPinkyFinger3_R_scaleX.o" "modelRN.phl[981]";
connectAttr "FKPinkyFinger3_R_scaleY.o" "modelRN.phl[982]";
connectAttr "FKPinkyFinger3_R_scaleZ.o" "modelRN.phl[983]";
connectAttr "FKPinkyFinger3_R_translateX.o" "modelRN.phl[984]";
connectAttr "FKPinkyFinger3_R_translateY.o" "modelRN.phl[985]";
connectAttr "FKPinkyFinger3_R_translateZ.o" "modelRN.phl[986]";
connectAttr "FKPinkyFinger3_R_rotateX.o" "modelRN.phl[987]";
connectAttr "FKPinkyFinger3_R_rotateY.o" "modelRN.phl[988]";
connectAttr "FKPinkyFinger3_R_rotateZ.o" "modelRN.phl[989]";
connectAttr "FKThumbFinger1_R_scaleX.o" "modelRN.phl[990]";
connectAttr "FKThumbFinger1_R_scaleY.o" "modelRN.phl[991]";
connectAttr "FKThumbFinger1_R_scaleZ.o" "modelRN.phl[992]";
connectAttr "FKThumbFinger1_R_rotateX.o" "modelRN.phl[993]";
connectAttr "FKThumbFinger1_R_rotateY.o" "modelRN.phl[994]";
connectAttr "FKThumbFinger1_R_rotateZ.o" "modelRN.phl[995]";
connectAttr "FKThumbFinger1_R_translateX.o" "modelRN.phl[996]";
connectAttr "FKThumbFinger1_R_translateY.o" "modelRN.phl[997]";
connectAttr "FKThumbFinger1_R_translateZ.o" "modelRN.phl[998]";
connectAttr "FKThumbFinger2_R_scaleX.o" "modelRN.phl[999]";
connectAttr "FKThumbFinger2_R_scaleY.o" "modelRN.phl[1000]";
connectAttr "FKThumbFinger2_R_scaleZ.o" "modelRN.phl[1001]";
connectAttr "FKThumbFinger2_R_rotateZ.o" "modelRN.phl[1002]";
connectAttr "FKThumbFinger2_R_rotateX.o" "modelRN.phl[1003]";
connectAttr "FKThumbFinger2_R_rotateY.o" "modelRN.phl[1004]";
connectAttr "FKThumbFinger2_R_translateX.o" "modelRN.phl[1005]";
connectAttr "FKThumbFinger2_R_translateY.o" "modelRN.phl[1006]";
connectAttr "FKThumbFinger2_R_translateZ.o" "modelRN.phl[1007]";
connectAttr "FKThumbFinger3_R_scaleX.o" "modelRN.phl[1008]";
connectAttr "FKThumbFinger3_R_scaleY.o" "modelRN.phl[1009]";
connectAttr "FKThumbFinger3_R_scaleZ.o" "modelRN.phl[1010]";
connectAttr "FKThumbFinger3_R_translateX.o" "modelRN.phl[1011]";
connectAttr "FKThumbFinger3_R_translateY.o" "modelRN.phl[1012]";
connectAttr "FKThumbFinger3_R_translateZ.o" "modelRN.phl[1013]";
connectAttr "FKThumbFinger3_R_rotateX.o" "modelRN.phl[1014]";
connectAttr "FKThumbFinger3_R_rotateY.o" "modelRN.phl[1015]";
connectAttr "FKThumbFinger3_R_rotateZ.o" "modelRN.phl[1016]";
connectAttr "FKSkirtJntTop_M_scaleX.o" "modelRN.phl[1017]";
connectAttr "FKSkirtJntTop_M_scaleY.o" "modelRN.phl[1018]";
connectAttr "FKSkirtJntTop_M_scaleZ.o" "modelRN.phl[1019]";
connectAttr "FKSkirtJntTop_M_rotateX.o" "modelRN.phl[1020]";
connectAttr "FKSkirtJntTop_M_rotateY.o" "modelRN.phl[1021]";
connectAttr "FKSkirtJntTop_M_rotateZ.o" "modelRN.phl[1022]";
connectAttr "FKSkirtJntTop_M_translateX.o" "modelRN.phl[1023]";
connectAttr "FKSkirtJntTop_M_translateY.o" "modelRN.phl[1024]";
connectAttr "FKSkirtJntTop_M_translateZ.o" "modelRN.phl[1025]";
connectAttr "FKSkirtJntMid1_M_scaleX.o" "modelRN.phl[1026]";
connectAttr "FKSkirtJntMid1_M_scaleY.o" "modelRN.phl[1027]";
connectAttr "FKSkirtJntMid1_M_scaleZ.o" "modelRN.phl[1028]";
connectAttr "FKSkirtJntMid1_M_rotateX.o" "modelRN.phl[1029]";
connectAttr "FKSkirtJntMid1_M_rotateY.o" "modelRN.phl[1030]";
connectAttr "FKSkirtJntMid1_M_rotateZ.o" "modelRN.phl[1031]";
connectAttr "FKSkirtJntMid1_M_translateX.o" "modelRN.phl[1032]";
connectAttr "FKSkirtJntMid1_M_translateY.o" "modelRN.phl[1033]";
connectAttr "FKSkirtJntMid1_M_translateZ.o" "modelRN.phl[1034]";
connectAttr "FKSkirtJntMid2_M_scaleX.o" "modelRN.phl[1035]";
connectAttr "FKSkirtJntMid2_M_scaleY.o" "modelRN.phl[1036]";
connectAttr "FKSkirtJntMid2_M_scaleZ.o" "modelRN.phl[1037]";
connectAttr "FKSkirtJntMid2_M_translateX.o" "modelRN.phl[1038]";
connectAttr "FKSkirtJntMid2_M_translateY.o" "modelRN.phl[1039]";
connectAttr "FKSkirtJntMid2_M_translateZ.o" "modelRN.phl[1040]";
connectAttr "FKSkirtJntMid2_M_rotateX.o" "modelRN.phl[1041]";
connectAttr "FKSkirtJntMid2_M_rotateY.o" "modelRN.phl[1042]";
connectAttr "FKSkirtJntMid2_M_rotateZ.o" "modelRN.phl[1043]";
connectAttr "FKSkirtJntMid3_M_scaleX.o" "modelRN.phl[1044]";
connectAttr "FKSkirtJntMid3_M_scaleY.o" "modelRN.phl[1045]";
connectAttr "FKSkirtJntMid3_M_scaleZ.o" "modelRN.phl[1046]";
connectAttr "FKSkirtJntMid3_M_rotateX.o" "modelRN.phl[1047]";
connectAttr "FKSkirtJntMid3_M_rotateY.o" "modelRN.phl[1048]";
connectAttr "FKSkirtJntMid3_M_rotateZ.o" "modelRN.phl[1049]";
connectAttr "FKSkirtJntMid3_M_translateX.o" "modelRN.phl[1050]";
connectAttr "FKSkirtJntMid3_M_translateY.o" "modelRN.phl[1051]";
connectAttr "FKSkirtJntMid3_M_translateZ.o" "modelRN.phl[1052]";
connectAttr "FKSkirtJntMid4_M_scaleX.o" "modelRN.phl[1053]";
connectAttr "FKSkirtJntMid4_M_scaleY.o" "modelRN.phl[1054]";
connectAttr "FKSkirtJntMid4_M_scaleZ.o" "modelRN.phl[1055]";
connectAttr "FKSkirtJntMid4_M_translateX.o" "modelRN.phl[1056]";
connectAttr "FKSkirtJntMid4_M_translateY.o" "modelRN.phl[1057]";
connectAttr "FKSkirtJntMid4_M_translateZ.o" "modelRN.phl[1058]";
connectAttr "FKSkirtJntMid4_M_rotateX.o" "modelRN.phl[1059]";
connectAttr "FKSkirtJntMid4_M_rotateY.o" "modelRN.phl[1060]";
connectAttr "FKSkirtJntMid4_M_rotateZ.o" "modelRN.phl[1061]";
connectAttr "FKRoot_M_scaleX.o" "modelRN.phl[1062]";
connectAttr "FKRoot_M_scaleY.o" "modelRN.phl[1063]";
connectAttr "FKRoot_M_scaleZ.o" "modelRN.phl[1064]";
connectAttr "FKRoot_M_translateX.o" "modelRN.phl[1065]";
connectAttr "FKRoot_M_translateY.o" "modelRN.phl[1066]";
connectAttr "FKRoot_M_translateZ.o" "modelRN.phl[1067]";
connectAttr "FKRoot_M_rotateX.o" "modelRN.phl[1068]";
connectAttr "FKRoot_M_rotateY.o" "modelRN.phl[1069]";
connectAttr "FKRoot_M_rotateZ.o" "modelRN.phl[1070]";
connectAttr "FKSpine2_M_scaleX.o" "modelRN.phl[1071]";
connectAttr "FKSpine2_M_scaleY.o" "modelRN.phl[1072]";
connectAttr "FKSpine2_M_scaleZ.o" "modelRN.phl[1073]";
connectAttr "FKSpine2_M_translateX.o" "modelRN.phl[1074]";
connectAttr "FKSpine2_M_translateY.o" "modelRN.phl[1075]";
connectAttr "FKSpine2_M_translateZ.o" "modelRN.phl[1076]";
connectAttr "FKSpine2_M_rotateX.o" "modelRN.phl[1077]";
connectAttr "FKSpine2_M_rotateY.o" "modelRN.phl[1078]";
connectAttr "FKSpine2_M_rotateZ.o" "modelRN.phl[1079]";
connectAttr "HipSwinger_M_rotateX.o" "modelRN.phl[1080]";
connectAttr "HipSwinger_M_rotateY.o" "modelRN.phl[1081]";
connectAttr "HipSwinger_M_rotateZ.o" "modelRN.phl[1082]";
connectAttr "HipSwinger_M_visibility.o" "modelRN.phl[1083]";
connectAttr "FKShoulderArmor_L_scaleX.o" "modelRN.phl[1084]";
connectAttr "FKShoulderArmor_L_scaleY.o" "modelRN.phl[1085]";
connectAttr "FKShoulderArmor_L_scaleZ.o" "modelRN.phl[1086]";
connectAttr "FKShoulderArmor_L_Global.o" "modelRN.phl[1087]";
connectAttr "modelRN.phl[1088]" "pairBlend1.w";
connectAttr "FKShoulderArmor_L_blendFKShoulderL.o" "modelRN.phl[1089]";
connectAttr "pairBlend1.orx" "modelRN.phl[1090]";
connectAttr "pairBlend1.orz" "modelRN.phl[1091]";
connectAttr "FKShoulderArmor_L_rotateY.o" "modelRN.phl[1092]";
connectAttr "FKShoulderArmor_L_translateX.o" "modelRN.phl[1093]";
connectAttr "FKShoulderArmor_L_translateY.o" "modelRN.phl[1094]";
connectAttr "FKShoulderArmor_L_translateZ.o" "modelRN.phl[1095]";
connectAttr "FKIndexFinger0_L_scaleX.o" "modelRN.phl[1096]";
connectAttr "FKIndexFinger0_L_scaleY.o" "modelRN.phl[1097]";
connectAttr "FKIndexFinger0_L_scaleZ.o" "modelRN.phl[1098]";
connectAttr "FKIndexFinger0_L_translateX.o" "modelRN.phl[1099]";
connectAttr "FKIndexFinger0_L_translateY.o" "modelRN.phl[1100]";
connectAttr "FKIndexFinger0_L_translateZ.o" "modelRN.phl[1101]";
connectAttr "FKIndexFinger0_L_rotateX.o" "modelRN.phl[1102]";
connectAttr "FKIndexFinger0_L_rotateY.o" "modelRN.phl[1103]";
connectAttr "FKIndexFinger0_L_rotateZ.o" "modelRN.phl[1104]";
connectAttr "FKSubIndexFinger0_L_rotateX.o" "modelRN.phl[1105]";
connectAttr "FKSubIndexFinger0_L_rotateY.o" "modelRN.phl[1106]";
connectAttr "FKSubIndexFinger0_L_rotateZ.o" "modelRN.phl[1107]";
connectAttr "FKSubIndexFinger0_L_translateX.o" "modelRN.phl[1108]";
connectAttr "FKSubIndexFinger0_L_translateY.o" "modelRN.phl[1109]";
connectAttr "FKSubIndexFinger0_L_translateZ.o" "modelRN.phl[1110]";
connectAttr "FKSubIndexFinger0_L_scaleX.o" "modelRN.phl[1111]";
connectAttr "FKSubIndexFinger0_L_scaleY.o" "modelRN.phl[1112]";
connectAttr "FKSubIndexFinger0_L_scaleZ.o" "modelRN.phl[1113]";
connectAttr "FKIndexFinger1_L_scaleX.o" "modelRN.phl[1114]";
connectAttr "FKIndexFinger1_L_scaleY.o" "modelRN.phl[1115]";
connectAttr "FKIndexFinger1_L_scaleZ.o" "modelRN.phl[1116]";
connectAttr "FKIndexFinger1_L_translateX.o" "modelRN.phl[1117]";
connectAttr "FKIndexFinger1_L_translateY.o" "modelRN.phl[1118]";
connectAttr "FKIndexFinger1_L_translateZ.o" "modelRN.phl[1119]";
connectAttr "FKIndexFinger1_L_rotateX.o" "modelRN.phl[1120]";
connectAttr "FKIndexFinger1_L_rotateY.o" "modelRN.phl[1121]";
connectAttr "FKIndexFinger1_L_rotateZ.o" "modelRN.phl[1122]";
connectAttr "FKIndexFinger2_L_scaleX.o" "modelRN.phl[1123]";
connectAttr "FKIndexFinger2_L_scaleY.o" "modelRN.phl[1124]";
connectAttr "FKIndexFinger2_L_scaleZ.o" "modelRN.phl[1125]";
connectAttr "FKIndexFinger2_L_translateX.o" "modelRN.phl[1126]";
connectAttr "FKIndexFinger2_L_translateY.o" "modelRN.phl[1127]";
connectAttr "FKIndexFinger2_L_translateZ.o" "modelRN.phl[1128]";
connectAttr "FKIndexFinger2_L_rotateX.o" "modelRN.phl[1129]";
connectAttr "FKIndexFinger2_L_rotateY.o" "modelRN.phl[1130]";
connectAttr "FKIndexFinger2_L_rotateZ.o" "modelRN.phl[1131]";
connectAttr "FKIndexFinger3_L_scaleX.o" "modelRN.phl[1132]";
connectAttr "FKIndexFinger3_L_scaleY.o" "modelRN.phl[1133]";
connectAttr "FKIndexFinger3_L_scaleZ.o" "modelRN.phl[1134]";
connectAttr "FKIndexFinger3_L_translateX.o" "modelRN.phl[1135]";
connectAttr "FKIndexFinger3_L_translateY.o" "modelRN.phl[1136]";
connectAttr "FKIndexFinger3_L_translateZ.o" "modelRN.phl[1137]";
connectAttr "FKIndexFinger3_L_rotateX.o" "modelRN.phl[1138]";
connectAttr "FKIndexFinger3_L_rotateY.o" "modelRN.phl[1139]";
connectAttr "FKIndexFinger3_L_rotateZ.o" "modelRN.phl[1140]";
connectAttr "FKMiddleFinger0_L_scaleX.o" "modelRN.phl[1141]";
connectAttr "FKMiddleFinger0_L_scaleY.o" "modelRN.phl[1142]";
connectAttr "FKMiddleFinger0_L_scaleZ.o" "modelRN.phl[1143]";
connectAttr "FKMiddleFinger0_L_translateX.o" "modelRN.phl[1144]";
connectAttr "FKMiddleFinger0_L_translateY.o" "modelRN.phl[1145]";
connectAttr "FKMiddleFinger0_L_translateZ.o" "modelRN.phl[1146]";
connectAttr "FKMiddleFinger0_L_rotateX.o" "modelRN.phl[1147]";
connectAttr "FKMiddleFinger0_L_rotateY.o" "modelRN.phl[1148]";
connectAttr "FKMiddleFinger0_L_rotateZ.o" "modelRN.phl[1149]";
connectAttr "FKSubMiddleFinger0_L_rotateX.o" "modelRN.phl[1150]";
connectAttr "FKSubMiddleFinger0_L_rotateY.o" "modelRN.phl[1151]";
connectAttr "FKSubMiddleFinger0_L_rotateZ.o" "modelRN.phl[1152]";
connectAttr "FKSubMiddleFinger0_L_translateX.o" "modelRN.phl[1153]";
connectAttr "FKSubMiddleFinger0_L_translateY.o" "modelRN.phl[1154]";
connectAttr "FKSubMiddleFinger0_L_translateZ.o" "modelRN.phl[1155]";
connectAttr "FKSubMiddleFinger0_L_scaleX.o" "modelRN.phl[1156]";
connectAttr "FKSubMiddleFinger0_L_scaleY.o" "modelRN.phl[1157]";
connectAttr "FKSubMiddleFinger0_L_scaleZ.o" "modelRN.phl[1158]";
connectAttr "FKMiddleFinger1_L_scaleX.o" "modelRN.phl[1159]";
connectAttr "FKMiddleFinger1_L_scaleY.o" "modelRN.phl[1160]";
connectAttr "FKMiddleFinger1_L_scaleZ.o" "modelRN.phl[1161]";
connectAttr "FKMiddleFinger1_L_translateX.o" "modelRN.phl[1162]";
connectAttr "FKMiddleFinger1_L_translateY.o" "modelRN.phl[1163]";
connectAttr "FKMiddleFinger1_L_translateZ.o" "modelRN.phl[1164]";
connectAttr "FKMiddleFinger1_L_rotateX.o" "modelRN.phl[1165]";
connectAttr "FKMiddleFinger1_L_rotateY.o" "modelRN.phl[1166]";
connectAttr "FKMiddleFinger1_L_rotateZ.o" "modelRN.phl[1167]";
connectAttr "FKMiddleFinger2_L_scaleX.o" "modelRN.phl[1168]";
connectAttr "FKMiddleFinger2_L_scaleY.o" "modelRN.phl[1169]";
connectAttr "FKMiddleFinger2_L_scaleZ.o" "modelRN.phl[1170]";
connectAttr "FKMiddleFinger2_L_translateX.o" "modelRN.phl[1171]";
connectAttr "FKMiddleFinger2_L_translateY.o" "modelRN.phl[1172]";
connectAttr "FKMiddleFinger2_L_translateZ.o" "modelRN.phl[1173]";
connectAttr "FKMiddleFinger2_L_rotateX.o" "modelRN.phl[1174]";
connectAttr "FKMiddleFinger2_L_rotateY.o" "modelRN.phl[1175]";
connectAttr "FKMiddleFinger2_L_rotateZ.o" "modelRN.phl[1176]";
connectAttr "FKMiddleFinger3_L_scaleX.o" "modelRN.phl[1177]";
connectAttr "FKMiddleFinger3_L_scaleY.o" "modelRN.phl[1178]";
connectAttr "FKMiddleFinger3_L_scaleZ.o" "modelRN.phl[1179]";
connectAttr "FKMiddleFinger3_L_translateX.o" "modelRN.phl[1180]";
connectAttr "FKMiddleFinger3_L_translateY.o" "modelRN.phl[1181]";
connectAttr "FKMiddleFinger3_L_translateZ.o" "modelRN.phl[1182]";
connectAttr "FKMiddleFinger3_L_rotateX.o" "modelRN.phl[1183]";
connectAttr "FKMiddleFinger3_L_rotateY.o" "modelRN.phl[1184]";
connectAttr "FKMiddleFinger3_L_rotateZ.o" "modelRN.phl[1185]";
connectAttr "FKRingFinger0_L_scaleX.o" "modelRN.phl[1186]";
connectAttr "FKRingFinger0_L_scaleY.o" "modelRN.phl[1187]";
connectAttr "FKRingFinger0_L_scaleZ.o" "modelRN.phl[1188]";
connectAttr "FKRingFinger0_L_translateX.o" "modelRN.phl[1189]";
connectAttr "FKRingFinger0_L_translateY.o" "modelRN.phl[1190]";
connectAttr "FKRingFinger0_L_translateZ.o" "modelRN.phl[1191]";
connectAttr "FKRingFinger0_L_rotateX.o" "modelRN.phl[1192]";
connectAttr "FKRingFinger0_L_rotateY.o" "modelRN.phl[1193]";
connectAttr "FKRingFinger0_L_rotateZ.o" "modelRN.phl[1194]";
connectAttr "FKSubRingFinger0_L_rotateY.o" "modelRN.phl[1195]";
connectAttr "FKSubRingFinger0_L_rotateX.o" "modelRN.phl[1196]";
connectAttr "FKSubRingFinger0_L_rotateZ.o" "modelRN.phl[1197]";
connectAttr "FKSubRingFinger0_L_translateX.o" "modelRN.phl[1198]";
connectAttr "FKSubRingFinger0_L_translateY.o" "modelRN.phl[1199]";
connectAttr "FKSubRingFinger0_L_translateZ.o" "modelRN.phl[1200]";
connectAttr "FKSubRingFinger0_L_scaleX.o" "modelRN.phl[1201]";
connectAttr "FKSubRingFinger0_L_scaleY.o" "modelRN.phl[1202]";
connectAttr "FKSubRingFinger0_L_scaleZ.o" "modelRN.phl[1203]";
connectAttr "FKRingFinger1_L_scaleX.o" "modelRN.phl[1204]";
connectAttr "FKRingFinger1_L_scaleY.o" "modelRN.phl[1205]";
connectAttr "FKRingFinger1_L_scaleZ.o" "modelRN.phl[1206]";
connectAttr "FKRingFinger1_L_translateX.o" "modelRN.phl[1207]";
connectAttr "FKRingFinger1_L_translateY.o" "modelRN.phl[1208]";
connectAttr "FKRingFinger1_L_translateZ.o" "modelRN.phl[1209]";
connectAttr "FKRingFinger1_L_rotateX.o" "modelRN.phl[1210]";
connectAttr "FKRingFinger1_L_rotateY.o" "modelRN.phl[1211]";
connectAttr "FKRingFinger1_L_rotateZ.o" "modelRN.phl[1212]";
connectAttr "FKRingFinger2_L_scaleX.o" "modelRN.phl[1213]";
connectAttr "FKRingFinger2_L_scaleY.o" "modelRN.phl[1214]";
connectAttr "FKRingFinger2_L_scaleZ.o" "modelRN.phl[1215]";
connectAttr "FKRingFinger2_L_translateX.o" "modelRN.phl[1216]";
connectAttr "FKRingFinger2_L_translateY.o" "modelRN.phl[1217]";
connectAttr "FKRingFinger2_L_translateZ.o" "modelRN.phl[1218]";
connectAttr "FKRingFinger2_L_rotateX.o" "modelRN.phl[1219]";
connectAttr "FKRingFinger2_L_rotateY.o" "modelRN.phl[1220]";
connectAttr "FKRingFinger2_L_rotateZ.o" "modelRN.phl[1221]";
connectAttr "FKRingFinger3_L_scaleX.o" "modelRN.phl[1222]";
connectAttr "FKRingFinger3_L_scaleY.o" "modelRN.phl[1223]";
connectAttr "FKRingFinger3_L_scaleZ.o" "modelRN.phl[1224]";
connectAttr "FKRingFinger3_L_translateX.o" "modelRN.phl[1225]";
connectAttr "FKRingFinger3_L_translateY.o" "modelRN.phl[1226]";
connectAttr "FKRingFinger3_L_translateZ.o" "modelRN.phl[1227]";
connectAttr "FKRingFinger3_L_rotateX.o" "modelRN.phl[1228]";
connectAttr "FKRingFinger3_L_rotateY.o" "modelRN.phl[1229]";
connectAttr "FKRingFinger3_L_rotateZ.o" "modelRN.phl[1230]";
connectAttr "FKPinkyFinger0_L_scaleX.o" "modelRN.phl[1231]";
connectAttr "FKPinkyFinger0_L_scaleY.o" "modelRN.phl[1232]";
connectAttr "FKPinkyFinger0_L_scaleZ.o" "modelRN.phl[1233]";
connectAttr "FKPinkyFinger0_L_translateX.o" "modelRN.phl[1234]";
connectAttr "FKPinkyFinger0_L_translateY.o" "modelRN.phl[1235]";
connectAttr "FKPinkyFinger0_L_translateZ.o" "modelRN.phl[1236]";
connectAttr "FKPinkyFinger0_L_rotateX.o" "modelRN.phl[1237]";
connectAttr "FKPinkyFinger0_L_rotateY.o" "modelRN.phl[1238]";
connectAttr "FKPinkyFinger0_L_rotateZ.o" "modelRN.phl[1239]";
connectAttr "FKSubPinkyFinger0_L_rotateX.o" "modelRN.phl[1240]";
connectAttr "FKSubPinkyFinger0_L_rotateY.o" "modelRN.phl[1241]";
connectAttr "FKSubPinkyFinger0_L_rotateZ.o" "modelRN.phl[1242]";
connectAttr "FKSubPinkyFinger0_L_translateX.o" "modelRN.phl[1243]";
connectAttr "FKSubPinkyFinger0_L_translateY.o" "modelRN.phl[1244]";
connectAttr "FKSubPinkyFinger0_L_translateZ.o" "modelRN.phl[1245]";
connectAttr "FKSubPinkyFinger0_L_scaleX.o" "modelRN.phl[1246]";
connectAttr "FKSubPinkyFinger0_L_scaleY.o" "modelRN.phl[1247]";
connectAttr "FKSubPinkyFinger0_L_scaleZ.o" "modelRN.phl[1248]";
connectAttr "FKPinkyFinger1_L_scaleX.o" "modelRN.phl[1249]";
connectAttr "FKPinkyFinger1_L_scaleY.o" "modelRN.phl[1250]";
connectAttr "FKPinkyFinger1_L_scaleZ.o" "modelRN.phl[1251]";
connectAttr "FKPinkyFinger1_L_translateX.o" "modelRN.phl[1252]";
connectAttr "FKPinkyFinger1_L_translateY.o" "modelRN.phl[1253]";
connectAttr "FKPinkyFinger1_L_translateZ.o" "modelRN.phl[1254]";
connectAttr "FKPinkyFinger1_L_rotateX.o" "modelRN.phl[1255]";
connectAttr "FKPinkyFinger1_L_rotateY.o" "modelRN.phl[1256]";
connectAttr "FKPinkyFinger1_L_rotateZ.o" "modelRN.phl[1257]";
connectAttr "FKPinkyFinger2_L_scaleX.o" "modelRN.phl[1258]";
connectAttr "FKPinkyFinger2_L_scaleY.o" "modelRN.phl[1259]";
connectAttr "FKPinkyFinger2_L_scaleZ.o" "modelRN.phl[1260]";
connectAttr "FKPinkyFinger2_L_translateX.o" "modelRN.phl[1261]";
connectAttr "FKPinkyFinger2_L_translateY.o" "modelRN.phl[1262]";
connectAttr "FKPinkyFinger2_L_translateZ.o" "modelRN.phl[1263]";
connectAttr "FKPinkyFinger2_L_rotateX.o" "modelRN.phl[1264]";
connectAttr "FKPinkyFinger2_L_rotateY.o" "modelRN.phl[1265]";
connectAttr "FKPinkyFinger2_L_rotateZ.o" "modelRN.phl[1266]";
connectAttr "FKPinkyFinger3_L_scaleX.o" "modelRN.phl[1267]";
connectAttr "FKPinkyFinger3_L_scaleY.o" "modelRN.phl[1268]";
connectAttr "FKPinkyFinger3_L_scaleZ.o" "modelRN.phl[1269]";
connectAttr "FKPinkyFinger3_L_translateX.o" "modelRN.phl[1270]";
connectAttr "FKPinkyFinger3_L_translateY.o" "modelRN.phl[1271]";
connectAttr "FKPinkyFinger3_L_translateZ.o" "modelRN.phl[1272]";
connectAttr "FKPinkyFinger3_L_rotateX.o" "modelRN.phl[1273]";
connectAttr "FKPinkyFinger3_L_rotateY.o" "modelRN.phl[1274]";
connectAttr "FKPinkyFinger3_L_rotateZ.o" "modelRN.phl[1275]";
connectAttr "FKThumbFinger1_L_scaleX.o" "modelRN.phl[1276]";
connectAttr "FKThumbFinger1_L_scaleY.o" "modelRN.phl[1277]";
connectAttr "FKThumbFinger1_L_scaleZ.o" "modelRN.phl[1278]";
connectAttr "FKThumbFinger1_L_translateX.o" "modelRN.phl[1279]";
connectAttr "FKThumbFinger1_L_translateY.o" "modelRN.phl[1280]";
connectAttr "FKThumbFinger1_L_translateZ.o" "modelRN.phl[1281]";
connectAttr "FKThumbFinger1_L_rotateX.o" "modelRN.phl[1282]";
connectAttr "FKThumbFinger1_L_rotateY.o" "modelRN.phl[1283]";
connectAttr "FKThumbFinger1_L_rotateZ.o" "modelRN.phl[1284]";
connectAttr "FKThumbFinger2_L_scaleX.o" "modelRN.phl[1285]";
connectAttr "FKThumbFinger2_L_scaleY.o" "modelRN.phl[1286]";
connectAttr "FKThumbFinger2_L_scaleZ.o" "modelRN.phl[1287]";
connectAttr "FKThumbFinger2_L_translateX.o" "modelRN.phl[1288]";
connectAttr "FKThumbFinger2_L_translateY.o" "modelRN.phl[1289]";
connectAttr "FKThumbFinger2_L_translateZ.o" "modelRN.phl[1290]";
connectAttr "FKThumbFinger2_L_rotateX.o" "modelRN.phl[1291]";
connectAttr "FKThumbFinger2_L_rotateY.o" "modelRN.phl[1292]";
connectAttr "FKThumbFinger2_L_rotateZ.o" "modelRN.phl[1293]";
connectAttr "FKThumbFinger3_L_scaleX.o" "modelRN.phl[1294]";
connectAttr "FKThumbFinger3_L_scaleY.o" "modelRN.phl[1295]";
connectAttr "FKThumbFinger3_L_scaleZ.o" "modelRN.phl[1296]";
connectAttr "FKThumbFinger3_L_translateX.o" "modelRN.phl[1297]";
connectAttr "FKThumbFinger3_L_translateY.o" "modelRN.phl[1298]";
connectAttr "FKThumbFinger3_L_translateZ.o" "modelRN.phl[1299]";
connectAttr "FKThumbFinger3_L_rotateX.o" "modelRN.phl[1300]";
connectAttr "FKThumbFinger3_L_rotateY.o" "modelRN.phl[1301]";
connectAttr "FKThumbFinger3_L_rotateZ.o" "modelRN.phl[1302]";
connectAttr "IKLeg_R_scaleX.o" "modelRN.phl[1303]";
connectAttr "IKLeg_R_scaleY.o" "modelRN.phl[1304]";
connectAttr "IKLeg_R_scaleZ.o" "modelRN.phl[1305]";
connectAttr "IKLeg_R_followMain.o" "modelRN.phl[1306]";
connectAttr "IKLeg_R_followRoot.o" "modelRN.phl[1307]";
connectAttr "IKLeg_R_swivel.o" "modelRN.phl[1308]";
connectAttr "IKLeg_R_rock.o" "modelRN.phl[1309]";
connectAttr "IKLeg_R_roll.o" "modelRN.phl[1310]";
connectAttr "IKLeg_R_rollStartAngle.o" "modelRN.phl[1311]";
connectAttr "IKLeg_R_rollEndAngle.o" "modelRN.phl[1312]";
connectAttr "IKLeg_R_stretchy.o" "modelRN.phl[1313]";
connectAttr "IKLeg_R_antiPop.o" "modelRN.phl[1314]";
connectAttr "IKLeg_R_Lenght1.o" "modelRN.phl[1315]";
connectAttr "IKLeg_R_Lenght2.o" "modelRN.phl[1316]";
connectAttr "IKLeg_R_Fatness1.o" "modelRN.phl[1317]";
connectAttr "IKLeg_R_Fatness2.o" "modelRN.phl[1318]";
connectAttr "IKLeg_R_volume.o" "modelRN.phl[1319]";
connectAttr "IKLeg_R_translateY.o" "modelRN.phl[1320]";
connectAttr "IKLeg_R_translateZ.o" "modelRN.phl[1321]";
connectAttr "IKLeg_R_translateX.o" "modelRN.phl[1322]";
connectAttr "IKLeg_R_rotateX.o" "modelRN.phl[1323]";
connectAttr "IKLeg_R_rotateY.o" "modelRN.phl[1324]";
connectAttr "IKLeg_R_rotateZ.o" "modelRN.phl[1325]";
connectAttr "RollHeel_R_translateX.o" "modelRN.phl[1326]";
connectAttr "RollHeel_R_translateY.o" "modelRN.phl[1327]";
connectAttr "RollHeel_R_translateZ.o" "modelRN.phl[1328]";
connectAttr "RollHeel_R_rotateX.o" "modelRN.phl[1329]";
connectAttr "RollHeel_R_rotateY.o" "modelRN.phl[1330]";
connectAttr "RollHeel_R_rotateZ.o" "modelRN.phl[1331]";
connectAttr "RollHeel_R_scaleX.o" "modelRN.phl[1332]";
connectAttr "RollHeel_R_scaleY.o" "modelRN.phl[1333]";
connectAttr "RollHeel_R_scaleZ.o" "modelRN.phl[1334]";
connectAttr "RollToesEnd_R_translateX.o" "modelRN.phl[1335]";
connectAttr "RollToesEnd_R_translateY.o" "modelRN.phl[1336]";
connectAttr "RollToesEnd_R_translateZ.o" "modelRN.phl[1337]";
connectAttr "RollToesEnd_R_rotateX.o" "modelRN.phl[1338]";
connectAttr "RollToesEnd_R_rotateY.o" "modelRN.phl[1339]";
connectAttr "RollToesEnd_R_rotateZ.o" "modelRN.phl[1340]";
connectAttr "RollToesEnd_R_scaleX.o" "modelRN.phl[1341]";
connectAttr "RollToesEnd_R_scaleY.o" "modelRN.phl[1342]";
connectAttr "RollToesEnd_R_scaleZ.o" "modelRN.phl[1343]";
connectAttr "RollToes_R_translateX.o" "modelRN.phl[1344]";
connectAttr "RollToes_R_translateY.o" "modelRN.phl[1345]";
connectAttr "RollToes_R_translateZ.o" "modelRN.phl[1346]";
connectAttr "RollToes_R_rotateX.o" "modelRN.phl[1347]";
connectAttr "RollToes_R_rotateY.o" "modelRN.phl[1348]";
connectAttr "RollToes_R_rotateZ.o" "modelRN.phl[1349]";
connectAttr "RollToes_R_scaleX.o" "modelRN.phl[1350]";
connectAttr "RollToes_R_scaleY.o" "modelRN.phl[1351]";
connectAttr "RollToes_R_scaleZ.o" "modelRN.phl[1352]";
connectAttr "IKToes_R_translateX.o" "modelRN.phl[1353]";
connectAttr "IKToes_R_translateY.o" "modelRN.phl[1354]";
connectAttr "IKToes_R_translateZ.o" "modelRN.phl[1355]";
connectAttr "IKToes_R_rotateX.o" "modelRN.phl[1356]";
connectAttr "IKToes_R_rotateY.o" "modelRN.phl[1357]";
connectAttr "IKToes_R_rotateZ.o" "modelRN.phl[1358]";
connectAttr "IKToes_R_scaleX.o" "modelRN.phl[1359]";
connectAttr "IKToes_R_scaleY.o" "modelRN.phl[1360]";
connectAttr "IKToes_R_scaleZ.o" "modelRN.phl[1361]";
connectAttr "modelRN.phl[1362]" "IKArm_L_parentConstraint1.cpim";
connectAttr "IKArm_L_parentConstraint1.ctx" "modelRN.phl[1363]";
connectAttr "IKArm_L_parentConstraint1.cty" "modelRN.phl[1364]";
connectAttr "IKArm_L_parentConstraint1.ctz" "modelRN.phl[1365]";
connectAttr "IKArm_L_parentConstraint1.crx" "modelRN.phl[1366]";
connectAttr "IKArm_L_parentConstraint1.cry" "modelRN.phl[1367]";
connectAttr "IKArm_L_parentConstraint1.crz" "modelRN.phl[1368]";
connectAttr "modelRN.phl[1369]" "IKArm_L_parentConstraint1.cro";
connectAttr "modelRN.phl[1370]" "IKArm_L_parentConstraint1.crp";
connectAttr "modelRN.phl[1371]" "IKArm_L_parentConstraint1.crt";
connectAttr "IKLeg_L_scaleX.o" "modelRN.phl[1372]";
connectAttr "IKLeg_L_scaleY.o" "modelRN.phl[1373]";
connectAttr "IKLeg_L_scaleZ.o" "modelRN.phl[1374]";
connectAttr "IKLeg_L_followMain.o" "modelRN.phl[1375]";
connectAttr "IKLeg_L_followRoot.o" "modelRN.phl[1376]";
connectAttr "IKLeg_L_swivel.o" "modelRN.phl[1377]";
connectAttr "IKLeg_L_rock.o" "modelRN.phl[1378]";
connectAttr "IKLeg_L_roll.o" "modelRN.phl[1379]";
connectAttr "IKLeg_L_rollStartAngle.o" "modelRN.phl[1380]";
connectAttr "IKLeg_L_rollEndAngle.o" "modelRN.phl[1381]";
connectAttr "IKLeg_L_stretchy.o" "modelRN.phl[1382]";
connectAttr "IKLeg_L_antiPop.o" "modelRN.phl[1383]";
connectAttr "IKLeg_L_Lenght1.o" "modelRN.phl[1384]";
connectAttr "IKLeg_L_Lenght2.o" "modelRN.phl[1385]";
connectAttr "IKLeg_L_Fatness1.o" "modelRN.phl[1386]";
connectAttr "IKLeg_L_Fatness2.o" "modelRN.phl[1387]";
connectAttr "IKLeg_L_volume.o" "modelRN.phl[1388]";
connectAttr "IKLeg_L_translateX.o" "modelRN.phl[1389]";
connectAttr "IKLeg_L_translateY.o" "modelRN.phl[1390]";
connectAttr "IKLeg_L_translateZ.o" "modelRN.phl[1391]";
connectAttr "IKLeg_L_rotateX.o" "modelRN.phl[1392]";
connectAttr "IKLeg_L_rotateY.o" "modelRN.phl[1393]";
connectAttr "IKLeg_L_rotateZ.o" "modelRN.phl[1394]";
connectAttr "RollHeel_L_translateX.o" "modelRN.phl[1395]";
connectAttr "RollHeel_L_translateY.o" "modelRN.phl[1396]";
connectAttr "RollHeel_L_translateZ.o" "modelRN.phl[1397]";
connectAttr "RollHeel_L_rotateX.o" "modelRN.phl[1398]";
connectAttr "RollHeel_L_rotateY.o" "modelRN.phl[1399]";
connectAttr "RollHeel_L_rotateZ.o" "modelRN.phl[1400]";
connectAttr "RollHeel_L_scaleX.o" "modelRN.phl[1401]";
connectAttr "RollHeel_L_scaleY.o" "modelRN.phl[1402]";
connectAttr "RollHeel_L_scaleZ.o" "modelRN.phl[1403]";
connectAttr "RollToesEnd_L_translateX.o" "modelRN.phl[1404]";
connectAttr "RollToesEnd_L_translateY.o" "modelRN.phl[1405]";
connectAttr "RollToesEnd_L_translateZ.o" "modelRN.phl[1406]";
connectAttr "RollToesEnd_L_rotateX.o" "modelRN.phl[1407]";
connectAttr "RollToesEnd_L_rotateY.o" "modelRN.phl[1408]";
connectAttr "RollToesEnd_L_rotateZ.o" "modelRN.phl[1409]";
connectAttr "RollToesEnd_L_scaleX.o" "modelRN.phl[1410]";
connectAttr "RollToesEnd_L_scaleY.o" "modelRN.phl[1411]";
connectAttr "RollToesEnd_L_scaleZ.o" "modelRN.phl[1412]";
connectAttr "RollToes_L_translateX.o" "modelRN.phl[1413]";
connectAttr "RollToes_L_translateY.o" "modelRN.phl[1414]";
connectAttr "RollToes_L_translateZ.o" "modelRN.phl[1415]";
connectAttr "RollToes_L_rotateX.o" "modelRN.phl[1416]";
connectAttr "RollToes_L_rotateY.o" "modelRN.phl[1417]";
connectAttr "RollToes_L_rotateZ.o" "modelRN.phl[1418]";
connectAttr "RollToes_L_scaleX.o" "modelRN.phl[1419]";
connectAttr "RollToes_L_scaleY.o" "modelRN.phl[1420]";
connectAttr "RollToes_L_scaleZ.o" "modelRN.phl[1421]";
connectAttr "IKToes_L_translateX.o" "modelRN.phl[1422]";
connectAttr "IKToes_L_translateY.o" "modelRN.phl[1423]";
connectAttr "IKToes_L_translateZ.o" "modelRN.phl[1424]";
connectAttr "IKToes_L_rotateX.o" "modelRN.phl[1425]";
connectAttr "IKToes_L_rotateY.o" "modelRN.phl[1426]";
connectAttr "IKToes_L_rotateZ.o" "modelRN.phl[1427]";
connectAttr "IKToes_L_scaleX.o" "modelRN.phl[1428]";
connectAttr "IKToes_L_scaleY.o" "modelRN.phl[1429]";
connectAttr "IKToes_L_scaleZ.o" "modelRN.phl[1430]";
connectAttr "PoleLeg_R_translateX.o" "modelRN.phl[1431]";
connectAttr "PoleLeg_R_translateY.o" "modelRN.phl[1432]";
connectAttr "PoleLeg_R_translateZ.o" "modelRN.phl[1433]";
connectAttr "PoleLeg_R_follow.o" "modelRN.phl[1434]";
connectAttr "PoleLeg_R_lock.o" "modelRN.phl[1435]";
connectAttr "PoleArm_L_translateX.o" "modelRN.phl[1436]";
connectAttr "PoleArm_L_translateY.o" "modelRN.phl[1437]";
connectAttr "PoleArm_L_translateZ.o" "modelRN.phl[1438]";
connectAttr "PoleArm_L_follow.o" "modelRN.phl[1439]";
connectAttr "PoleArm_L_lock.o" "modelRN.phl[1440]";
connectAttr "PoleLeg_L_translateX.o" "modelRN.phl[1441]";
connectAttr "PoleLeg_L_translateY.o" "modelRN.phl[1442]";
connectAttr "PoleLeg_L_translateZ.o" "modelRN.phl[1443]";
connectAttr "PoleLeg_L_follow.o" "modelRN.phl[1444]";
connectAttr "PoleLeg_L_lock.o" "modelRN.phl[1445]";
connectAttr "FKIKArm_R_FKIKBlend.o" "modelRN.phl[1446]";
connectAttr "FKIKArm_R_IKVis.o" "modelRN.phl[1447]";
connectAttr "FKIKArm_R_FKVis.o" "modelRN.phl[1448]";
connectAttr "FKIKLeg_R_FKIKBlend.o" "modelRN.phl[1449]";
connectAttr "FKIKLeg_R_IKVis.o" "modelRN.phl[1450]";
connectAttr "FKIKLeg_R_FKVis.o" "modelRN.phl[1451]";
connectAttr "FKIKSpine_M_FKIKBlend.o" "modelRN.phl[1452]";
connectAttr "FKIKSpine_M_IKVis.o" "modelRN.phl[1453]";
connectAttr "FKIKSpine_M_FKVis.o" "modelRN.phl[1454]";
connectAttr "FKIKArm_L_FKIKBlend.o" "modelRN.phl[1455]";
connectAttr "FKIKArm_L_IKVis.o" "modelRN.phl[1456]";
connectAttr "FKIKArm_L_FKVis.o" "modelRN.phl[1457]";
connectAttr "FKIKLeg_L_FKIKBlend.o" "modelRN.phl[1458]";
connectAttr "FKIKLeg_L_IKVis.o" "modelRN.phl[1459]";
connectAttr "FKIKLeg_L_FKVis.o" "modelRN.phl[1460]";
connectAttr "RootX_M_translateX.o" "modelRN.phl[1461]";
connectAttr "RootX_M_translateY.o" "modelRN.phl[1462]";
connectAttr "RootX_M_translateZ.o" "modelRN.phl[1463]";
connectAttr "RootX_M_visibility.o" "modelRN.phl[1464]";
connectAttr "RootX_M_rotateX.o" "modelRN.phl[1465]";
connectAttr "RootX_M_rotateY.o" "modelRN.phl[1466]";
connectAttr "RootX_M_rotateZ.o" "modelRN.phl[1467]";
connectAttr "Fingers_L_spread.o" "modelRN.phl[1468]";
connectAttr "Fingers_L_indexCurl.o" "modelRN.phl[1469]";
connectAttr "Fingers_L_middleCurl.o" "modelRN.phl[1470]";
connectAttr "Fingers_L_ringCurl.o" "modelRN.phl[1471]";
connectAttr "Fingers_L_pinkyCurl.o" "modelRN.phl[1472]";
connectAttr "Fingers_L_thumbCurl.o" "modelRN.phl[1473]";
connectAttr "modelRN.phl[1474]" "Handle_ctr_parentConstraint2.tg[0].tt";
connectAttr "modelRN.phl[1475]" "Handle_ctr_parentConstraint2.tg[0].tr";
connectAttr "modelRN.phl[1476]" "Handle_ctr_parentConstraint2.tg[0].ts";
connectAttr "Fingers_R_spread.o" "modelRN.phl[1477]";
connectAttr "Fingers_R_indexCurl.o" "modelRN.phl[1478]";
connectAttr "Fingers_R_middleCurl.o" "modelRN.phl[1479]";
connectAttr "Fingers_R_ringCurl.o" "modelRN.phl[1480]";
connectAttr "Fingers_R_pinkyCurl.o" "modelRN.phl[1481]";
connectAttr "Fingers_R_thumbCurl.o" "modelRN.phl[1482]";
connectAttr "modelRN.phl[1483]" "Handle_ctr_parentConstraint2.tg[0].trp";
connectAttr "modelRN.phl[1484]" "Handle_ctr_parentConstraint2.tg[0].trt";
connectAttr "modelRN.phl[1485]" "Handle_ctr_parentConstraint2.tg[0].tro";
connectAttr "modelRN.phl[1486]" "Handle_ctr_parentConstraint2.tg[0].tpm";
connectAttr "Main_translateZ1.o" "GuardBat_RigRN.phl[1]";
connectAttr "Main_translateY1.o" "GuardBat_RigRN.phl[2]";
connectAttr "Main_translateX1.o" "GuardBat_RigRN.phl[3]";
connectAttr "Main_rotateX.o" "GuardBat_RigRN.phl[4]";
connectAttr "Main_rotateY.o" "GuardBat_RigRN.phl[5]";
connectAttr "Main_rotateZ.o" "GuardBat_RigRN.phl[6]";
connectAttr "Main_scaleX1.o" "GuardBat_RigRN.phl[7]";
connectAttr "Main_scaleY1.o" "GuardBat_RigRN.phl[8]";
connectAttr "Main_scaleZ1.o" "GuardBat_RigRN.phl[9]";
connectAttr "Main_visibility1.o" "GuardBat_RigRN.phl[10]";
connectAttr "FKRoot_M_scaleX1.o" "GuardBat_RigRN.phl[11]";
connectAttr "FKRoot_M_scaleY1.o" "GuardBat_RigRN.phl[12]";
connectAttr "FKRoot_M_scaleZ1.o" "GuardBat_RigRN.phl[13]";
connectAttr "FKRoot_M_translateX1.o" "GuardBat_RigRN.phl[14]";
connectAttr "FKRoot_M_translateY1.o" "GuardBat_RigRN.phl[15]";
connectAttr "FKRoot_M_translateZ1.o" "GuardBat_RigRN.phl[16]";
connectAttr "FKRoot_M_rotateX1.o" "GuardBat_RigRN.phl[17]";
connectAttr "FKRoot_M_rotateY1.o" "GuardBat_RigRN.phl[18]";
connectAttr "FKRoot_M_rotateZ1.o" "GuardBat_RigRN.phl[19]";
connectAttr "FKjoint2_M_scaleX.o" "GuardBat_RigRN.phl[20]";
connectAttr "FKjoint2_M_scaleY.o" "GuardBat_RigRN.phl[21]";
connectAttr "FKjoint2_M_scaleZ.o" "GuardBat_RigRN.phl[22]";
connectAttr "FKjoint2_M_translateX.o" "GuardBat_RigRN.phl[23]";
connectAttr "FKjoint2_M_translateY.o" "GuardBat_RigRN.phl[24]";
connectAttr "FKjoint2_M_translateZ.o" "GuardBat_RigRN.phl[25]";
connectAttr "FKjoint2_M_rotateX.o" "GuardBat_RigRN.phl[26]";
connectAttr "FKjoint2_M_rotateY.o" "GuardBat_RigRN.phl[27]";
connectAttr "FKjoint2_M_rotateZ.o" "GuardBat_RigRN.phl[28]";
connectAttr "FKjoint3_M_scaleX.o" "GuardBat_RigRN.phl[29]";
connectAttr "FKjoint3_M_scaleY.o" "GuardBat_RigRN.phl[30]";
connectAttr "FKjoint3_M_scaleZ.o" "GuardBat_RigRN.phl[31]";
connectAttr "FKjoint3_M_translateX.o" "GuardBat_RigRN.phl[32]";
connectAttr "FKjoint3_M_translateY.o" "GuardBat_RigRN.phl[33]";
connectAttr "FKjoint3_M_translateZ.o" "GuardBat_RigRN.phl[34]";
connectAttr "FKjoint3_M_rotateX.o" "GuardBat_RigRN.phl[35]";
connectAttr "FKjoint3_M_rotateY.o" "GuardBat_RigRN.phl[36]";
connectAttr "FKjoint3_M_rotateZ.o" "GuardBat_RigRN.phl[37]";
connectAttr "FKjoint4_M_scaleX.o" "GuardBat_RigRN.phl[38]";
connectAttr "FKjoint4_M_scaleY.o" "GuardBat_RigRN.phl[39]";
connectAttr "FKjoint4_M_scaleZ.o" "GuardBat_RigRN.phl[40]";
connectAttr "FKjoint4_M_translateX.o" "GuardBat_RigRN.phl[41]";
connectAttr "FKjoint4_M_translateY.o" "GuardBat_RigRN.phl[42]";
connectAttr "FKjoint4_M_translateZ.o" "GuardBat_RigRN.phl[43]";
connectAttr "FKjoint4_M_rotateX.o" "GuardBat_RigRN.phl[44]";
connectAttr "FKjoint4_M_rotateY.o" "GuardBat_RigRN.phl[45]";
connectAttr "FKjoint4_M_rotateZ.o" "GuardBat_RigRN.phl[46]";
connectAttr "FKjoint5_M_scaleX.o" "GuardBat_RigRN.phl[47]";
connectAttr "FKjoint5_M_scaleY.o" "GuardBat_RigRN.phl[48]";
connectAttr "FKjoint5_M_scaleZ.o" "GuardBat_RigRN.phl[49]";
connectAttr "FKjoint5_M_translateX.o" "GuardBat_RigRN.phl[50]";
connectAttr "FKjoint5_M_translateY.o" "GuardBat_RigRN.phl[51]";
connectAttr "FKjoint5_M_translateZ.o" "GuardBat_RigRN.phl[52]";
connectAttr "FKjoint5_M_rotateX.o" "GuardBat_RigRN.phl[53]";
connectAttr "FKjoint5_M_rotateY.o" "GuardBat_RigRN.phl[54]";
connectAttr "FKjoint5_M_rotateZ.o" "GuardBat_RigRN.phl[55]";
connectAttr "FKjoint6_M_scaleX.o" "GuardBat_RigRN.phl[56]";
connectAttr "FKjoint6_M_scaleY.o" "GuardBat_RigRN.phl[57]";
connectAttr "FKjoint6_M_scaleZ.o" "GuardBat_RigRN.phl[58]";
connectAttr "FKjoint6_M_translateX.o" "GuardBat_RigRN.phl[59]";
connectAttr "FKjoint6_M_translateY.o" "GuardBat_RigRN.phl[60]";
connectAttr "FKjoint6_M_translateZ.o" "GuardBat_RigRN.phl[61]";
connectAttr "FKjoint6_M_rotateX.o" "GuardBat_RigRN.phl[62]";
connectAttr "FKjoint6_M_rotateY.o" "GuardBat_RigRN.phl[63]";
connectAttr "FKjoint6_M_rotateZ.o" "GuardBat_RigRN.phl[64]";
connectAttr "FKjoint7_M_scaleX.o" "GuardBat_RigRN.phl[65]";
connectAttr "FKjoint7_M_scaleY.o" "GuardBat_RigRN.phl[66]";
connectAttr "FKjoint7_M_scaleZ.o" "GuardBat_RigRN.phl[67]";
connectAttr "FKjoint7_M_translateX.o" "GuardBat_RigRN.phl[68]";
connectAttr "FKjoint7_M_translateY.o" "GuardBat_RigRN.phl[69]";
connectAttr "FKjoint7_M_translateZ.o" "GuardBat_RigRN.phl[70]";
connectAttr "FKjoint7_M_rotateX.o" "GuardBat_RigRN.phl[71]";
connectAttr "FKjoint7_M_rotateY.o" "GuardBat_RigRN.phl[72]";
connectAttr "FKjoint7_M_rotateZ.o" "GuardBat_RigRN.phl[73]";
connectAttr "FKjoint8_M_scaleX.o" "GuardBat_RigRN.phl[74]";
connectAttr "FKjoint8_M_scaleY.o" "GuardBat_RigRN.phl[75]";
connectAttr "FKjoint8_M_scaleZ.o" "GuardBat_RigRN.phl[76]";
connectAttr "FKjoint8_M_translateX.o" "GuardBat_RigRN.phl[77]";
connectAttr "FKjoint8_M_translateY.o" "GuardBat_RigRN.phl[78]";
connectAttr "FKjoint8_M_translateZ.o" "GuardBat_RigRN.phl[79]";
connectAttr "FKjoint8_M_rotateX.o" "GuardBat_RigRN.phl[80]";
connectAttr "FKjoint8_M_rotateY.o" "GuardBat_RigRN.phl[81]";
connectAttr "FKjoint8_M_rotateZ.o" "GuardBat_RigRN.phl[82]";
connectAttr "GuardBat_RigRN.phl[83]" "IKArm_L_parentConstraint1.tg[0].ts";
connectAttr "GuardBat_RigRN.phl[84]" "IKArm_L_parentConstraint1.tg[0].tt";
connectAttr "Handle_ctr_parentConstraint2.ctx" "GuardBat_RigRN.phl[85]";
connectAttr "Handle_ctr_parentConstraint2.cty" "GuardBat_RigRN.phl[86]";
connectAttr "Handle_ctr_parentConstraint2.ctz" "GuardBat_RigRN.phl[87]";
connectAttr "GuardBat_RigRN.phl[88]" "IKArm_L_parentConstraint1.tg[0].tr";
connectAttr "Handle_ctr_parentConstraint2.crx" "GuardBat_RigRN.phl[89]";
connectAttr "Handle_ctr_parentConstraint2.cry" "GuardBat_RigRN.phl[90]";
connectAttr "Handle_ctr_parentConstraint2.crz" "GuardBat_RigRN.phl[91]";
connectAttr "GuardBat_RigRN.phl[92]" "Handle_ctr_parentConstraint2.cro";
connectAttr "GuardBat_RigRN.phl[93]" "IKArm_L_parentConstraint1.tg[0].tro";
connectAttr "GuardBat_RigRN.phl[94]" "Handle_ctr_parentConstraint2.cpim";
connectAttr "GuardBat_RigRN.phl[95]" "Handle_ctr_parentConstraint2.crp";
connectAttr "GuardBat_RigRN.phl[96]" "IKArm_L_parentConstraint1.tg[0].trp";
connectAttr "GuardBat_RigRN.phl[97]" "Handle_ctr_parentConstraint2.crt";
connectAttr "GuardBat_RigRN.phl[98]" "IKArm_L_parentConstraint1.tg[0].trt";
connectAttr "GuardBat_RigRN.phl[99]" "IKArm_L_parentConstraint1.tg[0].tpm";
connectAttr "front1_rotateX.o" "GuardBat_RigRN.phl[100]";
connectAttr "front1_rotateY.o" "GuardBat_RigRN.phl[101]";
connectAttr "front1_rotateZ.o" "GuardBat_RigRN.phl[102]";
connectAttr "front1_visibility1.o" "GuardBat_RigRN.phl[103]";
connectAttr "front1_translateX.o" "GuardBat_RigRN.phl[104]";
connectAttr "front1_translateY.o" "GuardBat_RigRN.phl[105]";
connectAttr "front1_translateZ.o" "GuardBat_RigRN.phl[106]";
connectAttr "front1_scaleX1.o" "GuardBat_RigRN.phl[107]";
connectAttr "front1_scaleY1.o" "GuardBat_RigRN.phl[108]";
connectAttr "front1_scaleZ1.o" "GuardBat_RigRN.phl[109]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "front1_visibility.o" "front1.v";
connectAttr "front1_scaleX.o" "front1.sx";
connectAttr "front1_scaleY.o" "front1.sy";
connectAttr "front1_scaleZ.o" "front1.sz";
connectAttr "Handle_ctr_parentConstraint1.w0" "Handle_ctr_parentConstraint1.tg[0].tw"
		;
connectAttr "IKArm_L_parentConstraint1.w0" "IKArm_L_parentConstraint1.tg[0].tw";
connectAttr "Handle_ctr_parentConstraint2.w0" "Handle_ctr_parentConstraint2.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "FKjoint1_M_scaleX.o" "modelRN.phl[432]";
connectAttr "FKjoint1_M_scaleY.o" "modelRN.phl[433]";
connectAttr "FKjoint1_M_scaleZ.o" "modelRN.phl[434]";
connectAttr "FKjoint1_M_translateX.o" "modelRN.phl[435]";
connectAttr "FKjoint1_M_translateY.o" "modelRN.phl[436]";
connectAttr "FKjoint1_M_translateZ.o" "modelRN.phl[437]";
connectAttr "FKjoint1_M_rotateX.o" "modelRN.phl[438]";
connectAttr "FKjoint1_M_rotateY.o" "modelRN.phl[439]";
connectAttr "FKjoint1_M_rotateZ.o" "modelRN.phl[440]";
connectAttr "FKjoint11_M_scaleX.o" "modelRN.phl[441]";
connectAttr "FKjoint11_M_scaleY.o" "modelRN.phl[442]";
connectAttr "FKjoint11_M_scaleZ.o" "modelRN.phl[443]";
connectAttr "FKjoint11_M_translateX.o" "modelRN.phl[444]";
connectAttr "FKjoint11_M_translateY.o" "modelRN.phl[445]";
connectAttr "FKjoint11_M_translateZ.o" "modelRN.phl[446]";
connectAttr "FKjoint11_M_rotateX.o" "modelRN.phl[447]";
connectAttr "FKjoint11_M_rotateY.o" "modelRN.phl[448]";
connectAttr "FKjoint11_M_rotateZ.o" "modelRN.phl[449]";
connectAttr "FKjoint12_M_scaleX.o" "modelRN.phl[450]";
connectAttr "FKjoint12_M_scaleY.o" "modelRN.phl[451]";
connectAttr "FKjoint12_M_scaleZ.o" "modelRN.phl[452]";
connectAttr "FKjoint12_M_translateX.o" "modelRN.phl[453]";
connectAttr "FKjoint12_M_translateY.o" "modelRN.phl[454]";
connectAttr "FKjoint12_M_translateZ.o" "modelRN.phl[455]";
connectAttr "FKjoint12_M_rotateX.o" "modelRN.phl[456]";
connectAttr "FKjoint12_M_rotateY.o" "modelRN.phl[457]";
connectAttr "FKjoint12_M_rotateZ.o" "modelRN.phl[458]";
connectAttr "FKjoint13_M_scaleX.o" "modelRN.phl[459]";
connectAttr "FKjoint13_M_scaleY.o" "modelRN.phl[460]";
connectAttr "FKjoint13_M_scaleZ.o" "modelRN.phl[461]";
connectAttr "FKjoint13_M_translateX.o" "modelRN.phl[462]";
connectAttr "FKjoint13_M_translateY.o" "modelRN.phl[463]";
connectAttr "FKjoint13_M_translateZ.o" "modelRN.phl[464]";
connectAttr "FKjoint13_M_rotateX.o" "modelRN.phl[465]";
connectAttr "FKjoint13_M_rotateY.o" "modelRN.phl[466]";
connectAttr "FKjoint13_M_rotateZ.o" "modelRN.phl[467]";
connectAttr "FKjoint14_M_scaleX.o" "modelRN.phl[468]";
connectAttr "FKjoint14_M_scaleY.o" "modelRN.phl[469]";
connectAttr "FKjoint14_M_scaleZ.o" "modelRN.phl[470]";
connectAttr "FKjoint14_M_translateX.o" "modelRN.phl[471]";
connectAttr "FKjoint14_M_translateY.o" "modelRN.phl[472]";
connectAttr "FKjoint14_M_translateZ.o" "modelRN.phl[473]";
connectAttr "FKjoint14_M_rotateX.o" "modelRN.phl[474]";
connectAttr "FKjoint14_M_rotateY.o" "modelRN.phl[475]";
connectAttr "FKjoint14_M_rotateZ.o" "modelRN.phl[476]";
connectAttr "FKElbow_R_scaleX.o" "modelRN.phl[653]";
connectAttr "FKElbow_R_scaleY.o" "modelRN.phl[654]";
connectAttr "FKElbow_R_scaleZ.o" "modelRN.phl[655]";
connectAttr "FKElbow_R_rotateZ.o" "modelRN.phl[656]";
connectAttr "FKElbow_R_rotateX.o" "modelRN.phl[657]";
connectAttr "FKElbow_R_rotateY.o" "modelRN.phl[658]";
connectAttr "FKElbow_R_translateX.o" "modelRN.phl[659]";
connectAttr "FKElbow_R_translateY.o" "modelRN.phl[660]";
connectAttr "FKElbow_R_translateZ.o" "modelRN.phl[661]";
connectAttr "FKElbow_L_scaleX.o" "modelRN.phl[700]";
connectAttr "FKElbow_L_scaleY.o" "modelRN.phl[701]";
connectAttr "FKElbow_L_scaleZ.o" "modelRN.phl[702]";
connectAttr "FKElbow_L_rotateZ.o" "modelRN.phl[703]";
connectAttr "FKElbow_L_rotateX.o" "modelRN.phl[704]";
connectAttr "FKElbow_L_rotateY.o" "modelRN.phl[705]";
connectAttr "FKElbow_L_translateX.o" "modelRN.phl[706]";
connectAttr "FKElbow_L_translateY.o" "modelRN.phl[707]";
connectAttr "FKElbow_L_translateZ.o" "modelRN.phl[708]";
connectAttr "sharedReferenceNode.sr" "modelRN.sr";
connectAttr "modelRNfosterParent1.msg" "modelRN.fp";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "GuardBat_RigRNfosterParent1.msg" "GuardBat_RigRN.fp";
connectAttr "sharedReferenceNode.sr" "GuardBat_RigRN.sr";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "pairBlend2_inRotateX1.o" "pairBlend2.irx1";
connectAttr "pairBlend2_inRotateZ1.o" "pairBlend2.irz1";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Guard_Walk_with_Weapon_V08_Polish.ma
