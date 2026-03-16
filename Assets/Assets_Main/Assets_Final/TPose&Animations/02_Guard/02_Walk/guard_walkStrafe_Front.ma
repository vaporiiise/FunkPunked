//Maya ASCII 2024 scene
//Name: guard_walkStrafe_F_ver023.ma
//Last modified: Tue, Mar 10, 2026 01:15:01 AM
//Codeset: 1252
file -rdi 1 -ns "model" -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "P:/Funked Punk//01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig.ma";
file -rdi 1 -ns "model1" -rfn "modelRN1" -op "v=0;" -typ "mayaAscii" "P:/Funked Punk//01_Assets/02_CharaProps/02_pGuardBat/02_Rig/GuardBat_Rig.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" -op "v=0;" -typ "mayaAscii" "P:/Funked Punk//01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig.ma";
file -r -ns "model1" -dr 1 -rfn "modelRN1" -op "v=0;" -typ "mayaAscii" "P:/Funked Punk//01_Assets/02_CharaProps/02_pGuardBat/02_Rig/GuardBat_Rig.ma";
requires maya "2024";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.5.4.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 26200)";
fileInfo "UUID" "AE2A7EFA-40D2-F365-2881-F3A80B4A17C4";
createNode transform -s -n "persp";
	rename -uid "1AB76401-4F75-A84D-CC9A-B9A03A5BBFFB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -511.08323158740109 66.982770890150988 -38.773500240530225 ;
	setAttr ".r" -type "double3" 2.4000000000009702 -95.199999999999221 0 ;
	setAttr ".rpt" -type "double3" 7.7473266185451987e-16 -2.7061936952958154e-15 -1.2679880883357232e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F384CA82-4B66-0BE4-8874-C591A9FB8C3E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 509.63855749816435;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -24.486962028341118 10.999698451087937 18.718579477400695 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dst" yes;
createNode transform -s -n "top";
	rename -uid "B53AA55D-462C-6241-AF3F-1A819AE017B2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "93AAAFB2-4504-0A0F-B992-52BFAEEBA578";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "70029512-4CF2-F6AE-7B48-6FB2514775B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2984286068596766 88.754781993161799 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B91F91CE-4CC8-43FF-45AB-559F8888E264";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 395.8266708578351;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".dst" yes;
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0B62BD7A-43C1-16C0-113D-10BB3CEAEB84";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 22.407894868606128 34.507262276915114 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C28F01BD-4F8A-B0A1-E261-4EBABA6EE501";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 800.72943604368993;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "2AAA1300-4D2D-ED5C-898C-3A921D9DF417";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 700.48221716508976 700.48221716508976 700.48221716508976 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "5A49299D-40C1-70C8-4749-54A08E0481B3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "back";
	rename -uid "A77316F4-4A9E-D4EC-1748-82948496319E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6655188431844081 89.60960414532515 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "E17E6C99-41F3-A5F3-B2E7-2FBD2C7CFE03";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 387.80006669413194;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".dst" yes;
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left";
	rename -uid "1645905D-4F62-80AE-02A5-4E86607315D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 127.75057468319244 7.1756199420814397 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "5ACDDEE8-4E70-673D-3E46-1F9C5A782F47";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 223.98169792503347;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "group";
	rename -uid "F07D89AA-4074-95FC-C910-EC870F9DE340";
	setAttr ".rp" -type "double3" -1.1030293263779924 -20.543371318251587 -31.796321873718313 ;
	setAttr ".sp" -type "double3" -1.1030293263779924 -20.543371318251587 -31.796321873718313 ;
createNode transform -n "model2:Group" -p "group";
	rename -uid "AFFCEE2B-4A47-F6E9-CE34-539EC40BA7A3";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model2:FitSkeleton" -p "model2:Group";
	rename -uid "622D7FE2-4440-D138-C37B-D8BA35ECB727";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "fitSkeletonTemplate" -ln "fitSkeletonTemplate" -dt "string";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -ci true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -ci true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -ci true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -ci true -sn "gameEngine" -ln "gameEngine" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useOffsetParentMatrix" -ln "useOffsetParentMatrix" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "subControllers" -ln "subControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraControllers" -ln "extraControllers" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
	addAttr -r false -s false -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" 
		-at "message";
	addAttr -ci true -m -sn "drivingSystem_Fingers_L" -ln "drivingSystem_Fingers_L" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "drivingSystem_Fingers_R" -ln "drivingSystem_Fingers_R" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".visCylinders" yes;
	setAttr ".visGap" 1;
	setAttr ".fitSkeletonTemplate" -type "string" "biped";
	setAttr -k on ".visPoleVector" yes;
	setAttr -k on ".visJointOrient" yes;
	setAttr -k on ".visJointAxis" yes;
	setAttr ".objectsSkin" -type "string" (
		"Index_Ball_R_01_geo Middle_Ball_L_03_geo Pointer_R_Cover_geo Index_Ball_R_03_geo Thigh_L_geo Index_R_03_geo InnerRotater_R_geo Knee_L_geo Thumb_R_Cover_geo Hand_Shield_L_geo Hand_Shield_R_geo Knee_R_geo Wrist_Ball_R_geo Middle_Ball_R_02_geo Middle_Ball_R_03_geo Elbow_Ball_R_geo Ling_R_01_geo InnerRod_R_geo Thumb_L_Cover_geo InnerLotater_L_geo Pinkie_R_01_geo Belt_geo Elbow_Cover_L_geo Pinkie_L_01_geo Middle_L_01_geo ShoulderRotater_R_geo Index_Ball_R_02_geo Pointer_L_Cover_geo Index_L_02_geo Ring_Ball_R_01_geo Hand_Inner_R_geo Sole_L Thigh_R_geo ArmCover_Lower_Inner_R_geo Pinkie_Ball_R_01_geo Thumb_Ball_R_02_geo Ring_R_02_geo Tongue_R_geo Neck_geo Index_R_01_geo Ling_Ball_R_03_geo Palm_L_Cover_geo Thumb_R_01_geo ShoulderScrew_R_geo Elbow_Cover_R_geo Elbow_Ball_L_geo Pinkie_L_02_geo Index_Ball_L_01_geo Index_Ball_L_02_geo Sole_R_geo Ling_R_02_geo Knuckle_R_Cover_geo Ring_R_01_geo Thumb_Ball_L_02_geo Hand_Inner_L_geo Ring_R_03_geo Wrist_Ball_L_geo Middle_L_02_geo Neck_Collar_Inner_geo Middle_Ball_L_02_geo Thumb_L_02_geo Index_R_02_geo Ankle_Ball_R_geo Pinkie_Ball_R_02_geo Middle_Ball_L_01_geo Thumb_L_01_geo Palm_R_Cover_geo ArmCover_Lower_R_geo Index_Ball_L_03_geo Ring_Ball_R_02_geo Knee_Ball_L_geo Pinkie_Ball_R_03_geo Neck_Collar_geo Strap_L Skirt_geo Pinkie_Ball_L_01_geo ArmCover_Upper_L_geo WristCover_L_geo Thumb_Ball_R_01_geo Ankle_Ball_L_geo Hair_Attacher_geo Neck_Collar_Outer_geo Thumb_Ball_L_01_geo Ring_Ball_R_03_geo Thumb_R_02_geo Pinkie_R_02_geo Calves_L_geo ArmCover_Lower_Inner_L_geo Middle_R_03_geo Shoulder_L_geo Pinkie_R_03_geo Pinkie_Ball_L_02_geo Middle_L_03_geo ShoulderRotater_L_geo Ling_Ball_R_01_geo Index_L_01_geo Shoulder_R_geo Middle_R_01_geo Index_L_03_geo Middle_Ball_R_01_geo Knee_Ball_R_geo Ling_Ball_R_02_geo Calves_Inner_R_geo Pinkie_Ball_L_03_geo Tongue_L Knuckle_L_Cover_geo InnerLod_L_geo ArmCover_Upper_R_geo ArmCover_Lower_L_geo Ling_R_03_geo ShoulderScrew_L_geo WristCover_R_geo Middle_R_02_geo Strap_R_geo Calves_Inner_L_geo Calves_R_geo Pinkie_L_03_geo Bust_geo Face_geo Hair_Bun_geo");
	setAttr ".objectsAll" -type "string" (
		"Index_Ball_R_01_geo Middle_Ball_L_03_geo Pointer_R_Cover_geo Index_Ball_R_03_geo Thigh_L_geo Index_R_03_geo InnerRotater_R_geo Knee_L_geo Thumb_R_Cover_geo Hand_Shield_L_geo Hand_Shield_R_geo Knee_R_geo Headset_01_L_geo Wrist_Ball_R_geo Hat_Embellishment_geo Bust_FrontPanel_geo Middle_Ball_R_02_geo Middle_Ball_R_03_geo Elbow_Ball_R_geo Ling_R_01_geo InnerRod_R_geo Thumb_L_Cover_geo InnerLotater_L_geo Pinkie_R_01_geo Hat_Top_geo Belt_geo Elbow_Cover_L_geo Pinkie_L_01_geo Middle_L_01_geo ShoulderRotater_R_geo Index_Ball_R_02_geo Pointer_L_Cover_geo Index_L_02_geo Ring_Ball_R_01_geo Quarter_L Hand_Inner_R_geo Sole_L Thigh_R_geo ArmCover_Lower_Inner_R_geo Pinkie_Ball_R_01_geo Headset_02_R_geo Thumb_Ball_R_02_geo Headset_Attacher_L_geo Ring_R_02_geo Tongue_R_geo Neck_geo Decoration_Skirt_geo Index_R_01_geo Ling_Ball_R_03_geo Palm_L_Cover_geo Skirt_FrontPanel_geo Thumb_R_01_geo ShoulderScrew_R_geo PadScrew_R_geo Elbow_Cover_R_geo Elbow_Ball_L_geo Pinkie_L_02_geo Index_Ball_L_01_geo Index_Ball_L_02_geo Sole_R_geo Ling_R_02_geo Knuckle_R_Cover_geo Ring_R_01_geo Headset_02_L_geo Thumb_Ball_L_02_geo Hand_Inner_L_geo Ring_R_03_geo Hair_Bun_geo Wrist_Ball_L_geo Middle_L_02_geo Neck_Collar_Inner_geo Middle_Ball_L_02_geo Hair_Back_geo Thumb_L_02_geo Index_R_02_geo Ankle_Ball_R_geo Headset_01_R_geo Pinkie_Ball_R_02_geo Middle_Ball_L_01_geo Thumb_L_01_geo Palm_R_Cover_geo ArmCover_Lower_R_geo Index_Ball_L_03_geo Ring_Ball_R_02_geo Knee_Ball_L_geo Pinkie_Ball_R_03_geo Neck_Collar_geo Strap_L Skirt_geo Pinkie_Ball_L_01_geo ArmCover_Upper_L_geo WristCover_L_geo Thumb_Ball_R_01_geo Ankle_Ball_L_geo Hair_Attacher_geo Face_geo Neck_Collar_Outer_geo Thumb_Ball_L_01_geo Ring_Ball_R_03_geo ShoulderPad_L_geo Headset_Attacher_L1_geo Thumb_R_02_geo Pinkie_R_02_geo Calves_L_geo ArmCover_Lower_Inner_L_geo Middle_R_03_geo Quarter_R_geo Shoulder_L_geo Pinkie_R_03_geo Pinkie_Ball_L_02_geo ShoulderPad_R_geo Middle_L_03_geo ShoulderRotater_L_geo Ling_Ball_R_01_geo Index_L_01_geo Shoulder_R_geo Middle_R_01_geo Index_L_03_geo Middle_Ball_R_01_geo Knee_Ball_R_geo Ling_Ball_R_02_geo Calves_Inner_R_geo Headset_Attacher_R_geo Pinkie_Ball_L_03_geo Tongue_L Hat_Brim_geo Knuckle_L_Cover_geo PadScrew_L_geo InnerLod_L_geo ArmCover_Upper_R_geo Decoration_Bust_geo ArmCover_Lower_L_geo Ling_R_03_geo ShoulderScrew_L_geo WristCover_R_geo Middle_R_02_geo Strap_R_geo Calves_Inner_L_geo Calves_R_geo Headset_Attacher_R1_geo Pinkie_L_03_geo Bust_geo");
	setAttr ".objectsRightEye" -type "string" "";
	setAttr ".objectsLeftEye" -type "string" "";
	setAttr ".useOffsetParentMatrix" yes;
	setAttr ".subControllers" yes;
	setAttr -s 34 ".drivingSystem";
	setAttr -s 17 ".drivingSystem_Fingers_L";
	setAttr -s 17 ".drivingSystem_Fingers_L";
	setAttr -s 17 ".drivingSystem_Fingers_R";
	setAttr -s 17 ".drivingSystem_Fingers_R";
createNode nurbsCurve -n "model2:FitSkeletonShape" -p "model2:FitSkeleton";
	rename -uid "7C005AB1-4233-29A0-835A-7B9A7D896148";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		24.018281880617177 1.4706956013058326e-15 -24.018281880617142
		-3.8752262712505263e-15 2.0798776654891638e-15 -33.96697998046875
		-24.018281880617156 1.4706956013058334e-15 -24.018281880617156
		-33.96697998046875 6.0269651302798538e-31 -9.84278101159626e-15
		-24.01828188061716 -1.4706956013058328e-15 24.018281880617145
		-1.0234913971716395e-14 -2.0798776654891646e-15 33.966979980468757
		24.018281880617142 -1.4706956013058334e-15 24.018281880617156
		33.96697998046875 -1.1171063514232773e-30 1.8243731208068321e-14
		24.018281880617177 1.4706956013058326e-15 -24.018281880617142
		-3.8752262712505263e-15 2.0798776654891638e-15 -33.96697998046875
		-24.018281880617156 1.4706956013058334e-15 -24.018281880617156
		;
createNode joint -n "model2:Root" -p "model2:FitSkeleton";
	rename -uid "0EADCFCE-4606-36E7-D489-5887F72E4E62";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -max 10 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "numMainExtras" -ln "numMainExtras" -min 0 -at "long";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 18.490279190157946 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 1.9709482123356974e-16 116.90020370483398 -0.34207677841186523 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-15 -1.1476156374930415e-30 -4.1347210859025721e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 90 -25.712399956602781 90 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 1;
	setAttr ".otp" -type "string" "Mid";
	setAttr ".fatYabs" 1.1050000190734863;
	setAttr -k on ".inbetweenJoints" 0;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront" 0.64999999999999991;
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Spine1" -p "model2:Root";
	rename -uid "6CFE803A-45C8-74E4-1B6A-ACBAF388D907";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 18.490279190157946 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "noControl" -ln "noControl" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.00275947293008 -1.4210854715202004e-14 -4.5283471775172516e-16 ;
	setAttr ".r" -type "double3" -4.1107898525036315e-16 2.2696638893869545e-15 -8.1420580751113406e-33 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -20.532113783666922 ;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront" 0.64999999999999991;
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Spine2" -p "model2:Spine1";
	rename -uid "FC8001F4-405B-E7C6-08A1-C890595A1F32";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 18.490279190157946 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 11.576930938365962 -5.3290705182007514e-15 -4.5859821306273296e-16 ;
	setAttr ".r" -type "double3" -2.8409301958840388e-16 2.3278694318388054e-15 -4.2937488199757468e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -13.915931194417016 ;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront" 0.64999999999999991;
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Chest" -p "model2:Spine2";
	rename -uid "1E8B408D-4143-A238-6A7E-8FABB9472DA4";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 18.490279190157946 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 11.449907982482728 -9.2370555648813024e-14 -4.6519815274880533e-16 ;
	setAttr ".r" -type "double3" 9.8369597719818628e-16 -2.0092965669800971e-14 -4.6277070615294164e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -5.605609844476616 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Chest";
	setAttr ".fatYabs" 1.1050000190734863;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront" 0.64999999999999991;
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Neck" -p "model2:Chest";
	rename -uid "02AD52AF-4EAD-7720-3345-1ABCBA9E13BE";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -max 10 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.4805231416767897 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 13.067477433848296 -1.2789769243681803e-13 4.5826128503804045e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 19.474904953730356 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -1.7940447748746266e-16 6.8425179703803005e-15 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "37";
	setAttr ".fatYabs" 1;
	setAttr -k on ".inbetweenJoints" 0;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Head" -p "model2:Neck";
	rename -uid "A3A1E306-4661-4CE9-34D5-15B3AB434D6B";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "long";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.4805231416767897 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 8.7339092700605363 6.9277916736609768e-14 -1.0409596627437501e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -11.718638649019582 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".otp" -type "string" "36";
	setAttr ".fatYabs" 1;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:HeadEnd" -p "model2:Head";
	rename -uid "A2983FB9-4005-CEF9-492D-178E1CFFAFE1";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.8068221862089882 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 13.791451797199386 5.6843418860808015e-14 3.3702794737817725e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "23";
	setAttr ".fatYabs" 0.34999999403953552;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Jaw" -p "model2:Head";
	rename -uid "31A43FDB-4360-764E-53A3-92860FA46F8E";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.175326963547993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" -1.5230139638368314 1.7664283253746831 -5.1684663778068847e-16 ;
	setAttr ".r" -type "double3" 1.7101744502129551e-17 1.0548297861478326e-17 6.8636370025982691e-12 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 116.66771129035345 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".otp" -type "string" "31";
	setAttr ".radi" 0.5;
	setAttr ".fatYabs" 0.20000000298023224;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:JawEnd" -p "model2:Jaw";
	rename -uid "A857E820-423F-DB36-BDF8-C7A9C57D1AB3";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.175326963547993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.0365320088687184 3.694822225952521e-13 -5.5903321968325671e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "25";
	setAttr ".fatYabs" 0.20000000298023224;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Scapula" -p "model2:Chest";
	rename -uid "31F99378-462F-1E68-1E6F-82A43CB97614";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 7.0698126315309793 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "freeOrient" -ln "freeOrient" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.748762095827658 -3.3487517586986328 -12.244715213775633 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 46.584374060254206 89.676369845332601 53.223047908125217 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".otp" -type "string" "PropA1";
	setAttr ".fatYabs" 0.64999997615814209;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Shoulder" -p "model2:Scapula";
	rename -uid "BC0C9811-4EB6-226D-2EA6-5BAD35BACE87";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "twistJoints" -ln "twistJoints" -dv 2 -min 0 -max 10 
		-at "long";
	addAttr -ci true -k true -sn "bendyCtrls" -ln "bendyCtrls" -min 0 -at "long";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 7.0698126315309793 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "freeOrient" -ln "freeOrient" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.8071144081209773 0.24835973276656276 1.9897833307709902 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 1.7438134457185657 -1.6213861718472458 -1.5673437122728171 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -4.1293130717023516e-07 0 0 ;
	setAttr ".dl" yes;
	setAttr ".typ" 10;
	setAttr ".fatYabs" 0.64999997615814209;
	setAttr -k on ".twistJoints" 0;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:ShoulderArmor" -p "model2:Shoulder";
	rename -uid "ADDC75C0-4AA0-8550-AA23-E295AF28C3EF";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 7.0698126315309793 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "control" -ln "control" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 1.0302869668521453e-13 2.4868995751603507e-14 2.8421709430404007e-14 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 -9.9392333795734899e-17 -1.1927080055488188e-15 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".otp" -type "string" "PropA1";
	setAttr ".radi" 4.4;
	setAttr ".fatYabs" 0.64999997615814209;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Elbow" -p "model2:Shoulder";
	rename -uid "00AD2A8A-44FE-4F87-DA95-34B7FC5EBDFD";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 5.3295510606925838 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 30.809348656381417 -0.53194393607435941 0.54328526689303658 ;
	setAttr ".r" -type "double3" -6.3611093629271282e-15 2.1269959432287264e-13 -5.1684013573782148e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -1.1132018533217571e-14 0.21331113411826202 6.3955139117351569 ;
	setAttr -k on ".fat" 3.5892894898541883;
	setAttr -k on ".fatFront" 1.8733333333333335;
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Wrist" -p "model2:Elbow";
	rename -uid "04B313F1-413A-EEDD-C3D1-E19D79ED2F8F";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.849027919015793 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	addAttr -ci true -k true -sn "freeOrient" -ln "freeOrient" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 35.782719331961857 -3.907985046680551e-14 -1.1368683772161603e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -9.6338545981666961 6.7067743507079864 -7.4867664264816227 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 12;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront" 2.3100000000000005;
	setAttr -k on ".fatWidth";
createNode joint -n "model2:IndexFinger0" -p "model2:Wrist";
	rename -uid "EFF90F13-4B78-989D-C9CA-7A8C0AFEE377";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.1753269635479935 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.3454394094508189 3.6357474419558184 -0.15558552413088478 ;
	setAttr ".r" -type "double3" -8.5477407064337273e-14 -2.7558263910708926e-12 2.1827022403108256e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.55638412286882433 -1.7249294294358026 18.229457779178716 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:IndexFinger1" -p "model2:IndexFinger0";
	rename -uid "A07DF35F-4FF5-8DB0-B02D-1EA4DD9FBAA1";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 5.2230790894566326 1.4210854715202004e-14 1.7053025658242404e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.58005417386876357 13.472976185733087 -15.198370622827131 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0.065532877363568762 20.527688987272207 -2.5422327562497964 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "8";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:IndexFinger2" -p "model2:IndexFinger1";
	rename -uid "84B21712-40CF-7070-B76D-7D950FF293E9";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.821370066244711 -1.5099033134902129e-14 -1.7053025658242404e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.029847346070966684 0.14011377504231917 -1.100006586609118 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "7";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:IndexFinger3" -p "model2:IndexFinger2";
	rename -uid "F45D20FC-4E75-DE40-D511-7B887C72E70D";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.3124082272395015 2.3980817331903381e-14 2.8421709430404007e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.0030922907356042287 13.5396132155514 -0.49643702638215559 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 5.7600000490223469 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "6";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:IndexFinger4" -p "model2:IndexFinger3";
	rename -uid "BD743575-4214-E97F-54D3-5793E4FC9E9B";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.081279662097681 -1.5099033134902129e-14 -8.5265128291212022e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "5";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:MiddleFinger0" -p "model2:Wrist";
	rename -uid "144D544A-44BC-F8AB-1219-40B51353EDB0";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.1753269635479935 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.7922295164352704 1.4242520860082508 0.57554842788559313 ;
	setAttr ".r" -type "double3" 9.1987604927952655e-13 -1.0466012748690855e-13 -3.6017296959230275e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -1.5811360525046452 -8.6735033134028008 11.127917282810676 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:MiddleFinger1" -p "model2:MiddleFinger0";
	rename -uid "66587774-44DE-7F2B-08C5-3493D179E644";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.6524965017683115 -3.5527136788005009e-15 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.41563637391429781 21.41107606565286 -8.76754887430981 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -2.490303168013669e-17 3.8068719241856406 -4.0949047407001542 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "21";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:MiddleFinger2" -p "model2:MiddleFinger1";
	rename -uid "9DA95D99-42C9-780A-0CD8-A4B3BA6F8E12";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 5.1238760355408672 -9.3258734068513149e-15 -8.5265128291212022e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.0017618696953443159 -0.62173845383606596 0.016925817596332632 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 2.5199999009299203 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "20";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:MiddleFinger3" -p "model2:MiddleFinger2";
	rename -uid "807AB5CF-4EF2-4118-7880-1B81CDC1801C";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.517037532022826 -1.0871303857129533e-12 -2.2737367544323206e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.01474088684399069 11.145062580322245 -0.54063233152962409 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 3.6712939054552742 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "19";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:MiddleFinger4" -p "model2:MiddleFinger3";
	rename -uid "75766DEF-486D-5A87-DE3A-C3A0569206B7";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.7390931240790231 6.2172489379008766e-15 -1.9895196601282805e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "18";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:RingFinger0" -p "model2:Wrist";
	rename -uid "ED798330-4B7C-859A-F830-EE9AA2D68425";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.1753269635479935 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.1060926113810439 -1.2890403970373767 0.51066861565004729 ;
	setAttr ".r" -type "double3" 1.0895332964904871e-10 -6.6138211660009202e-13 4.3426636310616535e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.37073176204157215 -13.878485108924112 3.0728176180565208 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:RingFinger1" -p "model2:RingFinger0";
	rename -uid "1CA5E6CA-4C43-F09F-5729-0E8E3DCCBEAD";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.2892472929746219 3.1086244689504383e-15 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.77856547784019103 25.85187497902648 0.24874178850321732 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -0.07133019936876682 -2.835223641928581 -1.4417652325251511 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "16";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:RingFinger2" -p "model2:RingFinger1";
	rename -uid "07299CD0-4EFF-4B12-7A30-D58336C38F94";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 5.1229070729785633 -1.9984014443252818e-15 -1.4210854715202004e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.0072814660708543904 -0.68259315095592876 -1.5280471579633073 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 -2.1600000310934706 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "15";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:RingFinger3" -p "model2:RingFinger2";
	rename -uid "D7B7FA88-4D1D-285A-B24A-CEB18FD52FF9";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.5218410611837143 7.8825834748386114e-15 2.2737367544323206e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.061733766909751776 8.0734697919963416 -0.48891505130451635 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 4.3200001190538568 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "14";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:RingFinger4" -p "model2:RingFinger3";
	rename -uid "8450C492-4F26-F480-66E1-F9B208973890";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.8447021044224279 9.9920072216264089e-16 3.694822225952521e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "13";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:PinkyFinger0" -p "model2:Wrist";
	rename -uid "140FBAE0-4359-8621-53EE-059E37F4020D";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2.1753269635479935 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.8680663199256742 -3.8680663199262124 -7.3896444519050419e-13 ;
	setAttr ".r" -type "double3" -2.6110366088139678e-13 -4.7569730036516338e-12 2.5556253827239177e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 1.3752866154388941 -11.397277271420659 -5.7538986300867148 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:PinkyFinger1" -p "model2:PinkyFinger0";
	rename -uid "9054A86B-47BC-00C1-F6AF-10BFEBDCD95A";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.1750032870548353 7.1054273576010019e-15 3.979039320256561e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.84552205783587631 20.301233227074977 9.281775126772482 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -0.21586850671656455 -15.856897343794616 -7.9762775885025459 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "12";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:PinkyFinger2" -p "model2:PinkyFinger1";
	rename -uid "6AC30181-4ECD-1270-A90F-BEB63907E225";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.6402692188998458 -5.3290705182007514e-15 -2.2737367544323206e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.032533860410180193 5.7402209825134181 -1.6661066165006087 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 0.71999997359174039 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "11";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:PinkyFinger3" -p "model2:PinkyFinger2";
	rename -uid "68E871DB-4D15-FD4C-FB2B-A8A7316128C0";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.2780820431696753 -1.7319479184152442e-14 5.6843418860808015e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0.24264600213583484 9.9484597116608651 0.8424960475711486 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 0 0 5.7599997887354624 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "10";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:PinkyFinger4" -p "model2:PinkyFinger3";
	rename -uid "C5216DFA-4AB1-5C32-C612-C1B96786D3C5";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.1435947896195575 -5.3290705182007514e-15 -4.2632564145606011e-13 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "9";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:ThumbFinger1" -p "model2:Wrist";
	rename -uid "A0381EEF-447A-53CD-3BC4-959BB5077D4E";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 1.2545047378908833 2.9022879124297005 -2.5441854330713625 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -75.180866456485376 41.789069979667204 52.398963822971048 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -34.462082586865911 -8.7285733235282201 -1.7903981777634761 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "4";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:ThumbFinger2" -p "model2:ThumbFinger1";
	rename -uid "62A43C71-4E98-0968-14D7-F089C73371E4";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.7367384437222597 -1.4210854715202004e-13 3.3750779948604759e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -8.0889159557125367 23.893050899622622 -22.675917780373862 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "3";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:ThumbFinger3" -p "model2:ThumbFinger2";
	rename -uid "95588367-43BD-73BA-8108-99BA723A2B99";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.0213870078332725 2.8421709430404007e-13 -5.6843418860808015e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -1.7871882975822413 5.2707901213624417 -5.7148814684065998 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "2";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:ThumbFinger4" -p "model2:ThumbFinger3";
	rename -uid "2CE26AC5-4CE8-D8E8-F12D-98A7FC8D766A";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.3051961781287951 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.1112262962178754 -8.5265128291212022e-14 2.8421709430404007e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "1";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:SkirtJntTop" -p "model2:Spine1";
	rename -uid "7254F7E0-4EA5-F78C-A6A8-68A80D395D58";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.066048165876019 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 1.1685509441682882 8.6305192373696897 -1.9709482123356974e-16 ;
	setAttr ".r" -type "double3" -3.5160488285025857e-28 -3.1450222138484451e-29 -2.3059021440610494e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 169.77726275789317 ;
	setAttr ".radi" 1.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:SkirtJntMid1" -p "model2:SkirtJntTop";
	rename -uid "AC43F07B-4631-6957-0C4E-87A306C8B787";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.066048165876019 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.8264192663507117 -2.4868995751603507e-14 3.7470892997998061e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -5.5659706925611575e-15 ;
	setAttr ".radi" 1.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:SkirtJntMid2" -p "model2:SkirtJntMid1";
	rename -uid "71F42770-4ECF-2D81-4A5B-F9A24A6E7122";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.066048165876019 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.8264192663509249 7.1054273576010019e-15 -2.6624055551209148e-30 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -5.5659706925611575e-15 ;
	setAttr ".radi" 1.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:SkirtJntMid3" -p "model2:SkirtJntMid2";
	rename -uid "8F245CE4-4544-9A77-CA39-D2958484BF76";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.066048165876019 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.8264192663495606 1.4210854715202004e-14 8.8746851837363828e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -5.5659706925611575e-15 ;
	setAttr ".radi" 1.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:SkirtJntMid4" -p "model2:SkirtJntMid3";
	rename -uid "38F2800E-4057-0C47-0D19-18BCCCC8B9B1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.066048165876019 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.826419266350797 -7.1054273576010019e-15 6.9025329206838533e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 0 -5.5659706925611575e-15 ;
	setAttr ".radi" 1.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:SkirtJntEnd" -p "model2:SkirtJntMid4";
	rename -uid "1979A364-415C-8BAE-1A3A-C49C1ED4B0FA";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.066048165876019 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 6.8264192663503422 3.1974423109204508e-14 1.9721522630525295e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Hip" -p "model2:Root";
	rename -uid "96A134A3-402E-A253-BC9F-A898390373A2";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "twistJoints" -ln "twistJoints" -dv 2 -min 0 -max 10 
		-at "long";
	addAttr -ci true -k true -sn "bendyCtrls" -ln "bendyCtrls" -min 0 -at "long";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 9.4626722914337709 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" -2.3647129692410402 0.055773866165829133 -8.5661411642391165 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 179.53099261327469 0.097752937451121957 152.15161997813715 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 2;
	setAttr ".fatYabs" 0.87000000476837158;
	setAttr -k on ".twistJoints" 0;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Knee" -p "model2:Hip";
	rename -uid "C098A55C-4C6E-9A24-B471-F2A68DAE8DDF";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 6.5259808906439805 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 43.960045022364525 2.886579864025407e-14 -1.1368683772161603e-13 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -1.3914926731402894e-15 -4.3049304575277677e-15 -5.0106285745307479 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".fatYabs" 0.60000002384185791;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Ankle" -p "model2:Knee";
	rename -uid "03881445-4E5C-5B4C-CEED-33A18CE76680";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "worldOrient" -ln "worldOrient" -min 0 -max 5 -en "xUp:yUp:zUp:xDown:yDown:zDown" 
		-at "enum";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 4.0243548825637863 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 49.263288727393061 1.8207657603852567e-14 -7.2830630415410269e-14 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 4.7917026404508318 0.11516207121055495 2.8755159579095104 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" 3.1147589914174403 -1.2104724556304993 -11.405913270501992 ;
	setAttr ".dl" yes;
	setAttr ".typ" 4;
	setAttr ".fatYabs" 0.37000000476837158;
	setAttr -k on ".worldOrient" 3;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Heel" -p "model2:Ankle";
	rename -uid "F937AF82-4175-65AA-0745-12B04FB73716";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 4.0243548825637863 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 21.363714311260413 -6.013710539135726 0.73608469010839883 ;
	setAttr ".r" -type "double3" -5.7575519295215214 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 164.89292643750738 85.247490611092772 -109.53599242507789 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:Toes" -p "model2:Ankle";
	rename -uid "9B9BAE43-4290-45BA-28F4-C4845723A88E";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.2629904453219893 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 19.197513941056748 12.94452844170336 2.8421709430404007e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 1.0693500692117721 4.6308444553820181 83.481695748600359 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr ".fatYabs" 0.30000001192092896;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:FootSideInner" -p "model2:Toes";
	rename -uid "4F39241A-4D75-42AE-4467-22B0DB345816";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.2629904453219893 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.29203596500018136 -1.8644307933256181 -5.8080283774293058 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.9024208491642867 89.999916888733878 0 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "BigToe";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:FootSideOuter" -p "model2:Toes";
	rename -uid "8B0774BF-4445-8FF4-7E00-70948D14181B";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.2629904453219893 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 0.29205022905332001 -1.8644283101591994 6.6807301845970173 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.9024208491642867 89.999916888733878 0 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "PinkyToe";
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "model2:ToesEnd" -p "model2:Toes";
	rename -uid "9AA542B6-405C-9753-406A-56848983D353";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.2629904453219893 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 9.4228679725833793 6.6613381477509392e-15 -5.3290705182007514e-14 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".jox";
	setAttr -k on ".joy";
	setAttr -k on ".joz";
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ToesEnd";
	setAttr ".fatYabs" 0.30000001192092896;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "model2:DeformationSystem" -p "model2:Group";
	rename -uid "5954A604-42D8-CA70-C2F8-039EE48CC294";
createNode joint -n "model2:Root_M" -p "model2:DeformationSystem";
	rename -uid "8BDC18FA-4714-0831-F9B0-C5A4823CA6F9";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.490279190157946 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 0.64999999999999991 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-16 0.90098314123096301 0.43385409899825333 0
		 1.7208456881689922e-15 -0.43385409899825333 0.90098314123096301 0 1 1.6653345369377346e-16 -1.7763568394002509e-15 0
		 1.970948212335508e-16 116.90020370483396 -0.34207677841188394 1;
createNode joint -n "model2:Spine1_M" -p "model2:Root_M";
	rename -uid "2F957F3A-4C32-8642-4A49-0E9B1791E0BD";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.490279190157946 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 0.64999999999999991 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0 0.995915522475604 0.090289933503929665 0 1.9428902930940232e-15 -0.090289933503929609 0.99591552247560389 0
		 0.99999999999999967 2.7755575615628914e-16 -1.998401444325281e-15 0 8.4058378737877572e-15 128.61547077942524 5.2992237172072238 1;
createNode joint -n "model2:Spine2_M" -p "model2:Spine1_M";
	rename -uid "17BA82B1-41FA-F859-F6B8-EE97C62E86A9";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.490279190157946 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 0.64999999999999991 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -4.4408920985006252e-16 0.98839959378349962 -0.15187574858618053 0
		 2.0539125955565392e-15 0.15187574858618053 0.98839959378349962 0 0.99999999999999989 1.6653345369377346e-16 -2.2204460492503127e-15 0
		 7.9472396607249744e-15 140.14511600357199 6.3445040418118488 1;
createNode joint -n "model2:Chest_M" -p "model2:Spine2_M";
	rename -uid "B02408DD-473A-AC64-0F14-4DBC112D77EF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.490279190157946 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 0.64999999999999991 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503131e-16 0.96883763524071675 -0.24769666235372681 0
		 2.83106871279415e-15 0.24769666235372673 0.96883763524071698 0 1 -5.5511151231257837e-16 -2.8865798640254074e-15 0
		 2.3972609191792711e-15 151.46220040231634 4.6055406957293021 1;
createNode joint -n "model2:Neck_M" -p "model2:Chest_M";
	rename -uid "A25F0E9D-47CB-799D-9812-0C8E3B7F4095";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.4805231416767897 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9.0108403279792092e-16 0.99598868504146609 0.089479267259909484 0
		 3.2141418531364509e-15 -0.089479267259909567 0.99598868504146632 0 0.99999999999999978 -6.106226635438361e-16 -3.3306690738754688e-15 0
		 4.4591542798162829e-15 164.12246433788729 1.3687701499823195 1;
createNode joint -n "model2:Head_M" -p "model2:Neck_M";
	rename -uid "B783A8DB-49EE-1D29-46DB-C48A8D046AC6";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.4805231416767897 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -9.8607613152626476e-32 0.99340284617105779 -0.11467687307928127 0
		 3.33066907387547e-15 0.11467687307928122 0.99340284617105779 0 1 -3.8857805861880489e-16 -3.3306690738754696e-15 0
		 1.2225044500699478e-14 172.82133914704642 2.1502739517819363 1;
createNode joint -n "model2:HeadEnd_M" -p "model2:Head_M";
	rename -uid "DFBD2FAF-4C2B-9301-9540-DBABBB71D3F9";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.8068221862089882 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 13.791451797199358 5.6843418860808015e-14 3.3702794737817725e-16 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -9.8607613152626476e-32 0.99340284617105779 -0.11467687307928127 0
		 3.33066907387547e-15 0.11467687307928122 0.99340284617105779 0 1 -3.8857805861880489e-16 -3.3306690738754696e-15 0
		 1.2562072448077842e-14 186.52180661521521 0.56871338445553632 1;
createNode joint -n "model2:Jaw_M" -p "model2:Head_M";
	rename -uid "AB37DFAA-4997-142D-A18F-3EA590714957";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.175326963547993 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 2.3314683517128283e-15 -0.34337650972380979 0.93919783462798401 0
		 -1.665334536937735e-15 -0.93919783462798434 -0.34337650972380984 0 0.99999999999999989 -8.0491169285323849e-16 -2.6645352591003757e-15 0
		 1.7591586057461814e-14 171.51094121748531 4.0797033567952008 1;
createNode joint -n "model2:JawEnd_M" -p "model2:Jaw_M";
	rename -uid "36996998-44DF-C513-AA13-01B29DE0DEAF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.175326963547993 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.0365320088687184 3.694822225952521e-13 -5.5903321968325671e-19 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 2.3314683517128283e-15 -0.34337650972380979 0.93919783462798401 0
		 -1.665334536937735e-15 -0.93919783462798434 -0.34337650972380984 0 0.99999999999999989 -8.0491169285323849e-16 -2.6645352591003757e-15 0
		 2.4670605301881909e-14 170.46826745461499 6.9316076443031367 1;
createNode joint -n "model2:Scapula_R" -p "model2:Chest_M";
	rename -uid "CEA979E9-4339-9E24-4D64-08A5EDCEE147";
	addAttr -ci true -sn "fat" -ln "fat" -dv 7.0698126315309793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99998404776472027 0.004396941245159108 0.0035455780589670844 0
		 0.0041029124994936845 0.13402179208552895 0.99096989124554369 0 0.0038820516620864907 0.99096863025721926 -0.13403769440356328 0
		 -12.244715213775644 155.23350520787795 0.1848914393751766 1;
createNode joint -n "model2:Shoulder_R" -p "model2:Scapula_R";
	rename -uid "096775F2-4CFC-0A4C-26D3-A5B446D0B344";
	addAttr -ci true -sn "fat" -ln "fat" -dv 7.0698126315309793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99921203604082887 0.02876846383715299 -0.027343783929656015 0
		 -0.022260442350006605 0.16417287069040948 0.98618037966472072 0 0.032860002092564233 0.9860119897941001 -0.16340310965448682 0
		 -18.042993545502931 157.26413722700454 0.18489206415677656 1;
createNode joint -n "model2:ShoulderArmor_R" -p "model2:Shoulder_R";
	rename -uid "17175A68-4CC8-48F6-7E23-EE832FE05553";
	addAttr -ci true -sn "fat" -ln "fat" -dv 7.0698126315309793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99921203604082942 0.028768463837153129 -0.027343783929656022 0
		 -0.022260442350006598 0.16417287069040934 0.98618037966472039 0 0.032860002092564344 0.98601198979409999 -0.16340310965448654 0
		 -18.042993545503023 157.26413722700462 0.18489206415678427 1;
createNode joint -n "model2:Shoulder2_R" -p "model2:Shoulder_R";
	rename -uid "50AF7964-4906-BBFF-E0BF-04BF70A196C6";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.5892894898541883 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1.8733333333333335 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99558863744946791 0.043205606683526875 0.083285896360785802 0
		 0.089181440932133121 0.15994661304328139 0.98308888284287455 0 0.029153654569875651 0.9861796776080366 -0.16309416880480154 0
		 -48.798371883208176 158.59882988367531 -1.2709192833947123 1;
createNode joint -n "model2:Wrist_R" -p "model2:Shoulder2_R";
	rename -uid "0AB83EBB-4881-66FC-4F30-8BAC88207888";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.849027919015793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 2.3100000000000005 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99529171815064277 -0.093327960135375254 -0.026158892134617959 0
		 -0.026044640001722279 -0.0024422049241293597 0.99965779762991347 0 -0.093359908461402519 0.9956324258942546 1.321119175168306e-08 0
		 -84.423240667152854 160.14484398119882 1.7092765703941408 1;
createNode joint -n "model2:IndexFinger0_R" -p "model2:Wrist_R";
	rename -uid "5B7259B3-4A7C-47D5-489F-E49818578033";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95586491194416667 -0.059397739043191053 0.28773977603127121 0
		 0.28597195061878355 0.036564181070370946 0.95754013185972553 0 -0.067396688147542155 0.99756451884537756 -0.01796433042261375 0
		 -87.833095087926139 159.66883571222817 5.2562668602480915 1;
createNode joint -n "model2:IndexFinger1_R" -p "model2:IndexFinger0_R";
	rename -uid "7D00CD2A-4D5F-CC5F-96B5-709CCC905EAA";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95425228040873511 -0.2974839877164569 0.030097547857643556 0
		 0.028393349479314198 0.010049194643051094 0.99954631278013861 0 -0.29765147914981671 0.95467391853938288 -0.0011429000766696278 0
		 -92.825653121847068 159.35859662347087 6.7591544676419719 1;
createNode joint -n "model2:IndexFinger2_R" -p "model2:IndexFinger1_R";
	rename -uid "00A2EC06-4BE7-83B1-2032-47A3374F8097";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95389075957689873 -0.29995579637963787 0.010905916378886349 0
		 0.010225075714431093 0.0038394344477680159 0.99994035150590577 0 -0.29997977701911877 0.95394537525026912 -0.00059533031276282013 0
		 -97.426456502255405 157.92431622990748 6.9042658839501705 1;
createNode joint -n "model2:IndexFinger3_R" -p "model2:IndexFinger2_R";
	rename -uid "CF33E5BB-407B-2920-79B4-3AAB902E09BF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.85720128519762429 -0.51497629077420604 0.0023187487962380532 0
		 0.0019876398575213714 0.0011941037546411288 0.99999731169839612 0 -0.51497767518926119 0.85720358961956156 1.2808365457660231e-10 0
		 -100.58613210216573 156.93074018217166 6.9403907310892068 1;
createNode joint -n "model2:IndexFinger4_R" -p "model2:IndexFinger3_R";
	rename -uid "B74AAF0C-48E9-F6E7-8965-71A1D5A7BD38";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.0812796620976917 -1.4210854715202004e-14 -8.2422957348171622e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.85720128519762429 -0.51497629077420604 0.0023187487962380532 0
		 0.0019876398575213714 0.0011941037546411288 0.99999731169839612 0 -0.51497767518926119 0.85720358961956156 1.2808365457660231e-10 0
		 -103.22740898856875 155.3439542109459 6.9475354445965545 1;
createNode joint -n "model2:MiddleFinger0_R" -p "model2:Wrist_R";
	rename -uid "3196CC7F-4134-D0AA-2249-96A61C89014B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98445871041625754 0.059153052831858399 0.16535405597150774 0
		 0.16493506723406215 -0.011930771158940225 0.98623226488289617 0 0.060311450671100039 0.99817762599660786 0.0019889388434792981 0
		 -88.28844257958157 160.36047929808245 3.0338407586964946 1;
createNode joint -n "model2:MiddleFinger1_R" -p "model2:MiddleFinger0_R";
	rename -uid "CE7FBE4A-4C86-7048-ABB1-B2A1AAC1ECB6";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95122939328306055 -0.30827131789203749 0.011464550555750838 0
		 0.010714407649723045 0.004126025761869598 0.99993408651776983 0 -0.30829830168694516 0.95128953030952546 -0.00062185241552102795 0
		 -92.868633285928595 160.63568866945153 3.8031499256571415 1;
createNode joint -n "model2:MiddleFinger2_R" -p "model2:MiddleFinger1_R";
	rename -uid "4A5E0530-45E9-E8B7-5210-F59E1218E989";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95451557988984892 -0.29792933130726079 0.011752501621019169 0
		 0.011004573372690613 0.004187738691601715 0.99993067870204633 0 -0.29795789486507751 0.95457874289733557 -0.00071867663939384431 0
		 -97.742614778473765 159.05614465125996 3.8618928615079913 1;
createNode joint -n "model2:MiddleFinger3_R" -p "model2:MiddleFinger2_R";
	rename -uid "E359695B-4BFD-7C22-8028-AF82174E9E3D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.87898112084158864 -0.47685046985202412 0.0024121786763029182 0
		 0.0021202688728098606 0.0011502460056216351 0.99999709069278475 0 -0.47685185714639899 0.87898367808283506 6.6849469307567536e-09 0
		 -101.09968189784684 158.00831601116167 3.903226850803192 1;
createNode joint -n "model2:MiddleFinger4_R" -p "model2:MiddleFinger3_R";
	rename -uid "28A18ED4-43B9-7211-CD5C-59A08F5AAE80";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.7390931240790035 6.6613381477509392e-15 -1.9895196601282805e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.87898112084158864 -0.47685046985202412 0.0024121786763029182 0
		 0.0021202688728098606 0.0011502460056216351 0.99999709069278475 0 -0.47685185714639899 0.87898367808283506 6.6849469307567536e-09 0
		 -104.38627416298078 156.22532769812395 3.912246211505813 1;
createNode joint -n "model2:RingFinger0_R" -p "model2:Wrist_R";
	rename -uid "73E62985-477E-627F-76D9-B687008EF92E";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98859555219496065 0.14821566751643586 0.026663647218581308 0
		 0.026386707752573981 -0.0038348520711318579 0.99964445457551199 0 0.14826522125677305 0.98894762743648357 -0.00011980580226216146 0
		 -88.524104019342602 160.27321706708446 0.31326645906643957 1;
createNode joint -n "model2:RingFinger1_R" -p "model2:RingFinger0_R";
	rename -uid "D3D4E4CF-477F-A43D-9129-F2B06DB05D9D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95420020041301146 -0.29786006746531568 0.027952776987727374 0
		 0.02663175586660332 0.0084933409095965216 0.99960923001923829 0 -0.29798108515680949 0.95457175915158432 -0.0001718109989667947 0
		 -92.764434815441646 160.9089507177558 0.42763343571957801 1;
createNode joint -n "model2:RingFinger2_R" -p "model2:RingFinger1_R";
	rename -uid "B015392D-4091-8CF0-D967-489EBB6FB818";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95805322065935472 -0.28658746588968109 0.001284826512796262 0
		 0.0012137249498531968 0.00042574211128521038 0.99999917280735784 0 -0.28658777583139022 0.95805398759077476 -6.004524322178524e-05 0
		 -97.652713771174973 159.38304127137974 0.57083291465939956 1;
createNode joint -n "model2:RingFinger3_R" -p "model2:RingFinger2_R";
	rename -uid "5E6D97FA-4D2B-C6C9-E2C2-4B89229B6C4F";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.90828428966918973 -0.41829208540108331 -0.0071680144354817864 0
		 -0.0065107580651434177 -0.0029984096392154905 0.99997430945452348 0 -0.41830283189281803 0.90830762455813718 9.8006814885310471e-09 0
		 -101.02682494249238 158.37372576638901 0.57535786942867007 1;
createNode joint -n "model2:RingFinger4_R" -p "model2:RingFinger3_R";
	rename -uid "E4F3DF2E-4AE9-FBDB-F409-1ABE75445A1D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.8447021044224421 1.6653345369377348e-15 3.694822225952521e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.90828428966918973 -0.41829208540108331 -0.0071680144354817864 0
		 -0.0065107580651434177 -0.0029984096392154905 0.99997430945452348 0 -0.41830283189281803 0.90830762455813718 9.8006814885310471e-09 0
		 -104.51890746239751 156.76551730538455 0.54779898924404447 1;
createNode joint -n "model2:PinkyFinger0_R" -p "model2:Wrist_R";
	rename -uid "4A2FA154-42DB-43FC-BEEC-D2B90578BA12";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98663872139462683 0.10596104817739051 -0.12375899851696809 0
		 -0.12317313128844193 0.012081009147897254 0.99231165918100961 0 0.10664151711868337 0.99429689001178978 0.0011319626797766239 0
		 -88.172352645826933 159.79329185250444 -2.2586504177022264 1;
createNode joint -n "model2:PinkyFinger1_R" -p "model2:PinkyFinger0_R";
	rename -uid "21C9D75F-46DC-F80F-43A5-DE99A5EAB062";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.96886702465398866 -0.24507186025227012 0.035163501683095615 0
		 0.033959204461978712 0.0091393489398678904 0.99938143105286104 0 -0.24524163792153009 0.96946183814188669 -0.00053236840446002805 0
		 -92.291572550785048 160.23567957694516 -2.7753446433131668 1;
createNode joint -n "model2:PinkyFinger2_R" -p "model2:PinkyFinger1_R";
	rename -uid "E604B890-427B-B998-2682-79A977910625";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.94005496361278906 -0.34096815075568643 0.0061143730016144883 0
		 0.0059687011866418936 0.0014762383133001278 0.99998109748464092 0 -0.34097073187166671 0.9400736890747915 0.0006473918521292569 0
		 -96.78737638249396 159.09848016739775 -2.6121765288243695 1;
createNode joint -n "model2:PinkyFinger3_R" -p "model2:PinkyFinger2_R";
	rename -uid "BE77C5E7-47EA-BDAC-946E-3C8755D3A4F7";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86682647711554639 -0.49819274355619125 0.020392372088689464 0
		 0.017680330088071541 0.01016143530120206 0.99979205395952009 0 -0.49829636211739048 0.86700676785165443 1.0988977062185469e-08 0
		 -99.86895367830563 157.98075859511289 -2.5921331124825535 1;
createNode joint -n "model2:PinkyFinger4_R" -p "model2:PinkyFinger3_R";
	rename -uid "E833510C-44F6-5786-CAD1-3B953DDDA4FB";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.1435947896195762 -5.3290705182007514e-15 -4.2632564145606011e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86682647711554639 -0.49819274355619125 0.020392372088689464 0
		 0.017680330088071541 0.01016143530120206 0.99979205395952009 0 -0.49829636211739048 0.86700676785165443 1.0988977062185469e-08 0
		 -102.59390487527014 156.41464248224298 -2.5280277578365711 1;
createNode joint -n "model2:ThumbFinger1_R" -p "model2:Wrist_R";
	rename -uid "35BB8407-428F-7332-1C95-F5AA32779481";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.40596595969785809 -0.70738073802434132 0.57862261538824611 0
		 0.66943795815197138 -0.66119204239322382 -0.33864126042346987 0 0.62212897356731034 0.24987511790495487 0.74196897893380176 0
		 -85.509902967876556 157.48760211654664 4.5777548252889577 1;
createNode joint -n "model2:ThumbFinger2_R" -p "model2:ThumbFinger1_R";
	rename -uid "CA0DB06D-478A-717E-7D4B-4D9DA2AC0472";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.83042927824451218 -0.46491572876846393 0.30698628467406325 0
		 0.41261389700100348 -0.88348276394308878 -0.22182871278787353 0 0.3743487489440061 -0.057546250609118388 0.92550064462694404 0
		 -87.432857536020123 154.13692458039824 7.3185388120056967 1;
createNode joint -n "model2:ThumbFinger3_R" -p "model2:ThumbFinger2_R";
	rename -uid "5CEB31E3-4101-1977-90AF-A69651568763";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.89811033781116223 -0.3677589293960572 0.24114558044091108 0
		 0.31857044315769145 -0.92207653062072492 -0.21974472559030414 0 0.3031677652109972 -0.12053315530554967 0.94528358951642522 0
		 -90.772335046476854 152.26731850899117 8.5530494687768766 1;
createNode joint -n "model2:ThumbFinger4_R" -p "model2:ThumbFinger3_R";
	rename -uid "0040C62F-42D1-13F2-164F-24BB4E15E46A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.1112262962178683 -8.5265128291212022e-14 2.8421709430404007e-14 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.89811033781116223 -0.3677589293960572 0.24114558044091108 0
		 0.31857044315769145 -0.92207653062072492 -0.21974472559030414 0 0.3031677652109972 -0.12053315530554967 0.94528358951642522 0
		 -94.464669884191238 150.75537832778923 9.5444535203023175 1;
createNode joint -n "model2:Shoulder2Partial_R" -p "model2:Shoulder_R";
	rename -uid "37D38A50-4FD0-B09A-8E75-61AC99A6CBA4";
	addAttr -ci true -sn "partialJoint" -ln "partialJoint" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99558863744946802 0.043205606683526881 0.083285896360785788 0
		 0.089181440932133121 0.1599466130432815 0.98308888284287466 0 0.029153654569875623 0.98617967760803626 -0.16309416880480204 0
		 -48.816916780434369 158.59963467744794 -1.2693679113417398 1;
	setAttr -k on ".follow";
createNode joint -n "model2:Scapula_L" -p "model2:Chest_M";
	rename -uid "6A382319-4E0A-0A4B-C925-448D0A168DC7";
	addAttr -ci true -sn "fat" -ln "fat" -dv 7.0698126315309793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99998404776471983 -0.0043969412810977038 -0.0035455780143892356 0
		 0.0041029125152677193 -0.13402180615922249 -0.99096988934210861 0 0.0038820516454061709 -0.99096862835368804 0.13403770847724927 0
		 12.244715213775629 155.23350520787784 0.18489143937511265 1;
createNode joint -n "model2:Shoulder_L" -p "model2:Scapula_L";
	rename -uid "0F46C6F2-4766-0A97-1D12-6A927A52A5DA";
	addAttr -ci true -sn "fat" -ln "fat" -dv 7.0698126315309793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99921203604173237 -0.028768463434415262 0.027343784320368433 0
		 -0.022260442334752998 -0.16417288469568408 -0.98618037733355812 0 0.032860002075429801 -0.98601198747394581 0.16340312365827761 0
		 18.042993545532184 157.26413722692081 0.1848920354215644 1;
createNode joint -n "model2:ShoulderArmor_L" -p "model2:Shoulder_L";
	rename -uid "874FBDE4-413D-B4FE-9D2A-028A806BF108";
	addAttr -ci true -sn "fat" -ln "fat" -dv 7.0698126315309793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99921203604173192 -0.028768463434415244 0.027343784320368415 0
		 -0.022260442334752998 -0.16417288469568328 -0.98618037733355746 0 0.032860002075429773 -0.98601198747394536 0.16340312365827697 0
		 18.042993545532276 157.26413722692072 0.18489203542158991 1;
createNode joint -n "model2:Shoulder2_L" -p "model2:Shoulder_L";
	rename -uid "27976437-4928-4400-DA02-5A9E37738479";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.5892894898541883 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1.8733333333333335 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99558863744860282 -0.043205607851988549 -0.08328589576497436 0
		 0.089181440947392429 -0.15994662700625725 -0.98308888056974164 0 0.029153654552744275 -0.98617967529221628 0.16309418281090807 0
		 48.798371883282691 158.59882986247291 -1.2709193305355089 1;
createNode joint -n "model2:Wrist_L" -p "model2:Shoulder2_L";
	rename -uid "3EF47648-4F2B-3C33-303A-0FB5964F1420";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.849027919015793 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 2.3100000000000005 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99529171814976525 0.093327960521228409 0.026158890791404165 0
		 -0.026044639983825904 0.0024421907275040955 -0.99965779766506269 0 -0.093359908475755649 -0.99563242589290879 9.2697291509402646e-10 0
		 84.423240667196353 160.14484400180734 1.7092765019335805 1;
createNode joint -n "model2:IndexFinger0_L" -p "model2:Wrist_L";
	rename -uid "FBAF0BC6-430D-E87A-C5FA-84B6A6F9F29D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95586491193816991 0.059397734970530053 -0.28773977689190849 0
		 0.2859719506353654 -0.036564194673345519 -0.95754013133533666 0 -0.067396688162243618 -0.99756451858927886 0.017964344588682356 0
		 87.833095087899451 159.66883578316146 5.2562667986086629 1;
createNode joint -n "model2:IndexFinger1_L" -p "model2:IndexFinger0_L";
	rename -uid "514C098B-49ED-B6D6-90E8-6CBC5B181AA4";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95425228040390953 0.2974839873027707 -0.030097552099519732 0
		 0.028393349497028458 -0.010049208838878391 -0.99954631263691451 0 -0.29765147916359819 -0.95467391851886096 0.0011429136294974912 0
		 92.825653121789045 159.3585967156759 6.7591544104977235 1;
createNode joint -n "model2:IndexFinger2_L" -p "model2:IndexFinger1_L";
	rename -uid "FDC6BB10-41E2-74AC-2B45-E781C34902AB";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95389075957238079 0.29995579623850366 -0.010905920655860319 0
		 0.010225075732242154 -0.0038394486489288213 -0.99994035145119642 0 -0.29997977703288031 -0.95394537523749046 0.00059534385520198802 0
		 97.426456502174162 157.92431632410711 6.9042658472575749 1;
createNode joint -n "model2:IndexFinger3_L" -p "model2:IndexFinger2_L";
	rename -uid "7E573C3F-46FA-9BB5-7CFC-ABB34C7AC35D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.85720128519016114 0.51497629075363216 -0.0023187561251754589 0
		 0.0019876398753715932 -0.0011941179564918252 -0.99999731168140249 0 -0.51497767520161797 -0.85720358961213916 1.203660049300774e-08 0
		 100.58613210206961 156.93074027683883 6.9403907085636973 1;
createNode joint -n "model2:IndexFinger4_L" -p "model2:IndexFinger3_L";
	rename -uid "9E00FD55-4AF1-1333-7636-2BA7F02FB23E";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.0812796620976659 1.5987211554602254e-14 8.5265128291212022e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.85720128519016114 0.51497629075363216 -0.0023187561251754589 0
		 0.0019876398753715932 -0.0011941179564918252 -0.99999731168140249 0 -0.51497767520161797 -0.85720358961213916 1.203660049300774e-08 0
		 103.2274089884496 155.34395430567645 6.9475354446535489 1;
createNode joint -n "model2:MiddleFinger0_L" -p "model2:Wrist_L";
	rename -uid "DC0A4D71-4C58-8512-3CEA-BDA9F8DD2C04";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98445871041415689 -0.059153055166001806 -0.16535405514901394 0
		 0.1649350672518555 0.011930757150229308 -0.98623226504938877 0 0.060311450656745896 -0.99817762602572424 -0.0019889246664222095 0
		 88.288442579604535 160.36047933744661 3.0338406872425745 1;
createNode joint -n "model2:MiddleFinger1_L" -p "model2:MiddleFinger0_L";
	rename -uid "7B581E84-45B6-A17C-DDC0-539BF8269437";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95122939327841294 0.30827131774293243 -0.011464554950772707 0
		 0.010714407667529693 -0.0041260399629474689 -0.99993408645898108 0 -0.30829830170066974 -0.95128953029624996 0.00062186592009262349 0
		 92.868633285941769 160.63568871967533 3.8031498503765624 1;
createNode joint -n "model2:MiddleFinger2_L" -p "model2:MiddleFinger1_L";
	rename -uid "A522CBCA-4B8D-3643-0CD0-FA93C04CE388";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95451557988534541 0.29792933115411352 -0.011752505869224387 0
		 0.011004573390496285 -0.0041877528926357304 -0.99993067864237584 0 -0.29795789487885144 -0.95457874288283429 0.00071869019086356792 0
		 97.742614778463107 159.05614470224765 3.8618928087469562 1;
createNode joint -n "model2:MiddleFinger3_L" -p "model2:MiddleFinger2_L";
	rename -uid "7654BF19-4694-23C4-3BDA-8487151BF5E5";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.87898112083467317 0.47685046983043833 -0.0024121854641714065 0
		 0.0021202688906604697 -0.0011502602074708879 -0.99999709067641063 0 -0.47685185715907008 -0.87898367807596156 5.7897358015724168e-09 0
		 101.0996818978203 158.0083160626879 3.9032268129832537 1;
createNode joint -n "model2:MiddleFinger4_L" -p "model2:MiddleFinger3_L";
	rename -uid "D39F9629-4D46-6F75-073A-ED9659FF6345";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.7390931240790124 -6.6613381477509392e-15 2.2737367544323206e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.87898112083467317 0.47685046983043833 -0.0024121854641714065 0
		 0.0021202688906604697 -0.0011502602074708879 -0.99999709067641063 0 -0.47685185715907008 -0.87898367807596156 5.7897358015724168e-09 0
		 104.38627416292839 156.22532774973087 3.9122461990663471 1;
createNode joint -n "model2:RingFinger0_L" -p "model2:Wrist_L";
	rename -uid "7ABF5A4F-48F4-1DD3-4E08-5D861A6C4756";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98859555219662143 -0.14821566788085755 -0.026663645131306417 0
		 0.02638670777049015 0.003834837873939552 -0.99964445462950213 0 0.14826522124251412 -0.98894762743691911 0.00011981984980820711 0
		 88.524104019412931 160.27321706780793 0.31326638885601343 1;
createNode joint -n "model2:RingFinger1_L" -p "model2:RingFinger0_L";
	rename -uid "829EA8FD-407F-782B-CCBF-ED9B983B869D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95420020040821829 0.29786006708208934 -0.027952781234943571 0
		 0.026631755884341021 -0.0084933551062922295 -0.99960922989814094 0 -0.29798108517057287 -0.95457175914484849 0.00017182455033848371 0
		 92.764434815518996 160.9089507200423 0.42763335655630785 1;
createNode joint -n "model2:RingFinger2_L" -p "model2:RingFinger1_L";
	rename -uid "75CF6A1A-442A-A337-E3AA-AEBBECB10BED";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95805322065520016 0.28658746588524503 -0.0012848305999893985 0
		 0.0012137249677142096 -0.00042575631315244604 -0.99999917280128925 0 -0.28658777584520212 -0.95805398758578986 6.0058844250975024e-05 0
		 97.652713771227781 159.38304127562949 0.5708328572542255 1;
createNode joint -n "model2:RingFinger3_L" -p "model2:RingFinger2_L";
	rename -uid "DE975678-45A9-7AF7-D11F-F4BB18CFA7F4";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.90828428966328822 0.41829208551597563 0.0071680084787271656 0
		 -0.0065107580472330206 0.0029983954378141019 -0.99997430949722244 0 -0.41830283190591167 -0.9083076245521069 3.0915022762825653e-09 0
		 101.02682494253065 158.37372577065446 0.57535782641794098 1;
createNode joint -n "model2:RingFinger4_L" -p "model2:RingFinger3_L";
	rename -uid "08426BAB-4B82-03F4-8AC6-04856385F28F";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.844702104422435 -2.3314683517128287e-15 -3.694822225952521e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.90828428966328822 0.41829208551597563 0.0071680084787271656 0
		 -0.0065107580472330206 0.0029983954378141019 -0.99997430949722244 0 -0.41830283190591167 -0.9083076245521069 3.0915022762825653e-09 0
		 104.51890746241308 156.76551730920826 0.54779896913526316 1;
createNode joint -n "model2:PinkyFinger0_L" -p "model2:Wrist_L";
	rename -uid "356BE74B-4687-C796-B3E2-A8AB34727FDB";
	addAttr -ci true -sn "fat" -ln "fat" -dv 2.1753269635479935 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98663872139836672 -0.10596104640555926 0.12375900000418362 0
		 -0.12317313127088621 -0.012081023238793372 -0.99231165901163798 0 0.10664151710436995 -0.9942968900294028 -0.0011319485570055827 0
		 88.172352645936314 159.79329181670698 -2.2586504811031087 1;
createNode joint -n "model2:PinkyFinger1_L" -p "model2:PinkyFinger0_L";
	rename -uid "F019C6FA-4F5E-FCCE-7555-A18AAD3BB95B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.96886702464982877 0.24507185976684948 -0.035163505180882494 0
		 0.033959204479702847 -0.0091393631334324363 -0.99938143092245812 0 -0.2452416379355144 -0.96946183813079101 0.00053238216823946628 0
		 92.291572550910047 160.23567953375027 -2.7753447129231872 1;
createNode joint -n "model2:PinkyFinger2_L" -p "model2:PinkyFinger1_L";
	rename -uid "90D96884-4D75-AB0A-7991-1CBE840D3AA3";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.94005496360776619 0.34096815068240233 -0.0061143778607923608 0
		 0.0059687012044873661 -0.0014762525149774031 -0.99998109746356845 0 -0.34097073188520671 -0.94007368907907118 -0.0006473785074270214 0
		 96.78737638259966 159.09848012645548 -2.6121765822037175 1;
createNode joint -n "model2:PinkyFinger3_L" -p "model2:PinkyFinger2_L";
	rename -uid "EA0C103E-42EB-5B1D-8B23-ACAF94E8C228";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86682647710800187 0.49819274327907787 -0.020392379179440482 0
		 0.017680330105788636 -0.010161449500362789 -0.99979205381489233 0 -0.49829636212988881 -0.86700676784447206 1.3152278156543587e-09 0
		 99.86895367839486 157.98075855441084 -2.5921331499331179 1;
createNode joint -n "model2:PinkyFinger4_L" -p "model2:PinkyFinger3_L";
	rename -uid "B5656D12-4AF8-3370-24E1-6AB7F42C7F7C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1435947896195646 5.773159728050814e-15 4.5474735088646412e-13 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86682647710800187 0.49819274327907787 -0.020392379179440482 0
		 0.017680330105788636 -0.010161449500362789 -0.99979205381489233 0 -0.49829636212988881 -0.86700676784447206 1.3152278156543587e-09 0
		 102.59390487533562 156.41464244241206 -2.5280277729966882 1;
createNode joint -n "model2:ThumbFinger1_L" -p "model2:Wrist_L";
	rename -uid "9188BB18-43F8-53E1-2D29-BA85DA5DB46E";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.40596595967732213 0.70738072981267608 -0.57862262544162257 0
		 0.66943795815545315 0.66119204719290914 0.33864125104527409 0 0.6221289735769655 -0.24987512845126381 -0.74196897537399453 0
		 85.509902967830527 157.48760217787728 4.5777547945855979 1;
createNode joint -n "model2:ThumbFinger2_L" -p "model2:ThumbFinger1_L";
	rename -uid "324BBB6C-481E-31DA-C74B-23B2DA561E27";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.83042927823232549 0.46491572442065915 -0.30698629129156862 0
		 0.41261389700977635 0.88348276708752105 0.22182870024814688 0 0.37434874896137149 0.057546237459890931 -0.92550064543751942 0
		 87.432857535876735 154.13692468062533 7.318538828922514 1;
createNode joint -n "model2:ThumbFinger3_L" -p "model2:ThumbFinger2_L";
	rename -uid "7182E823-42B7-B8A9-614C-8FA654A3E37A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.8981103378015528 0.3677589259842885 -0.24114558567981834 0
		 0.31857044316705807 0.92207653373691678 0.21974471250079386 0 0.30316776522962369 0.12053314187639355 -0.94528359122280303 0
		 90.772335046284496 152.26731862670243 8.5530495123052344 1;
createNode joint -n "model2:ThumbFinger4_L" -p "model2:ThumbFinger3_L";
	rename -uid "3F946762-429A-A064-13B3-2FB7927A0645";
	addAttr -ci true -sn "fat" -ln "fat" -dv 1.3051961781287951 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.1112262962178576 8.5265128291212022e-14 -3.5527136788005009e-14 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.8981103378015528 0.3677589259842885 -0.24114558567981834 0
		 0.31857044316705807 0.92207653373691678 0.21974471250079386 0 0.30316776522962369 0.12053314187639355 -0.94528359122280303 0
		 94.46466988395936 150.75537845952707 9.5444535853690127 1;
createNode joint -n "model2:Shoulder2Partial_L" -p "model2:Shoulder_L";
	rename -uid "3C0A6079-4AA6-89E0-26ED-89A31EF8FD25";
	addAttr -ci true -sn "partialJoint" -ln "partialJoint" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99558863744860282 -0.043205607851988584 -0.08328589576497443 0
		 0.089181440947392512 -0.15994662700625786 -0.98308888056974164 0 0.029153654552744258 -0.98617967529221617 0.16309418281090837 0
		 48.816916780508869 158.59963465626737 -1.2693679584936366 1;
	setAttr -k on ".follow";
createNode joint -n "model2:SkirtJntTop_M" -p "model2:Spine1_M";
	rename -uid "39F1FC21-447B-2AC1-66A5-D49FDAEF8CF0";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.066048165876019 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 3.152594528407407e-16 -0.99612985124282516 0.08789379649866183 0
		 -1.7481576297000816e-15 -0.087893796498661733 -0.99612985124282516 0 0.99999999999999989 1.1102230246251563e-16 -1.9984014443252814e-15 0
		 2.2080477343033904e-14 128.99999979547948 14.000000179772929 1;
createNode joint -n "model2:SkirtJntMid1_M" -p "model2:SkirtJntTop_M";
	rename -uid "60807C6E-4852-22D1-27F6-3EB908027E64";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.066048165876019 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.6613381477509373e-16 -0.9961298512428246 0.087893796498661844 0
		 -1.9428902930940236e-15 -0.0878937964986619 -0.99612985124282449 0 0.99999999999999978 5.5511151231257817e-16 -1.9984014443252814e-15 0
		 2.4232570545805145e-14 122.19999978716838 14.600000085584123 1;
createNode joint -n "model2:SkirtJntMid2_M" -p "model2:SkirtJntMid1_M";
	rename -uid "8E5146C2-4874-80E9-581F-939BA4745633";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.066048165876019 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-16 -0.9961298512428246 0.087893796498661844 0
		 -1.9428902930940239e-15 -0.0878937964986619 -0.99612985124282449 0 1 5.5511151231257827e-16 -1.9984014443252818e-15 0
		 2.8779879252953653e-14 115.39999977885707 15.199999991395295 1;
createNode joint -n "model2:SkirtJntMid3_M" -p "model2:SkirtJntMid2_M";
	rename -uid "D92F9E43-4388-75A4-CD87-1798579B19AF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.066048165876019 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-16 -0.9961298512428246 0.087893796498661844 0
		 -1.9428902930940239e-15 -0.0878937964986619 -0.99612985124282449 0 1 5.5511151231257827e-16 -1.9984014443252818e-15 0
		 3.3327187960101255e-14 108.59999977054714 15.799999897206352 1;
createNode joint -n "model2:SkirtJntMid4_M" -p "model2:SkirtJntMid3_M";
	rename -uid "702F3421-4FF2-72CB-CDD9-53945073E0CF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.066048165876019 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-16 -0.9961298512428246 0.087893796498661844 0
		 -1.9428902930940239e-15 -0.0878937964986619 -0.99612985124282449 0 1 5.5511151231257827e-16 -1.9984014443252818e-15 0
		 3.7874496667249703e-14 101.79999976223597 16.399999803017529 1;
createNode joint -n "model2:SkirtJntEnd_M" -p "model2:SkirtJntMid4_M";
	rename -uid "663D6F9B-4D07-E279-839F-2C9652AAE5C1";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.066048165876019 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.8264192663503565 2.8421709430404007e-14 1.9721522630525295e-31 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6.6613381477509392e-16 -0.9961298512428246 0.087893796498661844 0
		 -1.9428902930940239e-15 -0.0878937964986619 -0.99612985124282449 0 1 5.5511151231257827e-16 -1.9984014443252818e-15 0
		 4.242180537439781e-14 94.999999753925238 16.999999708828643 1;
createNode joint -n "model2:Hip_R" -p "model2:Root_M";
	rename -uid "CB859180-47C3-AF30-1B41-1CB0F3D4BD1F";
	addAttr -ci true -sn "fat" -ln "fat" -dv 9.4626722914337709 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0017061098409363305 -0.99930372986097338 0.037271231199897337 0
		 0.0081856198967234454 0.037256080867180796 0.99927222520458558 0 -0.99996504179702062 0.0020099563088810664 0.0081163575278175876 0
		 -8.5661411642391236 114.74543947977314 -1.3177659120203877 1;
createNode joint -n "model2:Knee_R" -p "model2:Hip_R";
	rename -uid "028EA392-4BFB-9AAA-5C46-8D901C6BE83E";
	addAttr -ci true -sn "fat" -ln "fat" -dv 6.5259808906439805 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0024145271960884771 -0.99873886520294775 -0.050148272069394068 0
		 0.0080053258710880964 -0.05016611614190402 0.9987088041811456 0 -0.99996504179702084 0.0020099563088809007 0.0081163575278171418 0
		 -8.6411418293840576 70.816002685480143 0.32067908354582664 1;
createNode joint -n "model2:Ankle_R" -p "model2:Knee_R";
	rename -uid "744C8F2A-4297-79EB-9ED8-C6A25A011631";
	addAttr -ci true -sn "fat" -ln "fat" -dv 4.0243548825637863 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9.1190542894636906e-09 -0.99999999999999811 4.354238801744349e-08 0
		 -0.075442773981389974 4.2730331378446323e-08 0.99715013305619615 0 -0.99715013305619737 -1.2378024660374826e-08 -0.075442773981389433 0
		 -8.7600893838363341 21.614839929954059 -2.1497898067302899 1;
createNode joint -n "model2:Toes_R" -p "model2:Ankle_R";
	rename -uid "5A97CE24-41C7-0B25-31D4-14B31AC06E4A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.2629904453219893 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0057950305754081999 -0.11314999932903406 0.99356101738769387 0
		 -0.027224430363808467 0.99319156359222849 0.11326671355958255 0 -0.99961254894683904 -0.027705516798319813 0.0026751312008561762 0
		 -9.7366603633534083 2.4173263910117839 10.757849060980147 1;
createNode joint -n "model2:ToesEnd_R" -p "model2:Toes_R";
	rename -uid "90AEFC8D-4652-B065-EDB0-6689F9C3E78D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.2629904453219893 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.4228679725833828 2.2204460492503131e-15 -5.3290705182007514e-14 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0057950305754081999 -0.11314999932903406 0.99356101738769387 0
		 -0.027224430363808467 0.99319156359222849 0.11326671355958255 0 -0.99961254894683904 -0.027705516798319813 0.0026751312008561762 0
		 -9.6820545553441999 1.3511288862364013 20.120043350530011 1;
createNode joint -n "model2:KneePartial_R" -p "model2:Hip_R";
	rename -uid "67DBCAE5-4A50-F136-2CD1-9CA8FED26664";
	addAttr -ci true -sn "partialJoint" -ln "partialJoint" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -1.3322676295501878e-15 8.8817841970012523e-15 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6797304411479205e-14 -1.1287241906678141e-14 1.590277340731758e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.002414527196088779 -0.99873886520294775 -0.050148272069396052 0
		 0.0080053258710887087 -0.050166116141906233 0.9987088041811456 0 -0.99996504179702106 0.0020099563088810672 0.0081163575278175911 0
		 -8.6411868049462885 70.79739910874747 0.31974496827308996 1;
	setAttr -k on ".follow";
createNode joint -n "model2:Hip_L" -p "model2:Root_M";
	rename -uid "62E3C62C-43DD-1C95-4A21-6F9E49718A66";
	addAttr -ci true -sn "fat" -ln "fat" -dv 9.4626722914337709 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0017061092253634056 0.99930372918299071 -0.037271249405929296 0
		 0.0081856199023900306 -0.037256099077623617 -0.99927222452559517 0 -0.99996504179802426 -0.0020099558418366632 -0.0081163575197953364 0
		 8.5661411642391165 114.74543947977314 -1.3177659120204372 1;
createNode joint -n "model2:Knee_L" -p "model2:Hip_L";
	rename -uid "B513EE34-4EEC-B274-CACC-8498BDAB9E59";
	addAttr -ci true -sn "fat" -ln "fat" -dv 6.5259808906439805 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0024145265833632741 0.99873886611806995 0.05014825387359502 0
		 0.0080053259304979103 0.050166097941798833 -0.9987088050948788 0 -0.99996504179802426 -0.0020099558418368853 -0.0081163575197951109 0
		 8.6411418023234852 70.816002715284299 0.32067988388378477 1;
createNode joint -n "model2:Ankle_L" -p "model2:Knee_L";
	rename -uid "5998664A-4AFF-2963-BDDD-CE93D280BB9F";
	addAttr -ci true -sn "fat" -ln "fat" -dv 4.0243548825637863 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 3.9755088067014444e-10 0.99999999999999956 -3.1841504593316142e-08 0
		 -0.075442774606509735 -3.1720768241207033e-08 -0.99715013300890198 0 -0.99715013300890198 2.7986293291495934e-09 0.075442774606509722 0
		 8.7600893265909043 21.614839914676331 -2.1497881100092844 1;
createNode joint -n "model2:Toes_L" -p "model2:Ankle_L";
	rename -uid "9A6FDD29-4AEC-DFF8-4EBB-20A1813880AB";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.2629904453219893 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0057950289656998333 0.11315001100511324 -0.99356101606737268 0
		 -0.027224421772692048 -0.99319156250434715 -0.11326672516373021 0 -0.99961254919014964 0.027705508111496406 -0.0026751302500136465 0
		 9.7366604605739706 2.4173264242883086 10.75785081822918 1;
createNode joint -n "model2:ToesEnd_L" -p "model2:Toes_L";
	rename -uid "06A3CA05-437B-F2D1-18EF-A7B28AFB1E5D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.2629904453219893 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.422867972583381 6.3060667798708891e-14 5.1514348342607263e-14 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0057950289656998333 0.11315001100511324 -0.99356101606737268 0
		 -0.027224421772692048 -0.99319156250434715 -0.11326672516373021 0 -0.99961254919014964 0.027705508111496406 -0.0026751302500136465 0
		 9.6820546677328316 1.3511288094907086 20.120045095337822 1;
createNode joint -n "model2:KneePartial_L" -p "model2:Hip_L";
	rename -uid "7DB4D38B-444D-D415-B5D4-D7AA4163D6C9";
	addAttr -ci true -sn "partialJoint" -ln "partialJoint" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "follow" -ln "follow" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 4.4408920985006262e-16 8.8817841970012523e-15 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3815534397607157e-14 1.1548146782891948e-14 2.7829853462805772e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.002414526583362879 0.99873886611806983 0.050148253873596525 0
		 0.0080053259304982624 0.050166097941800721 -0.99870880509487836 0 -0.99996504179802426 -0.0020099558418366632 -0.0081163575197953364 0
		 8.6411867778742728 70.79739913853453 0.31974576894998519 1;
	setAttr -k on ".follow";
createNode transform -n "model3:Group" -p "group";
	rename -uid "1CAC18D9-4C17-B07E-05EC-3E9DD6F4EEB0";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:MotionSystem" -p "model3:Group";
	rename -uid "2A9F490A-4835-DFD6-87FE-82BB99BC477D";
createNode transform -n "model3:MainSystem" -p "model3:MotionSystem";
	rename -uid "64601B7D-4B7F-6155-30D7-26907404B0C4";
createNode transform -n "model3:Main" -p "model3:MainSystem";
	rename -uid "89E1DB25-4052-14C7-7628-F4A11AB1E87A";
	addAttr -ci true -sn "fkVis" -ln "fkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikVis" -ln "ikVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkIkVis" -ln "fkIkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimVis" -ln "aimVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimFKVis" -ln "aimFKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimLRVis" -ln "aimLRVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fingerVis" -ln "fingerVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendVis" -ln "bendVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "arrowVis" -ln "arrowVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "drvSysVis" -ln "drvSysVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "jointVis" -ln "jointVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "height" -ln "height" -at "double";
	addAttr -ci true -sn "version" -ln "version" -at "double";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" -40.867339761386496 85.099778987441752 13.657008074588662 ;
	setAttr ".r" -type "double3" 89.039984231762887 11.9704764750773 -0.1991324392639521 ;
	setAttr -cb on ".fkVis";
	setAttr -cb on ".ikVis";
	setAttr -cb on ".fkIkVis";
	setAttr -cb on ".aimVis";
	setAttr -cb on ".aimFKVis";
	setAttr -cb on ".aimLRVis";
	setAttr -cb on ".fingerVis";
	setAttr -cb on ".bendVis";
	setAttr -cb on ".arrowVis";
	setAttr -cb on ".drvSysVis";
	setAttr -cb on ".jointVis";
	setAttr ".height" 72;
	setAttr ".version" 6.6;
createNode nurbsCurve -n "model3:MainShape" -p "model3:Main";
	rename -uid "9D2D5F0B-4E69-3069-2825-6A9EFCCEA40E";
	setAttr -k off ".v";
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 -17.178423712757986
		5.7261412375859972 0 -11.452282475171994
		1.4315353093964993 0 -11.452282475171994
		1.4315353093964993 0 -1.4315353093964993
		11.452282475171994 0 -1.4315353093964993
		11.452282475171994 0 -5.7261412375859972
		17.178423712757986 0 0
		11.452282475171994 0 5.7261412375859972
		11.452282475171994 0 1.4315353093964993
		1.4315353093964993 0 1.4315353093964993
		1.4315353093964993 0 11.452282475171994
		5.7261412375859972 0 11.452282475171994
		0 0 17.178423712757986
		-5.7261412375859972 0 11.452282475171994
		-1.4315353093964993 0 11.452282475171994
		-1.4315353093964993 0 1.4315353093964993
		-11.452282475171994 0 1.4315353093964993
		-11.452282475171994 0 5.7261412375859972
		-17.178423712757986 0 0
		-11.452282475171994 0 -5.7261412375859972
		-11.452282475171994 0 -1.4315353093964993
		-1.4315353093964993 0 -1.4315353093964993
		-1.4315353093964993 0 -11.452282475171994
		-5.7261412375859972 0 -11.452282475171994
		0 0 -17.178423712757986
		;
createNode transform -n "model3:FKSystem" -p "model3:MotionSystem";
	rename -uid "A84DA712-4F9C-DA7F-0C1F-3F965DE06A09";
createNode transform -n "model3:FKOffsetRoot_M" -p "model3:FKSystem";
	rename -uid "A1B5884B-4946-6534-FC1F-BEA320A38521";
createNode transform -n "model3:FKExtraRoot_M" -p "model3:FKOffsetRoot_M";
	rename -uid "05DB66B0-489C-93DC-B32F-1A8C197C93D7";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKRoot_M" -p "model3:FKExtraRoot_M";
	rename -uid "DBA1AF3F-4AF3-D923-8439-258CF346A37F";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -cb on ".legLock";
createNode joint -n "model3:FKXRoot_M" -p "model3:FKRoot_M";
	rename -uid "169207B0-4592-F81F-2980-1CABC2BCBEB3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint2_M" -p "model3:FKXRoot_M";
	rename -uid "C2F7085F-4085-6C65-1847-229C308E073A";
createNode transform -n "model3:FKExtrajoint2_M" -p "model3:FKOffsetjoint2_M";
	rename -uid "2BE558C2-46A0-9239-F9C2-0E91CD4FC250";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint2_M" -p "model3:FKExtrajoint2_M";
	rename -uid "1980A4A8-4D84-ADB5-8F16-6FB258A44241";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "model3:FKXjoint2_M" -p "model3:FKjoint2_M";
	rename -uid "C6F1654B-403F-68F6-EC25-EC8484BF74C2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint3_M" -p "model3:FKXjoint2_M";
	rename -uid "4C12AA8B-4EE4-8B5C-000B-6DA6C769AEDA";
createNode transform -n "model3:FKExtrajoint3_M" -p "model3:FKOffsetjoint3_M";
	rename -uid "B0FBE57B-492C-7F35-5FF7-E39F5D1E0AD4";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint3_M" -p "model3:FKExtrajoint3_M";
	rename -uid "9F1D53D6-47ED-DDB4-0BAC-3592922ECBC3";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "model3:FKXjoint3_M" -p "model3:FKjoint3_M";
	rename -uid "3039D457-49BD-F20A-167C-0292FFA49673";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint4_M" -p "model3:FKXjoint3_M";
	rename -uid "5CCA657A-4343-D6E5-14A5-10AA747085EC";
createNode transform -n "model3:FKExtrajoint4_M" -p "model3:FKOffsetjoint4_M";
	rename -uid "F8120D6A-43BC-2F5D-F834-70BEA0F09E40";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint4_M" -p "model3:FKExtrajoint4_M";
	rename -uid "57F5B5C0-4968-29CD-E74B-C1A774C33E3B";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "model3:FKXjoint4_M" -p "model3:FKjoint4_M";
	rename -uid "1A4065CF-4433-0322-5C0E-8DBEAD5B2A08";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint5_M" -p "model3:FKXjoint4_M";
	rename -uid "E0E16148-45D3-FD2C-399E-048C82E97B9F";
createNode transform -n "model3:FKExtrajoint5_M" -p "model3:FKOffsetjoint5_M";
	rename -uid "6061DFAD-4AF4-290D-910E-C1BB9AEF55D8";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint5_M" -p "model3:FKExtrajoint5_M";
	rename -uid "17125D4A-4F77-22E1-4828-5E9FF908218E";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "model3:FKXjoint5_M" -p "model3:FKjoint5_M";
	rename -uid "CE555ACE-481D-EF18-8F88-E09E052DF199";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint6_M" -p "model3:FKXjoint5_M";
	rename -uid "08E63ADE-4689-7283-974D-0BBBAFAF42E2";
createNode transform -n "model3:FKExtrajoint6_M" -p "model3:FKOffsetjoint6_M";
	rename -uid "FE47A6DE-442B-5D15-58CD-5C97B0595408";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint6_M" -p "model3:FKExtrajoint6_M";
	rename -uid "F7AD0E21-415D-FBC3-D653-36A88114E5A2";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode joint -n "model3:FKXjoint6_M" -p "model3:FKjoint6_M";
	rename -uid "2B5F79C3-4993-46D1-8E72-699C8915C2CA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint7_M" -p "model3:FKXjoint6_M";
	rename -uid "9B1B0268-429F-9DB7-974A-D0BABFD30447";
createNode transform -n "model3:FKExtrajoint7_M" -p "model3:FKOffsetjoint7_M";
	rename -uid "80EFD2DB-4463-5283-505F-918160218618";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint7_M" -p "model3:FKExtrajoint7_M";
	rename -uid "B9CF81ED-47D7-F287-10E4-E78AEF6812DF";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "model3:FKjoint7_MShape" -p "model3:FKjoint7_M";
	rename -uid "BAC41768-407F-B514-6AB5-46A399F7DB61";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -7.237863544435843 -7.237863544435843
		0 1.3175330011466083e-15 -10.235884953210707
		0 7.237863544435843 -7.237863544435843
		-4.1018497414753547e-15 10.235884953210707 -3.0107381344619456e-15
		0 7.237863544435843 7.237863544435843
		0 3.5964883121817555e-15 10.235884953210707
		0 -7.237863544435843 7.237863544435843
		4.1018497414753547e-15 -10.235884953210707 5.6773575606213069e-15
		0 -7.237863544435843 -7.237863544435843
		0 1.3175330011466083e-15 -10.235884953210707
		0 7.237863544435843 -7.237863544435843
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "model3:FKXjoint7_M" -p "model3:FKjoint7_M";
	rename -uid "DA560CAF-4669-60DF-228C-EBB415DF0F08";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "model3:FKOffsetjoint8_M" -p "model3:FKXjoint7_M";
	rename -uid "0F5D8012-425E-394B-6A45-56BF0293CA71";
createNode transform -n "model3:FKExtrajoint8_M" -p "model3:FKOffsetjoint8_M";
	rename -uid "03B93023-4B3C-E09E-3D85-F5AC41E42765";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:FKjoint8_M" -p "model3:FKExtrajoint8_M";
	rename -uid "ED76A03C-48B9-46AB-E68B-5A80816CEB31";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "model3:FKjoint8_MShape" -p "model3:FKjoint8_M";
	rename -uid "E1F5E24B-4C28-724E-C046-38AE1ED3D0AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -7.4729506169918007 -7.4729506169918007
		0 9.4876920537868299e-16 -10.568348588110437
		0 7.4729506169918007 -7.4729506169918007
		-4.2350785377724568e-15 10.568348588110437 -2.7800785407541359e-15
		0 7.4729506169918007 7.4729506169918007
		0 3.301745349448384e-15 10.568348588110437
		0 -7.4729506169918007 7.4729506169918007
		4.2350785377724568e-15 -10.568348588110437 6.1902078185850333e-15
		0 -7.4729506169918007 -7.4729506169918007
		0 9.4876920537868299e-16 -10.568348588110437
		0 7.4729506169918007 -7.4729506169918007
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "model3:FKXjoint8_M" -p "model3:FKjoint8_M";
	rename -uid "E90EB5D4-44C9-99D1-5EE1-86B6CB369322";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "model3:FKOffsetjoint8_M_pointConstraint1" -p "model3:FKOffsetjoint8_M";
	rename -uid "28457C36-4FC4-E6EA-CF6C-23A132029FCA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint8_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint8_M" -p "model3:FKXjoint7_M";
	rename -uid "5F678BCF-4C93-1CBD-7A48-66AD41F6A5EB";
createNode transform -n "model3:FKPS2joint8_M" -p "model3:FKPS1joint8_M";
	rename -uid "EAB56EC7-4938-9AAD-607B-E5AEB9CC5202";
	setAttr ".t" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
createNode scaleConstraint -n "model3:FKPS1joint8_M_scaleConstraint1" -p "model3:FKPS1joint8_M";
	rename -uid "411D72E2-488A-C27D-C7D0-6EBB8A8E4BFB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint7_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode pointConstraint -n "model3:FKOffsetjoint7_M_pointConstraint1" -p "model3:FKOffsetjoint7_M";
	rename -uid "B77F03DA-4F98-B137-2DF6-66AFD57F838D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint7_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint7_M" -p "model3:FKXjoint6_M";
	rename -uid "99097A70-49DF-0A69-93DC-98B47C26B12B";
createNode transform -n "model3:FKPS2joint7_M" -p "model3:FKPS1joint7_M";
	rename -uid "33108848-4C74-CC15-775D-64A8D90173A4";
	setAttr ".t" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
createNode scaleConstraint -n "model3:FKPS1joint7_M_scaleConstraint1" -p "model3:FKPS1joint7_M";
	rename -uid "35ECAA93-4599-8D5E-CE49-AA845D1D5436";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint6_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode pointConstraint -n "model3:FKOffsetjoint6_M_pointConstraint1" -p "model3:FKOffsetjoint6_M";
	rename -uid "B3BC2318-4097-B88B-9E6F-539B79DB4D6F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint6_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint6_M" -p "model3:FKXjoint5_M";
	rename -uid "90291521-4EFE-9B11-4A4E-68B76D5049DD";
createNode transform -n "model3:FKPS2joint6_M" -p "model3:FKPS1joint6_M";
	rename -uid "C2151AF2-43E9-2DAD-99A8-429D871AE7D5";
	setAttr ".t" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
createNode scaleConstraint -n "model3:FKPS1joint6_M_scaleConstraint1" -p "model3:FKPS1joint6_M";
	rename -uid "11103C9E-41C0-DD6F-3012-2BAE1DF4D474";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint5_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode pointConstraint -n "model3:FKOffsetjoint5_M_pointConstraint1" -p "model3:FKOffsetjoint5_M";
	rename -uid "9B59B269-47F6-6B41-CD7D-72B4CE59E0FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint5_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint5_M" -p "model3:FKXjoint4_M";
	rename -uid "B7B738F9-4952-453E-AC3F-1EB6D4A4359A";
createNode transform -n "model3:FKPS2joint5_M" -p "model3:FKPS1joint5_M";
	rename -uid "72194E09-4342-0687-6A85-E3878F032446";
	setAttr ".t" -type "double3" 8 -1.4654943925052066e-14 8.8817841970012523e-16 ;
createNode scaleConstraint -n "model3:FKPS1joint5_M_scaleConstraint1" -p "model3:FKPS1joint5_M";
	rename -uid "CC1990A8-4DE4-1D6E-2293-CAA358BAF5EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint4_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode pointConstraint -n "model3:FKOffsetjoint4_M_pointConstraint1" -p "model3:FKOffsetjoint4_M";
	rename -uid "08A85C59-4DE1-F60A-7D7D-CAB5EDAB0142";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint4_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 10 -1.8318679906315083e-14 1.1102230246251565e-15 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint4_M" -p "model3:FKXjoint3_M";
	rename -uid "F60CFE87-4BB4-489B-A48C-F59B0E383076";
createNode transform -n "model3:FKPS2joint4_M" -p "model3:FKPS1joint4_M";
	rename -uid "79266DCB-4266-99E8-AD38-5D9A8EB3C505";
	setAttr ".t" -type "double3" 10 -1.8318679906315083e-14 1.1102230246251565e-15 ;
createNode scaleConstraint -n "model3:FKPS1joint4_M_scaleConstraint1" -p "model3:FKPS1joint4_M";
	rename -uid "B4F6BCD2-4F88-9999-C0A3-38BF020D7679";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint3_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode pointConstraint -n "model3:FKOffsetjoint3_M_pointConstraint1" -p "model3:FKOffsetjoint3_M";
	rename -uid "8E04B38A-4579-D806-710A-C28F0F866A4E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint3_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 13 -2.3814283878209608e-14 1.4432899320127035e-15 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint3_M" -p "model3:FKXjoint2_M";
	rename -uid "B9F6725A-489F-B844-D8F2-ACA67E57741D";
createNode transform -n "model3:FKPS2joint3_M" -p "model3:FKPS1joint3_M";
	rename -uid "B976D67F-4C21-EF97-EFCA-1B88BE6150A9";
	setAttr ".t" -type "double3" 13 -2.3814283878209608e-14 1.4432899320127035e-15 ;
createNode scaleConstraint -n "model3:FKPS1joint3_M_scaleConstraint1" -p "model3:FKPS1joint3_M";
	rename -uid "0C5F0DA0-44BB-E78E-74CC-FF86C0D98022";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint2_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode pointConstraint -n "model3:FKOffsetjoint2_M_pointConstraint1" -p "model3:FKOffsetjoint2_M";
	rename -uid "3077C5CA-419D-EAC6-5ABB-01A446528F71";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2joint2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 12 -2.19824158875781e-14 1.3322676295501878e-15 ;
	setAttr -k on ".w0";
createNode transform -n "model3:FKPS1joint2_M" -p "model3:FKXRoot_M";
	rename -uid "70444C50-4325-D6B5-D2F7-5CA1CC69820D";
createNode transform -n "model3:FKPS2joint2_M" -p "model3:FKPS1joint2_M";
	rename -uid "5ABDA398-41D8-ADAA-F198-B599BC57E2E0";
	setAttr ".t" -type "double3" 12 -2.19824158875781e-14 1.3322676295501878e-15 ;
createNode scaleConstraint -n "model3:FKPS1joint2_M_scaleConstraint1" -p "model3:FKPS1joint2_M";
	rename -uid "0054019D-4D3D-A486-6D14-EBAFB30362A0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode transform -n "model3:RootSystem" -p "model3:MotionSystem";
	rename -uid "120B4071-4848-E19D-4538-A19CDFC347F2";
createNode transform -n "model3:RootFollowMain" -p "model3:RootSystem";
	rename -uid "76F46A7B-42EC-2F01-5028-C39925B5D6D9";
createNode parentConstraint -n "model3:RootFollowMain_parentConstraint1" -p "model3:RootFollowMain";
	rename -uid "DAE03A07-43E9-5FFA-1377-EAAE4DBC6584";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr ".lr" -type "double3" 89.039984231762887 11.970476475077303 -0.19913243926395305 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "model3:RootFollowMain_scaleConstraint1" -p "model3:RootFollowMain";
	rename -uid "AF1F9405-45E1-62A5-E9D4-2DAA96CBCD3C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -k on ".w0";
createNode transform -n "model3:RootOffsetX_M" -p "model3:RootFollowMain";
	rename -uid "DC43C23A-4917-C356-790E-88B11FEB3C7C";
createNode transform -n "model3:RootExtraX_M" -p "model3:RootOffsetX_M";
	rename -uid "9AC76CA7-4FD6-A68A-ACB8-60961A15363B";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "model3:Handle_ctr" -p "model3:RootExtraX_M";
	rename -uid "A5125DFF-44BC-95E6-7918-49845D86051D";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "model3:Handle_ctrShape" -p "model3:Handle_ctr";
	rename -uid "A8AEF896-4731-11E6-8E67-A992C5392B77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-3.6027027735117358 6.4939055628843665 3.602702773511731
		-3.6027027735117358 -5.8304991982045564 3.602702773511731
		3.6027027735117372 -5.8304991982045564 3.602702773511731
		3.6027027735117372 6.4939055628843665 3.602702773511731
		-3.6027027735117358 6.4939055628843665 3.602702773511731
		-3.6027027735117372 6.4939055628843665 -3.6027027735117438
		-3.6027027735117372 -5.8304991982045564 -3.6027027735117438
		-3.6027027735117358 -5.8304991982045564 3.602702773511731
		3.6027027735117372 -5.8304991982045564 3.602702773511731
		3.6027027735117341 -5.8304991982045564 -3.6027027735117438
		3.6027027735117341 6.4939055628843665 -3.6027027735117438
		3.6027027735117372 6.4939055628843665 3.602702773511731
		-3.6027027735117358 6.4939055628843665 3.602702773511731
		-3.6027027735117372 6.4939055628843665 -3.6027027735117438
		3.6027027735117341 6.4939055628843665 -3.6027027735117438
		3.6027027735117341 -5.8304991982045564 -3.6027027735117438
		-3.6027027735117372 -5.8304991982045564 -3.6027027735117438
		;
createNode fosterParent -n "modelRNfosterParent1";
	rename -uid "B159B2B3-49B9-AC2E-E18E-5AA6F1342270";
createNode parentConstraint -n "IKArm_L_parentConstraint1" -p "modelRNfosterParent1";
	rename -uid "7A843851-48BE-F1C7-D9B2-97BB4E5973A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKjoint7_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.5623919266749411 -4.4425621510846547 8.9876642408035394 ;
	setAttr ".tg[0].tor" -type "double3" 90.515881225335605 14.237774392769316 92.972081413405405 ;
	setAttr ".lr" -type "double3" 72.472566497709821 -58.26347086786361 130.55443695308705 ;
	setAttr ".rst" -type "double3" -56.641557303885591 -31.622555090553163 24.015621297889425 ;
	setAttr ".rsrr" -type "double3" -165.48367574014108 -89.051034858381215 -1.9711926831233311 ;
	setAttr -k on ".w0";
createNode fosterParent -n "modelRN1fosterParent1";
	rename -uid "E1C3DAF1-446B-DC88-AF98-9FBB6F0EBA28";
createNode parentConstraint -n "Main_parentConstraint1" -p "modelRN1fosterParent1";
	rename -uid "8FC07D1E-4964-68AA-93BA-F1898580A496";
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
	setAttr ".tg[0].tot" -type "double3" 7.200213482490156 0.15815641060778418 -3.6377774418871809 ;
	setAttr ".tg[0].tor" -type "double3" 25.696160047794411 97.602900597718119 12.80141451963677 ;
	setAttr ".lr" -type "double3" 6.786081389251982 -15.998468693924549 -67.64455701440319 ;
	setAttr ".rst" -type "double3" -40.867339761386496 85.099778987441752 13.657008074588662 ;
	setAttr ".rsrr" -type "double3" 89.039984231762887 11.9704764750773 -0.1991324392639521 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DF7DD775-4537-D14C-38D3-6B85BC6D6CFD";
	setAttr -s 45 ".lnk";
	setAttr -s 45 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CFD60FB9-466C-4AC1-17D4-9F8EE22CA561";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4E8BEDC0-4074-865A-1517-C0B34B57D1EC";
createNode displayLayerManager -n "layerManager";
	rename -uid "44A33A56-4EFD-9D9C-F2AF-FB934ED81CB8";
	setAttr ".cdl" 1;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "094C0761-4CBE-088C-671D-FBA1B1426FE9";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "19B1A4E5-4BA2-EBAF-717B-B1BE08BF0814";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F6EA61C1-4CB9-FC2B-8E3E-DB95C8D6FA52";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "88229D50-45CB-5656-2F61-789D1E73A1F1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"MG-PickerStudio_3DPanel\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"MG-PickerStudio_3DPanel\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n"
		+ "            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n"
		+ "            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1247\n            -height 817\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n"
		+ "                -constrainDrag 2\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 0\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 677\n            -height 784\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"MG-PickerStudio_3DPanel\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"MG-PickerStudio_3DPanel\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -camera \\\"|front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 0\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1247\\n    -height 817\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"MG-PickerStudio_3DPanel\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -camera \\\"|front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 0\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1247\\n    -height 817\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4973F308-484A-9376-B311-BDB1CBF21861";
	setAttr ".b" -type "string" "playbackOptions -min 101 -max 153 -ast 101 -aet 153 ";
	setAttr ".st" 6;
createNode reference -n "modelRN";
	rename -uid "726E9857-4F6B-7FAB-B855-B4B8154E7760";
	setAttr ".fn[0]" -type "string" "P:/Funked Punk//01_Assets/01_Char/03_cGuard/02_Rig/Guard_Rig_game_lowrig.ma";
	setAttr -s 835 ".phl";
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 49
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
		"modelRN.placeHolderList[297]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.scaleY" 
		"modelRN.placeHolderList[298]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.scaleZ" 
		"modelRN.placeHolderList[299]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.translateX" 
		"modelRN.placeHolderList[300]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.translateY" 
		"modelRN.placeHolderList[301]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.translateZ" 
		"modelRN.placeHolderList[302]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.rotateX" 
		"modelRN.placeHolderList[303]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.rotateY" 
		"modelRN.placeHolderList[304]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M.rotateZ" 
		"modelRN.placeHolderList[305]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.scaleX" 
		"modelRN.placeHolderList[306]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.scaleY" 
		"modelRN.placeHolderList[307]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.scaleZ" 
		"modelRN.placeHolderList[308]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.translateX" 
		"modelRN.placeHolderList[309]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.translateY" 
		"modelRN.placeHolderList[310]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.translateZ" 
		"modelRN.placeHolderList[311]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.rotateX" 
		"modelRN.placeHolderList[312]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.rotateY" 
		"modelRN.placeHolderList[313]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M.rotateZ" 
		"modelRN.placeHolderList[314]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.scaleX" 
		"modelRN.placeHolderList[315]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.scaleY" 
		"modelRN.placeHolderList[316]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.scaleZ" 
		"modelRN.placeHolderList[317]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.translateX" 
		"modelRN.placeHolderList[318]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.translateY" 
		"modelRN.placeHolderList[319]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.translateZ" 
		"modelRN.placeHolderList[320]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.rotateX" 
		"modelRN.placeHolderList[321]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.rotateY" 
		"modelRN.placeHolderList[322]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M.rotateZ" 
		"modelRN.placeHolderList[323]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.scaleX" 
		"modelRN.placeHolderList[324]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.scaleY" 
		"modelRN.placeHolderList[325]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.scaleZ" 
		"modelRN.placeHolderList[326]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.translateX" 
		"modelRN.placeHolderList[327]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.translateY" 
		"modelRN.placeHolderList[328]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.translateZ" 
		"modelRN.placeHolderList[329]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.rotateX" 
		"modelRN.placeHolderList[330]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.rotateY" 
		"modelRN.placeHolderList[331]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M.rotateZ" 
		"modelRN.placeHolderList[332]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.scaleX" 
		"modelRN.placeHolderList[333]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.scaleY" 
		"modelRN.placeHolderList[334]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.scaleZ" 
		"modelRN.placeHolderList[335]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.translateX" 
		"modelRN.placeHolderList[336]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.translateY" 
		"modelRN.placeHolderList[337]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.translateZ" 
		"modelRN.placeHolderList[338]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.rotateX" 
		"modelRN.placeHolderList[339]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.rotateY" 
		"modelRN.placeHolderList[340]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetjoint1_M|model:FKExtrajoint1_M|model:FKjoint1_M|model:FKOffsetjoint11_M|model:FKExtrajoint11_M|model:FKjoint11_M|model:FKOffsetjoint12_M|model:FKExtrajoint12_M|model:FKjoint12_M|model:FKOffsetjoint13_M|model:FKExtrajoint13_M|model:FKjoint13_M|model:FKOffsetjoint14_M|model:FKExtrajoint14_M|model:FKjoint14_M.rotateZ" 
		"modelRN.placeHolderList[341]" ""
		"modelRN" 812
		0 "|modelRNfosterParent1|IKArm_L_parentConstraint1" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L" 
		"-s -r "
		1 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R" 
		"blendFKShoulderR" "blendFKShoulderR" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		1 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L" 
		"blendFKShoulderL" "blendFKShoulderL" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		2 "|model:Group|model:MotionSystem|model:MainSystem|model:Main" "jointVis" 
		" -cb 1 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L" 
		"rotate" " -type \"double3\" 0 81.09877568964193983 0"
		2 "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R" 
		"blendFKShoulderR" " -k 1"
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
		2 "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_R|model:PoleExtraArm_R|model:PoleArm_R" 
		"translate" " -type \"double3\" 0 -95.95505520442105762 0"
		2 "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:SkirtJntTop_M|model:SkirtJntMid1_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|model:Group|model:Geometry|model:geo|model:Guard_geo_grp|model:Head_geo_grp|model:DecorHead_geo_grp|model:Hat_Top_low_geo" 
		"visibility" " 1"
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleX" 
		"modelRN.placeHolderList[342]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleY" 
		"modelRN.placeHolderList[343]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.scaleZ" 
		"modelRN.placeHolderList[344]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.visibility" 
		"modelRN.placeHolderList[345]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateX" 
		"modelRN.placeHolderList[346]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateY" 
		"modelRN.placeHolderList[347]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.translateZ" 
		"modelRN.placeHolderList[348]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateX" 
		"modelRN.placeHolderList[349]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateY" 
		"modelRN.placeHolderList[350]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:MainSystem|model:Main.rotateZ" 
		"modelRN.placeHolderList[351]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleX" 
		"modelRN.placeHolderList[352]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleY" 
		"modelRN.placeHolderList[353]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.scaleZ" 
		"modelRN.placeHolderList[354]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateX" 
		"modelRN.placeHolderList[355]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateY" 
		"modelRN.placeHolderList[356]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.translateZ" 
		"modelRN.placeHolderList[357]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateX" 
		"modelRN.placeHolderList[358]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateY" 
		"modelRN.placeHolderList[359]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M.rotateZ" 
		"modelRN.placeHolderList[360]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleX" 
		"modelRN.placeHolderList[361]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleY" 
		"modelRN.placeHolderList[362]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.scaleZ" 
		"modelRN.placeHolderList[363]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.Global" 
		"modelRN.placeHolderList[364]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateX" 
		"modelRN.placeHolderList[365]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateY" 
		"modelRN.placeHolderList[366]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.translateZ" 
		"modelRN.placeHolderList[367]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateX" 
		"modelRN.placeHolderList[368]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateY" 
		"modelRN.placeHolderList[369]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M.rotateZ" 
		"modelRN.placeHolderList[370]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleX" 
		"modelRN.placeHolderList[371]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleY" 
		"modelRN.placeHolderList[372]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.scaleZ" 
		"modelRN.placeHolderList[373]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateX" 
		"modelRN.placeHolderList[374]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateY" 
		"modelRN.placeHolderList[375]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.translateZ" 
		"modelRN.placeHolderList[376]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateX" 
		"modelRN.placeHolderList[377]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateY" 
		"modelRN.placeHolderList[378]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetNeck_M|model:FKExtraNeck_M|model:FKNeck_M|model:FKOffsetHead_M|model:FKGlobalHead_M|model:FKExtraHead_M|model:FKHead_M|model:FKOffsetJaw_M|model:FKExtraJaw_M|model:FKJaw_M.rotateZ" 
		"modelRN.placeHolderList[379]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleX" 
		"modelRN.placeHolderList[380]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleY" 
		"modelRN.placeHolderList[381]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.scaleZ" 
		"modelRN.placeHolderList[382]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.Global" 
		"modelRN.placeHolderList[383]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateX" 
		"modelRN.placeHolderList[384]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateY" 
		"modelRN.placeHolderList[385]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.translateZ" 
		"modelRN.placeHolderList[386]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateX" 
		"modelRN.placeHolderList[387]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateY" 
		"modelRN.placeHolderList[388]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R.rotateZ" 
		"modelRN.placeHolderList[389]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleX" 
		"modelRN.placeHolderList[390]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleY" 
		"modelRN.placeHolderList[391]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.scaleZ" 
		"modelRN.placeHolderList[392]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.Global" 
		"modelRN.placeHolderList[393]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"modelRN.placeHolderList[394]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateX" 
		"modelRN.placeHolderList[395]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"modelRN.placeHolderList[396]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateZ" 
		"modelRN.placeHolderList[397]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.rotateY" 
		"modelRN.placeHolderList[398]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateX" 
		"modelRN.placeHolderList[399]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateY" 
		"modelRN.placeHolderList[400]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R.translateZ" 
		"modelRN.placeHolderList[401]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleX" 
		"modelRN.placeHolderList[402]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleX" 
		"modelRN.placeHolderList[403]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleY" 
		"modelRN.placeHolderList[404]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleY" 
		"modelRN.placeHolderList[405]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleZ" 
		"modelRN.placeHolderList[406]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.scaleZ" 
		"modelRN.placeHolderList[407]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateX" 
		"modelRN.placeHolderList[408]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateX" 
		"modelRN.placeHolderList[409]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateY" 
		"modelRN.placeHolderList[410]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateY" 
		"modelRN.placeHolderList[411]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateZ" 
		"modelRN.placeHolderList[412]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.translateZ" 
		"modelRN.placeHolderList[413]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateX" 
		"modelRN.placeHolderList[414]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateX" 
		"modelRN.placeHolderList[415]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateY" 
		"modelRN.placeHolderList[416]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateY" 
		"modelRN.placeHolderList[417]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateZ" 
		"modelRN.placeHolderList[418]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateZ" 
		"modelRN.placeHolderList[419]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R.rotateOrder" 
		"modelRN.placeHolderList[420]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleX" 
		"modelRN.placeHolderList[421]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleX" 
		"modelRN.placeHolderList[422]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleY" 
		"modelRN.placeHolderList[423]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleY" 
		"modelRN.placeHolderList[424]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleZ" 
		"modelRN.placeHolderList[425]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.scaleZ" 
		"modelRN.placeHolderList[426]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateX" 
		"modelRN.placeHolderList[427]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateX" 
		"modelRN.placeHolderList[428]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateY" 
		"modelRN.placeHolderList[429]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateY" 
		"modelRN.placeHolderList[430]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateZ" 
		"modelRN.placeHolderList[431]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.translateZ" 
		"modelRN.placeHolderList[432]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateX" 
		"modelRN.placeHolderList[433]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateX" 
		"modelRN.placeHolderList[434]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateY" 
		"modelRN.placeHolderList[435]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateY" 
		"modelRN.placeHolderList[436]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateZ" 
		"modelRN.placeHolderList[437]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateZ" 
		"modelRN.placeHolderList[438]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_R|model:FKGlobalScapula_R|model:FKExtraScapula_R|model:FKScapula_R|model:FKOffsetShoulder_R|model:FKGlobalShoulder_R|model:FKExtraShoulder_R|model:FKShoulder_R|model:FKOffsetElbow_R|model:FKExtraElbow_R|model:FKShoulder2_R|model:FKOffsetWrist_R|model:FKExtraWrist_R|model:FKWrist_R.rotateOrder" 
		"modelRN.placeHolderList[439]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleX" 
		"modelRN.placeHolderList[440]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleY" 
		"modelRN.placeHolderList[441]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.scaleZ" 
		"modelRN.placeHolderList[442]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.Global" 
		"modelRN.placeHolderList[443]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateX" 
		"modelRN.placeHolderList[444]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateY" 
		"modelRN.placeHolderList[445]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.translateZ" 
		"modelRN.placeHolderList[446]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateX" 
		"modelRN.placeHolderList[447]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateY" 
		"modelRN.placeHolderList[448]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L.rotateZ" 
		"modelRN.placeHolderList[449]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleX" 
		"modelRN.placeHolderList[450]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleY" 
		"modelRN.placeHolderList[451]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.scaleZ" 
		"modelRN.placeHolderList[452]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"modelRN.placeHolderList[453]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateX" 
		"modelRN.placeHolderList[454]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateY" 
		"modelRN.placeHolderList[455]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.rotateZ" 
		"modelRN.placeHolderList[456]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateX" 
		"modelRN.placeHolderList[457]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateY" 
		"modelRN.placeHolderList[458]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L.translateZ" 
		"modelRN.placeHolderList[459]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.scaleX" 
		"modelRN.placeHolderList[460]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.scaleY" 
		"modelRN.placeHolderList[461]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.scaleZ" 
		"modelRN.placeHolderList[462]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.translateX" 
		"modelRN.placeHolderList[463]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.translateY" 
		"modelRN.placeHolderList[464]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.translateZ" 
		"modelRN.placeHolderList[465]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.rotateX" 
		"modelRN.placeHolderList[466]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.rotateY" 
		"modelRN.placeHolderList[467]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L.rotateZ" 
		"modelRN.placeHolderList[468]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleX" 
		"modelRN.placeHolderList[469]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleY" 
		"modelRN.placeHolderList[470]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.scaleZ" 
		"modelRN.placeHolderList[471]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateX" 
		"modelRN.placeHolderList[472]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateY" 
		"modelRN.placeHolderList[473]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.translateZ" 
		"modelRN.placeHolderList[474]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateX" 
		"modelRN.placeHolderList[475]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateY" 
		"modelRN.placeHolderList[476]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToChest_M|model:FKOffsetScapula_L|model:FKGlobalScapula_L|model:FKExtraScapula_L|model:FKScapula_L|model:FKOffsetShoulder_L|model:FKGlobalShoulder_L|model:FKExtraShoulder_L|model:FKShoulder_L|model:FKOffsetElbow_L|model:FKExtraElbow_L|model:FKShoulder2_L|model:FKOffsetWrist_L|model:FKExtraWrist_L|model:FKWrist_L.rotateZ" 
		"modelRN.placeHolderList[477]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.scaleX" 
		"modelRN.placeHolderList[478]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.scaleY" 
		"modelRN.placeHolderList[479]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.scaleZ" 
		"modelRN.placeHolderList[480]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.Global" 
		"modelRN.placeHolderList[481]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.blendFKShoulderR" 
		"modelRN.placeHolderList[482]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.blendFKShoulderR" 
		"modelRN.placeHolderList[483]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateX" 
		"modelRN.placeHolderList[484]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateZ" 
		"modelRN.placeHolderList[485]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.rotateY" 
		"modelRN.placeHolderList[486]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.translateX" 
		"modelRN.placeHolderList[487]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.translateY" 
		"modelRN.placeHolderList[488]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_R|model:FKOffsetShoulderArmor_R|model:FKGlobalShoulderArmor_R|model:FKExtraShoulderArmor_R|model:FKShoulderArmor_R.translateZ" 
		"modelRN.placeHolderList[489]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.scaleX" 
		"modelRN.placeHolderList[490]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.scaleY" 
		"modelRN.placeHolderList[491]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.scaleZ" 
		"modelRN.placeHolderList[492]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.translateX" 
		"modelRN.placeHolderList[493]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.translateY" 
		"modelRN.placeHolderList[494]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.translateZ" 
		"modelRN.placeHolderList[495]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.rotateX" 
		"modelRN.placeHolderList[496]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.rotateY" 
		"modelRN.placeHolderList[497]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R.rotateZ" 
		"modelRN.placeHolderList[498]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleX" 
		"modelRN.placeHolderList[499]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleY" 
		"modelRN.placeHolderList[500]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.scaleZ" 
		"modelRN.placeHolderList[501]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateX" 
		"modelRN.placeHolderList[502]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateY" 
		"modelRN.placeHolderList[503]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.translateZ" 
		"modelRN.placeHolderList[504]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateX" 
		"modelRN.placeHolderList[505]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateY" 
		"modelRN.placeHolderList[506]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R.rotateZ" 
		"modelRN.placeHolderList[507]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleX" 
		"modelRN.placeHolderList[508]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleY" 
		"modelRN.placeHolderList[509]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.scaleZ" 
		"modelRN.placeHolderList[510]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateX" 
		"modelRN.placeHolderList[511]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateY" 
		"modelRN.placeHolderList[512]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.translateZ" 
		"modelRN.placeHolderList[513]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateX" 
		"modelRN.placeHolderList[514]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateY" 
		"modelRN.placeHolderList[515]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R.rotateZ" 
		"modelRN.placeHolderList[516]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleX" 
		"modelRN.placeHolderList[517]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleY" 
		"modelRN.placeHolderList[518]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.scaleZ" 
		"modelRN.placeHolderList[519]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateX" 
		"modelRN.placeHolderList[520]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateY" 
		"modelRN.placeHolderList[521]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.translateZ" 
		"modelRN.placeHolderList[522]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateX" 
		"modelRN.placeHolderList[523]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateY" 
		"modelRN.placeHolderList[524]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetIndexFinger0_R|model:FKExtraIndexFinger0_R|model:FKIndexFinger0_R|model:FKOffsetIndexFinger1_R|model:SDKFKIndexFinger1_R|model:FKExtraIndexFinger1_R|model:FKIndexFinger1_R|model:FKOffsetIndexFinger2_R|model:SDKFKIndexFinger2_R|model:FKExtraIndexFinger2_R|model:FKIndexFinger2_R|model:FKOffsetIndexFinger3_R|model:SDKFKIndexFinger3_R|model:FKExtraIndexFinger3_R|model:FKIndexFinger3_R.rotateZ" 
		"modelRN.placeHolderList[525]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.scaleX" 
		"modelRN.placeHolderList[526]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.scaleY" 
		"modelRN.placeHolderList[527]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.scaleZ" 
		"modelRN.placeHolderList[528]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.translateX" 
		"modelRN.placeHolderList[529]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.translateY" 
		"modelRN.placeHolderList[530]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.translateZ" 
		"modelRN.placeHolderList[531]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.rotateX" 
		"modelRN.placeHolderList[532]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.rotateY" 
		"modelRN.placeHolderList[533]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R.rotateZ" 
		"modelRN.placeHolderList[534]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleX" 
		"modelRN.placeHolderList[535]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleY" 
		"modelRN.placeHolderList[536]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.scaleZ" 
		"modelRN.placeHolderList[537]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateX" 
		"modelRN.placeHolderList[538]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateY" 
		"modelRN.placeHolderList[539]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.translateZ" 
		"modelRN.placeHolderList[540]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateX" 
		"modelRN.placeHolderList[541]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateY" 
		"modelRN.placeHolderList[542]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R.rotateZ" 
		"modelRN.placeHolderList[543]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleX" 
		"modelRN.placeHolderList[544]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleY" 
		"modelRN.placeHolderList[545]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.scaleZ" 
		"modelRN.placeHolderList[546]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateX" 
		"modelRN.placeHolderList[547]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateY" 
		"modelRN.placeHolderList[548]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.translateZ" 
		"modelRN.placeHolderList[549]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateX" 
		"modelRN.placeHolderList[550]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateY" 
		"modelRN.placeHolderList[551]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R.rotateZ" 
		"modelRN.placeHolderList[552]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleX" 
		"modelRN.placeHolderList[553]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleY" 
		"modelRN.placeHolderList[554]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.scaleZ" 
		"modelRN.placeHolderList[555]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateX" 
		"modelRN.placeHolderList[556]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateY" 
		"modelRN.placeHolderList[557]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.translateZ" 
		"modelRN.placeHolderList[558]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateX" 
		"modelRN.placeHolderList[559]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateY" 
		"modelRN.placeHolderList[560]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetMiddleFinger0_R|model:FKExtraMiddleFinger0_R|model:FKMiddleFinger0_R|model:FKOffsetMiddleFinger1_R|model:SDKFKMiddleFinger1_R|model:FKExtraMiddleFinger1_R|model:FKMiddleFinger1_R|model:FKOffsetMiddleFinger2_R|model:SDKFKMiddleFinger2_R|model:FKExtraMiddleFinger2_R|model:FKMiddleFinger2_R|model:FKOffsetMiddleFinger3_R|model:SDKFKMiddleFinger3_R|model:FKExtraMiddleFinger3_R|model:FKMiddleFinger3_R.rotateZ" 
		"modelRN.placeHolderList[561]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.scaleX" 
		"modelRN.placeHolderList[562]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.scaleY" 
		"modelRN.placeHolderList[563]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.scaleZ" 
		"modelRN.placeHolderList[564]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.translateX" 
		"modelRN.placeHolderList[565]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.translateY" 
		"modelRN.placeHolderList[566]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.translateZ" 
		"modelRN.placeHolderList[567]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.rotateX" 
		"modelRN.placeHolderList[568]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.rotateY" 
		"modelRN.placeHolderList[569]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R.rotateZ" 
		"modelRN.placeHolderList[570]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleX" 
		"modelRN.placeHolderList[571]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleY" 
		"modelRN.placeHolderList[572]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.scaleZ" 
		"modelRN.placeHolderList[573]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateX" 
		"modelRN.placeHolderList[574]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateY" 
		"modelRN.placeHolderList[575]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.translateZ" 
		"modelRN.placeHolderList[576]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateX" 
		"modelRN.placeHolderList[577]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateY" 
		"modelRN.placeHolderList[578]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R.rotateZ" 
		"modelRN.placeHolderList[579]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleX" 
		"modelRN.placeHolderList[580]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleY" 
		"modelRN.placeHolderList[581]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.scaleZ" 
		"modelRN.placeHolderList[582]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateX" 
		"modelRN.placeHolderList[583]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateY" 
		"modelRN.placeHolderList[584]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.translateZ" 
		"modelRN.placeHolderList[585]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateX" 
		"modelRN.placeHolderList[586]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateY" 
		"modelRN.placeHolderList[587]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R.rotateZ" 
		"modelRN.placeHolderList[588]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleX" 
		"modelRN.placeHolderList[589]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleY" 
		"modelRN.placeHolderList[590]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.scaleZ" 
		"modelRN.placeHolderList[591]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateX" 
		"modelRN.placeHolderList[592]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateY" 
		"modelRN.placeHolderList[593]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.translateZ" 
		"modelRN.placeHolderList[594]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateX" 
		"modelRN.placeHolderList[595]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateY" 
		"modelRN.placeHolderList[596]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetRingFinger0_R|model:FKExtraRingFinger0_R|model:FKRingFinger0_R|model:FKOffsetRingFinger1_R|model:SDKFKRingFinger1_R|model:FKExtraRingFinger1_R|model:FKRingFinger1_R|model:FKOffsetRingFinger2_R|model:SDKFKRingFinger2_R|model:FKExtraRingFinger2_R|model:FKRingFinger2_R|model:FKOffsetRingFinger3_R|model:SDKFKRingFinger3_R|model:FKExtraRingFinger3_R|model:FKRingFinger3_R.rotateZ" 
		"modelRN.placeHolderList[597]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.scaleX" 
		"modelRN.placeHolderList[598]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.scaleY" 
		"modelRN.placeHolderList[599]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.scaleZ" 
		"modelRN.placeHolderList[600]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.translateX" 
		"modelRN.placeHolderList[601]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.translateY" 
		"modelRN.placeHolderList[602]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.translateZ" 
		"modelRN.placeHolderList[603]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.rotateX" 
		"modelRN.placeHolderList[604]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.rotateY" 
		"modelRN.placeHolderList[605]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R.rotateZ" 
		"modelRN.placeHolderList[606]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleX" 
		"modelRN.placeHolderList[607]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleY" 
		"modelRN.placeHolderList[608]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.scaleZ" 
		"modelRN.placeHolderList[609]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateX" 
		"modelRN.placeHolderList[610]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateY" 
		"modelRN.placeHolderList[611]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.translateZ" 
		"modelRN.placeHolderList[612]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateX" 
		"modelRN.placeHolderList[613]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateY" 
		"modelRN.placeHolderList[614]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R.rotateZ" 
		"modelRN.placeHolderList[615]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleX" 
		"modelRN.placeHolderList[616]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleY" 
		"modelRN.placeHolderList[617]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.scaleZ" 
		"modelRN.placeHolderList[618]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateX" 
		"modelRN.placeHolderList[619]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateY" 
		"modelRN.placeHolderList[620]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.translateZ" 
		"modelRN.placeHolderList[621]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateX" 
		"modelRN.placeHolderList[622]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateY" 
		"modelRN.placeHolderList[623]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R.rotateZ" 
		"modelRN.placeHolderList[624]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleX" 
		"modelRN.placeHolderList[625]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleY" 
		"modelRN.placeHolderList[626]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.scaleZ" 
		"modelRN.placeHolderList[627]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateX" 
		"modelRN.placeHolderList[628]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateY" 
		"modelRN.placeHolderList[629]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.translateZ" 
		"modelRN.placeHolderList[630]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateX" 
		"modelRN.placeHolderList[631]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateY" 
		"modelRN.placeHolderList[632]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetPinkyFinger0_R|model:FKExtraPinkyFinger0_R|model:FKPinkyFinger0_R|model:FKOffsetPinkyFinger1_R|model:SDKFKPinkyFinger1_R|model:FKExtraPinkyFinger1_R|model:FKPinkyFinger1_R|model:FKOffsetPinkyFinger2_R|model:SDKFKPinkyFinger2_R|model:FKExtraPinkyFinger2_R|model:FKPinkyFinger2_R|model:FKOffsetPinkyFinger3_R|model:SDKFKPinkyFinger3_R|model:FKExtraPinkyFinger3_R|model:FKPinkyFinger3_R.rotateZ" 
		"modelRN.placeHolderList[633]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleX" 
		"modelRN.placeHolderList[634]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleY" 
		"modelRN.placeHolderList[635]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.scaleZ" 
		"modelRN.placeHolderList[636]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateX" 
		"modelRN.placeHolderList[637]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateY" 
		"modelRN.placeHolderList[638]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.translateZ" 
		"modelRN.placeHolderList[639]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateX" 
		"modelRN.placeHolderList[640]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateY" 
		"modelRN.placeHolderList[641]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R.rotateZ" 
		"modelRN.placeHolderList[642]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleX" 
		"modelRN.placeHolderList[643]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleY" 
		"modelRN.placeHolderList[644]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.scaleZ" 
		"modelRN.placeHolderList[645]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateX" 
		"modelRN.placeHolderList[646]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateY" 
		"modelRN.placeHolderList[647]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.translateZ" 
		"modelRN.placeHolderList[648]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateX" 
		"modelRN.placeHolderList[649]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateY" 
		"modelRN.placeHolderList[650]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R.rotateZ" 
		"modelRN.placeHolderList[651]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleX" 
		"modelRN.placeHolderList[652]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleY" 
		"modelRN.placeHolderList[653]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.scaleZ" 
		"modelRN.placeHolderList[654]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateX" 
		"modelRN.placeHolderList[655]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateY" 
		"modelRN.placeHolderList[656]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.translateZ" 
		"modelRN.placeHolderList[657]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateX" 
		"modelRN.placeHolderList[658]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateY" 
		"modelRN.placeHolderList[659]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_R|model:FKOffsetThumbFinger1_R|model:FKExtraThumbFinger1_R|model:FKThumbFinger1_R|model:FKOffsetThumbFinger2_R|model:SDKFKThumbFinger2_R|model:FKExtraThumbFinger2_R|model:FKThumbFinger2_R|model:FKOffsetThumbFinger3_R|model:SDKFKThumbFinger3_R|model:FKExtraThumbFinger3_R|model:FKThumbFinger3_R.rotateZ" 
		"modelRN.placeHolderList[660]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.scaleX" 
		"modelRN.placeHolderList[661]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.scaleY" 
		"modelRN.placeHolderList[662]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.scaleZ" 
		"modelRN.placeHolderList[663]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.rotateX" 
		"modelRN.placeHolderList[664]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.rotateY" 
		"modelRN.placeHolderList[665]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.rotateZ" 
		"modelRN.placeHolderList[666]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.translateX" 
		"modelRN.placeHolderList[667]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.translateY" 
		"modelRN.placeHolderList[668]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M.translateZ" 
		"modelRN.placeHolderList[669]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.scaleX" 
		"modelRN.placeHolderList[670]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.scaleY" 
		"modelRN.placeHolderList[671]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.scaleZ" 
		"modelRN.placeHolderList[672]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.translateX" 
		"modelRN.placeHolderList[673]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.translateY" 
		"modelRN.placeHolderList[674]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.translateZ" 
		"modelRN.placeHolderList[675]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.rotateX" 
		"modelRN.placeHolderList[676]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.rotateY" 
		"modelRN.placeHolderList[677]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M.rotateZ" 
		"modelRN.placeHolderList[678]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.scaleX" 
		"modelRN.placeHolderList[679]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.scaleY" 
		"modelRN.placeHolderList[680]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.scaleZ" 
		"modelRN.placeHolderList[681]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.translateX" 
		"modelRN.placeHolderList[682]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.translateY" 
		"modelRN.placeHolderList[683]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.translateZ" 
		"modelRN.placeHolderList[684]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.rotateX" 
		"modelRN.placeHolderList[685]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.rotateY" 
		"modelRN.placeHolderList[686]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M.rotateZ" 
		"modelRN.placeHolderList[687]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.scaleX" 
		"modelRN.placeHolderList[688]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.scaleY" 
		"modelRN.placeHolderList[689]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.scaleZ" 
		"modelRN.placeHolderList[690]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.translateX" 
		"modelRN.placeHolderList[691]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.translateY" 
		"modelRN.placeHolderList[692]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.translateZ" 
		"modelRN.placeHolderList[693]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.rotateX" 
		"modelRN.placeHolderList[694]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.rotateY" 
		"modelRN.placeHolderList[695]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M.rotateZ" 
		"modelRN.placeHolderList[696]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.scaleX" 
		"modelRN.placeHolderList[697]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.scaleY" 
		"modelRN.placeHolderList[698]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.scaleZ" 
		"modelRN.placeHolderList[699]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.translateX" 
		"modelRN.placeHolderList[700]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.translateY" 
		"modelRN.placeHolderList[701]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.translateZ" 
		"modelRN.placeHolderList[702]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.rotateX" 
		"modelRN.placeHolderList[703]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.rotateY" 
		"modelRN.placeHolderList[704]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToSpine1_M|model:FKOffsetSkirtJntTop_M|model:FKExtraSkirtJntTop_M|model:FKSkirtJntTop_M|model:FKOffsetSkirtJntMid1_M|model:FKExtraSkirtJntMid1_M|model:FKSkirtJntMid1_M|model:FKOffsetSkirtJntMid2_M|model:FKExtraSkirtJntMid2_M|model:FKSkirtJntMid2_M|model:FKOffsetSkirtJntMid3_M|model:FKExtraSkirtJntMid3_M|model:FKSkirtJntMid3_M|model:FKOffsetSkirtJntMid4_M|model:FKExtraSkirtJntMid4_M|model:FKSkirtJntMid4_M.rotateZ" 
		"modelRN.placeHolderList[705]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleX" 
		"modelRN.placeHolderList[706]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleY" 
		"modelRN.placeHolderList[707]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.scaleZ" 
		"modelRN.placeHolderList[708]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateX" 
		"modelRN.placeHolderList[709]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateY" 
		"modelRN.placeHolderList[710]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.translateZ" 
		"modelRN.placeHolderList[711]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateX" 
		"modelRN.placeHolderList[712]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateY" 
		"modelRN.placeHolderList[713]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M.rotateZ" 
		"modelRN.placeHolderList[714]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.scaleX" 
		"modelRN.placeHolderList[715]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.scaleY" 
		"modelRN.placeHolderList[716]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.scaleZ" 
		"modelRN.placeHolderList[717]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.Global" 
		"modelRN.placeHolderList[718]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.translateX" 
		"modelRN.placeHolderList[719]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.translateY" 
		"modelRN.placeHolderList[720]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.translateZ" 
		"modelRN.placeHolderList[721]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.rotateX" 
		"modelRN.placeHolderList[722]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.rotateY" 
		"modelRN.placeHolderList[723]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M.rotateZ" 
		"modelRN.placeHolderList[724]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.rotateZ" 
		"modelRN.placeHolderList[725]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleX" 
		"modelRN.placeHolderList[726]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleY" 
		"modelRN.placeHolderList[727]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.scaleZ" 
		"modelRN.placeHolderList[728]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateX" 
		"modelRN.placeHolderList[729]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateY" 
		"modelRN.placeHolderList[730]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:FKOffsetSpine1_M|model:FKExtraSpine1_M|model:FKSpine1_M|model:FKOffsetSpine2_M|model:FKGlobalSpine2_M|model:FKExtraSpine2_M|model:FKSpine2_M|model:FKOffsetChest_M|model:FKExtraChest_M|model:FKChest_M.translateZ" 
		"modelRN.placeHolderList[731]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateX" 
		"modelRN.placeHolderList[732]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateY" 
		"modelRN.placeHolderList[733]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.rotateZ" 
		"modelRN.placeHolderList[734]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKOffsetRoot_M|model:FKExtraRoot_M|model:FKRoot_M|model:HipSwingerOffset_M|model:HipSwinger_M.visibility" 
		"modelRN.placeHolderList[735]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.scaleX" 
		"modelRN.placeHolderList[736]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.scaleY" 
		"modelRN.placeHolderList[737]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.scaleZ" 
		"modelRN.placeHolderList[738]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.Global" 
		"modelRN.placeHolderList[739]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.blendFKShoulderL" 
		"modelRN.placeHolderList[740]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.blendFKShoulderL" 
		"modelRN.placeHolderList[741]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateX" 
		"modelRN.placeHolderList[742]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateZ" 
		"modelRN.placeHolderList[743]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.rotateY" 
		"modelRN.placeHolderList[744]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.translateX" 
		"modelRN.placeHolderList[745]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.translateY" 
		"modelRN.placeHolderList[746]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToShoulder_L|model:FKOffsetShoulderArmor_L|model:FKGlobalShoulderArmor_L|model:FKExtraShoulderArmor_L|model:FKShoulderArmor_L.translateZ" 
		"modelRN.placeHolderList[747]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.scaleX" 
		"modelRN.placeHolderList[748]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.scaleY" 
		"modelRN.placeHolderList[749]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.scaleZ" 
		"modelRN.placeHolderList[750]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.translateX" 
		"modelRN.placeHolderList[751]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.translateY" 
		"modelRN.placeHolderList[752]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.translateZ" 
		"modelRN.placeHolderList[753]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.rotateX" 
		"modelRN.placeHolderList[754]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.rotateY" 
		"modelRN.placeHolderList[755]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L.rotateZ" 
		"modelRN.placeHolderList[756]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleX" 
		"modelRN.placeHolderList[757]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleY" 
		"modelRN.placeHolderList[758]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.scaleZ" 
		"modelRN.placeHolderList[759]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateX" 
		"modelRN.placeHolderList[760]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateY" 
		"modelRN.placeHolderList[761]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.translateZ" 
		"modelRN.placeHolderList[762]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateX" 
		"modelRN.placeHolderList[763]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateY" 
		"modelRN.placeHolderList[764]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L.rotateZ" 
		"modelRN.placeHolderList[765]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleX" 
		"modelRN.placeHolderList[766]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleY" 
		"modelRN.placeHolderList[767]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.scaleZ" 
		"modelRN.placeHolderList[768]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateX" 
		"modelRN.placeHolderList[769]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateY" 
		"modelRN.placeHolderList[770]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.translateZ" 
		"modelRN.placeHolderList[771]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateX" 
		"modelRN.placeHolderList[772]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateY" 
		"modelRN.placeHolderList[773]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L.rotateZ" 
		"modelRN.placeHolderList[774]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleX" 
		"modelRN.placeHolderList[775]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleY" 
		"modelRN.placeHolderList[776]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.scaleZ" 
		"modelRN.placeHolderList[777]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateX" 
		"modelRN.placeHolderList[778]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateY" 
		"modelRN.placeHolderList[779]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.translateZ" 
		"modelRN.placeHolderList[780]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateX" 
		"modelRN.placeHolderList[781]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateY" 
		"modelRN.placeHolderList[782]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetIndexFinger0_L|model:FKExtraIndexFinger0_L|model:FKIndexFinger0_L|model:FKOffsetIndexFinger1_L|model:SDKFKIndexFinger1_L|model:FKExtraIndexFinger1_L|model:FKIndexFinger1_L|model:FKOffsetIndexFinger2_L|model:SDKFKIndexFinger2_L|model:FKExtraIndexFinger2_L|model:FKIndexFinger2_L|model:FKOffsetIndexFinger3_L|model:SDKFKIndexFinger3_L|model:FKExtraIndexFinger3_L|model:FKIndexFinger3_L.rotateZ" 
		"modelRN.placeHolderList[783]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.scaleX" 
		"modelRN.placeHolderList[784]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.scaleY" 
		"modelRN.placeHolderList[785]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.scaleZ" 
		"modelRN.placeHolderList[786]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.translateX" 
		"modelRN.placeHolderList[787]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.translateY" 
		"modelRN.placeHolderList[788]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.translateZ" 
		"modelRN.placeHolderList[789]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.rotateX" 
		"modelRN.placeHolderList[790]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.rotateY" 
		"modelRN.placeHolderList[791]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L.rotateZ" 
		"modelRN.placeHolderList[792]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleX" 
		"modelRN.placeHolderList[793]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleY" 
		"modelRN.placeHolderList[794]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.scaleZ" 
		"modelRN.placeHolderList[795]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateX" 
		"modelRN.placeHolderList[796]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateY" 
		"modelRN.placeHolderList[797]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.translateZ" 
		"modelRN.placeHolderList[798]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateX" 
		"modelRN.placeHolderList[799]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateY" 
		"modelRN.placeHolderList[800]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L.rotateZ" 
		"modelRN.placeHolderList[801]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleX" 
		"modelRN.placeHolderList[802]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleY" 
		"modelRN.placeHolderList[803]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.scaleZ" 
		"modelRN.placeHolderList[804]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateX" 
		"modelRN.placeHolderList[805]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateY" 
		"modelRN.placeHolderList[806]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.translateZ" 
		"modelRN.placeHolderList[807]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateX" 
		"modelRN.placeHolderList[808]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateY" 
		"modelRN.placeHolderList[809]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L.rotateZ" 
		"modelRN.placeHolderList[810]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleX" 
		"modelRN.placeHolderList[811]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleY" 
		"modelRN.placeHolderList[812]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.scaleZ" 
		"modelRN.placeHolderList[813]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateX" 
		"modelRN.placeHolderList[814]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateY" 
		"modelRN.placeHolderList[815]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.translateZ" 
		"modelRN.placeHolderList[816]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateX" 
		"modelRN.placeHolderList[817]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateY" 
		"modelRN.placeHolderList[818]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetMiddleFinger0_L|model:FKExtraMiddleFinger0_L|model:FKMiddleFinger0_L|model:FKOffsetMiddleFinger1_L|model:SDKFKMiddleFinger1_L|model:FKExtraMiddleFinger1_L|model:FKMiddleFinger1_L|model:FKOffsetMiddleFinger2_L|model:SDKFKMiddleFinger2_L|model:FKExtraMiddleFinger2_L|model:FKMiddleFinger2_L|model:FKOffsetMiddleFinger3_L|model:SDKFKMiddleFinger3_L|model:FKExtraMiddleFinger3_L|model:FKMiddleFinger3_L.rotateZ" 
		"modelRN.placeHolderList[819]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.scaleX" 
		"modelRN.placeHolderList[820]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.scaleY" 
		"modelRN.placeHolderList[821]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.scaleZ" 
		"modelRN.placeHolderList[822]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.translateX" 
		"modelRN.placeHolderList[823]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.translateY" 
		"modelRN.placeHolderList[824]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.translateZ" 
		"modelRN.placeHolderList[825]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.rotateX" 
		"modelRN.placeHolderList[826]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.rotateY" 
		"modelRN.placeHolderList[827]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L.rotateZ" 
		"modelRN.placeHolderList[828]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleX" 
		"modelRN.placeHolderList[829]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleY" 
		"modelRN.placeHolderList[830]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.scaleZ" 
		"modelRN.placeHolderList[831]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateX" 
		"modelRN.placeHolderList[832]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateY" 
		"modelRN.placeHolderList[833]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.translateZ" 
		"modelRN.placeHolderList[834]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateX" 
		"modelRN.placeHolderList[835]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateY" 
		"modelRN.placeHolderList[836]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L.rotateZ" 
		"modelRN.placeHolderList[837]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleX" 
		"modelRN.placeHolderList[838]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleY" 
		"modelRN.placeHolderList[839]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.scaleZ" 
		"modelRN.placeHolderList[840]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateX" 
		"modelRN.placeHolderList[841]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateY" 
		"modelRN.placeHolderList[842]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.translateZ" 
		"modelRN.placeHolderList[843]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateX" 
		"modelRN.placeHolderList[844]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateY" 
		"modelRN.placeHolderList[845]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L.rotateZ" 
		"modelRN.placeHolderList[846]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleX" 
		"modelRN.placeHolderList[847]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleY" 
		"modelRN.placeHolderList[848]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.scaleZ" 
		"modelRN.placeHolderList[849]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateX" 
		"modelRN.placeHolderList[850]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateY" 
		"modelRN.placeHolderList[851]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.translateZ" 
		"modelRN.placeHolderList[852]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateX" 
		"modelRN.placeHolderList[853]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateY" 
		"modelRN.placeHolderList[854]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetRingFinger0_L|model:FKExtraRingFinger0_L|model:FKRingFinger0_L|model:FKOffsetRingFinger1_L|model:SDKFKRingFinger1_L|model:FKExtraRingFinger1_L|model:FKRingFinger1_L|model:FKOffsetRingFinger2_L|model:SDKFKRingFinger2_L|model:FKExtraRingFinger2_L|model:FKRingFinger2_L|model:FKOffsetRingFinger3_L|model:SDKFKRingFinger3_L|model:FKExtraRingFinger3_L|model:FKRingFinger3_L.rotateZ" 
		"modelRN.placeHolderList[855]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.scaleX" 
		"modelRN.placeHolderList[856]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.scaleY" 
		"modelRN.placeHolderList[857]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.scaleZ" 
		"modelRN.placeHolderList[858]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.translateX" 
		"modelRN.placeHolderList[859]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.translateY" 
		"modelRN.placeHolderList[860]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.translateZ" 
		"modelRN.placeHolderList[861]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.rotateX" 
		"modelRN.placeHolderList[862]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.rotateY" 
		"modelRN.placeHolderList[863]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L.rotateZ" 
		"modelRN.placeHolderList[864]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleX" 
		"modelRN.placeHolderList[865]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleY" 
		"modelRN.placeHolderList[866]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.scaleZ" 
		"modelRN.placeHolderList[867]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateX" 
		"modelRN.placeHolderList[868]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateY" 
		"modelRN.placeHolderList[869]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.translateZ" 
		"modelRN.placeHolderList[870]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateX" 
		"modelRN.placeHolderList[871]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateY" 
		"modelRN.placeHolderList[872]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L.rotateZ" 
		"modelRN.placeHolderList[873]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleX" 
		"modelRN.placeHolderList[874]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleY" 
		"modelRN.placeHolderList[875]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.scaleZ" 
		"modelRN.placeHolderList[876]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateX" 
		"modelRN.placeHolderList[877]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateY" 
		"modelRN.placeHolderList[878]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.translateZ" 
		"modelRN.placeHolderList[879]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateX" 
		"modelRN.placeHolderList[880]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateY" 
		"modelRN.placeHolderList[881]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L.rotateZ" 
		"modelRN.placeHolderList[882]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleX" 
		"modelRN.placeHolderList[883]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleY" 
		"modelRN.placeHolderList[884]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.scaleZ" 
		"modelRN.placeHolderList[885]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateX" 
		"modelRN.placeHolderList[886]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateY" 
		"modelRN.placeHolderList[887]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.translateZ" 
		"modelRN.placeHolderList[888]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateX" 
		"modelRN.placeHolderList[889]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateY" 
		"modelRN.placeHolderList[890]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetPinkyFinger0_L|model:FKExtraPinkyFinger0_L|model:FKPinkyFinger0_L|model:FKOffsetPinkyFinger1_L|model:SDKFKPinkyFinger1_L|model:FKExtraPinkyFinger1_L|model:FKPinkyFinger1_L|model:FKOffsetPinkyFinger2_L|model:SDKFKPinkyFinger2_L|model:FKExtraPinkyFinger2_L|model:FKPinkyFinger2_L|model:FKOffsetPinkyFinger3_L|model:SDKFKPinkyFinger3_L|model:FKExtraPinkyFinger3_L|model:FKPinkyFinger3_L.rotateZ" 
		"modelRN.placeHolderList[891]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleX" 
		"modelRN.placeHolderList[892]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleY" 
		"modelRN.placeHolderList[893]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.scaleZ" 
		"modelRN.placeHolderList[894]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateX" 
		"modelRN.placeHolderList[895]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateY" 
		"modelRN.placeHolderList[896]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.translateZ" 
		"modelRN.placeHolderList[897]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateX" 
		"modelRN.placeHolderList[898]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateY" 
		"modelRN.placeHolderList[899]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L.rotateZ" 
		"modelRN.placeHolderList[900]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleX" 
		"modelRN.placeHolderList[901]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleY" 
		"modelRN.placeHolderList[902]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.scaleZ" 
		"modelRN.placeHolderList[903]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateX" 
		"modelRN.placeHolderList[904]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateY" 
		"modelRN.placeHolderList[905]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.translateZ" 
		"modelRN.placeHolderList[906]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateX" 
		"modelRN.placeHolderList[907]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateY" 
		"modelRN.placeHolderList[908]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L.rotateZ" 
		"modelRN.placeHolderList[909]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleX" 
		"modelRN.placeHolderList[910]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleY" 
		"modelRN.placeHolderList[911]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.scaleZ" 
		"modelRN.placeHolderList[912]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateX" 
		"modelRN.placeHolderList[913]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateY" 
		"modelRN.placeHolderList[914]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.translateZ" 
		"modelRN.placeHolderList[915]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateX" 
		"modelRN.placeHolderList[916]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateY" 
		"modelRN.placeHolderList[917]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKSystem|model:FKParentConstraintToWrist_L|model:FKOffsetThumbFinger1_L|model:FKExtraThumbFinger1_L|model:FKThumbFinger1_L|model:FKOffsetThumbFinger2_L|model:SDKFKThumbFinger2_L|model:FKExtraThumbFinger2_L|model:FKThumbFinger2_L|model:FKOffsetThumbFinger3_L|model:SDKFKThumbFinger3_L|model:FKExtraThumbFinger3_L|model:FKThumbFinger3_L.rotateZ" 
		"modelRN.placeHolderList[918]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.scaleX" 
		"modelRN.placeHolderList[919]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.scaleY" 
		"modelRN.placeHolderList[920]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.scaleZ" 
		"modelRN.placeHolderList[921]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.followMain" 
		"modelRN.placeHolderList[922]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.followRoot" 
		"modelRN.placeHolderList[923]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.followChest" 
		"modelRN.placeHolderList[924]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.stretchy" 
		"modelRN.placeHolderList[925]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.antiPop" 
		"modelRN.placeHolderList[926]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Lenght1" 
		"modelRN.placeHolderList[927]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Lenght2" 
		"modelRN.placeHolderList[928]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Fatness1" 
		"modelRN.placeHolderList[929]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.Fatness2" 
		"modelRN.placeHolderList[930]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.volume" 
		"modelRN.placeHolderList[931]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.translateX" 
		"modelRN.placeHolderList[932]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.translateZ" 
		"modelRN.placeHolderList[933]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.translateY" 
		"modelRN.placeHolderList[934]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.rotateY" 
		"modelRN.placeHolderList[935]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.rotateX" 
		"modelRN.placeHolderList[936]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_R|model:IKExtraArm_R|model:IKArm_R.rotateZ" 
		"modelRN.placeHolderList[937]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleX" 
		"modelRN.placeHolderList[938]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleY" 
		"modelRN.placeHolderList[939]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.scaleZ" 
		"modelRN.placeHolderList[940]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.followMain" 
		"modelRN.placeHolderList[941]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.followRoot" 
		"modelRN.placeHolderList[942]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.swivel" 
		"modelRN.placeHolderList[943]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rock" 
		"modelRN.placeHolderList[944]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.roll" 
		"modelRN.placeHolderList[945]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollStartAngle" 
		"modelRN.placeHolderList[946]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rollEndAngle" 
		"modelRN.placeHolderList[947]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.stretchy" 
		"modelRN.placeHolderList[948]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.antiPop" 
		"modelRN.placeHolderList[949]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght1" 
		"modelRN.placeHolderList[950]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Lenght2" 
		"modelRN.placeHolderList[951]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness1" 
		"modelRN.placeHolderList[952]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.Fatness2" 
		"modelRN.placeHolderList[953]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.volume" 
		"modelRN.placeHolderList[954]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateX" 
		"modelRN.placeHolderList[955]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateY" 
		"modelRN.placeHolderList[956]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.translateZ" 
		"modelRN.placeHolderList[957]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateX" 
		"modelRN.placeHolderList[958]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateY" 
		"modelRN.placeHolderList[959]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R.rotateZ" 
		"modelRN.placeHolderList[960]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateX" 
		"modelRN.placeHolderList[961]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateY" 
		"modelRN.placeHolderList[962]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.translateZ" 
		"modelRN.placeHolderList[963]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateX" 
		"modelRN.placeHolderList[964]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateY" 
		"modelRN.placeHolderList[965]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.rotateZ" 
		"modelRN.placeHolderList[966]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleX" 
		"modelRN.placeHolderList[967]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleY" 
		"modelRN.placeHolderList[968]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R.scaleZ" 
		"modelRN.placeHolderList[969]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateX" 
		"modelRN.placeHolderList[970]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateY" 
		"modelRN.placeHolderList[971]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.translateZ" 
		"modelRN.placeHolderList[972]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateX" 
		"modelRN.placeHolderList[973]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateY" 
		"modelRN.placeHolderList[974]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.rotateZ" 
		"modelRN.placeHolderList[975]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleX" 
		"modelRN.placeHolderList[976]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleY" 
		"modelRN.placeHolderList[977]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R.scaleZ" 
		"modelRN.placeHolderList[978]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateX" 
		"modelRN.placeHolderList[979]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateY" 
		"modelRN.placeHolderList[980]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.translateZ" 
		"modelRN.placeHolderList[981]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateX" 
		"modelRN.placeHolderList[982]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateY" 
		"modelRN.placeHolderList[983]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.rotateZ" 
		"modelRN.placeHolderList[984]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleX" 
		"modelRN.placeHolderList[985]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleY" 
		"modelRN.placeHolderList[986]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:RollOffsetToes_R|model:RollRollerToes_R|model:RollExtraToes_R|model:RollToes_R.scaleZ" 
		"modelRN.placeHolderList[987]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateX" 
		"modelRN.placeHolderList[988]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateY" 
		"modelRN.placeHolderList[989]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.translateZ" 
		"modelRN.placeHolderList[990]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateX" 
		"modelRN.placeHolderList[991]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateY" 
		"modelRN.placeHolderList[992]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.rotateZ" 
		"modelRN.placeHolderList[993]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleX" 
		"modelRN.placeHolderList[994]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleY" 
		"modelRN.placeHolderList[995]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_R|model:IKExtraLeg_R|model:IKLeg_R|model:IKSubLeg_R|model:IKLegFootRockInnerPivot_R|model:IKLegFootRockOuterPivot_R|model:RollOffsetHeel_R|model:RollRollerHeel_R|model:RollExtraHeel_R|model:RollHeel_R|model:RollOffsetToesEnd_R|model:RollRollerToesEnd_R|model:RollExtraToesEnd_R|model:RollToesEnd_R|model:IKOffsetToes_R|model:IKExtraToes_R|model:IKToes_R.scaleZ" 
		"modelRN.placeHolderList[996]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateX" 
		"modelRN.placeHolderList[997]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateZ" 
		"modelRN.placeHolderList[998]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.translateY" 
		"modelRN.placeHolderList[999]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateX" 
		"modelRN.placeHolderList[1000]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateY" 
		"modelRN.placeHolderList[1001]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateZ" 
		"modelRN.placeHolderList[1002]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotateOrder" 
		"modelRN.placeHolderList[1003]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.parentInverseMatrix" 
		"modelRN.placeHolderList[1004]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotatePivot" 
		"modelRN.placeHolderList[1005]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetArm_L|model:IKExtraArm_L|model:IKArm_L.rotatePivotTranslate" 
		"modelRN.placeHolderList[1006]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleX" 
		"modelRN.placeHolderList[1007]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleY" 
		"modelRN.placeHolderList[1008]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.scaleZ" 
		"modelRN.placeHolderList[1009]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.followMain" 
		"modelRN.placeHolderList[1010]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.followRoot" 
		"modelRN.placeHolderList[1011]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.swivel" 
		"modelRN.placeHolderList[1012]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rock" 
		"modelRN.placeHolderList[1013]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.roll" 
		"modelRN.placeHolderList[1014]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollStartAngle" 
		"modelRN.placeHolderList[1015]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rollEndAngle" 
		"modelRN.placeHolderList[1016]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.stretchy" 
		"modelRN.placeHolderList[1017]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.antiPop" 
		"modelRN.placeHolderList[1018]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght1" 
		"modelRN.placeHolderList[1019]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Lenght2" 
		"modelRN.placeHolderList[1020]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness1" 
		"modelRN.placeHolderList[1021]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.Fatness2" 
		"modelRN.placeHolderList[1022]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.volume" 
		"modelRN.placeHolderList[1023]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateX" 
		"modelRN.placeHolderList[1024]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateY" 
		"modelRN.placeHolderList[1025]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.translateZ" 
		"modelRN.placeHolderList[1026]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateX" 
		"modelRN.placeHolderList[1027]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateY" 
		"modelRN.placeHolderList[1028]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L.rotateZ" 
		"modelRN.placeHolderList[1029]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateX" 
		"modelRN.placeHolderList[1030]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateY" 
		"modelRN.placeHolderList[1031]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.translateZ" 
		"modelRN.placeHolderList[1032]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateX" 
		"modelRN.placeHolderList[1033]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateY" 
		"modelRN.placeHolderList[1034]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.rotateZ" 
		"modelRN.placeHolderList[1035]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleX" 
		"modelRN.placeHolderList[1036]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleY" 
		"modelRN.placeHolderList[1037]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L.scaleZ" 
		"modelRN.placeHolderList[1038]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateX" 
		"modelRN.placeHolderList[1039]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateY" 
		"modelRN.placeHolderList[1040]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.translateZ" 
		"modelRN.placeHolderList[1041]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateX" 
		"modelRN.placeHolderList[1042]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateY" 
		"modelRN.placeHolderList[1043]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.rotateZ" 
		"modelRN.placeHolderList[1044]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleX" 
		"modelRN.placeHolderList[1045]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleY" 
		"modelRN.placeHolderList[1046]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L.scaleZ" 
		"modelRN.placeHolderList[1047]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateX" 
		"modelRN.placeHolderList[1048]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateY" 
		"modelRN.placeHolderList[1049]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.translateZ" 
		"modelRN.placeHolderList[1050]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateX" 
		"modelRN.placeHolderList[1051]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateY" 
		"modelRN.placeHolderList[1052]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.rotateZ" 
		"modelRN.placeHolderList[1053]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleX" 
		"modelRN.placeHolderList[1054]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleY" 
		"modelRN.placeHolderList[1055]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:RollOffsetToes_L|model:RollRollerToes_L|model:RollExtraToes_L|model:RollToes_L.scaleZ" 
		"modelRN.placeHolderList[1056]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateX" 
		"modelRN.placeHolderList[1057]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateY" 
		"modelRN.placeHolderList[1058]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.translateZ" 
		"modelRN.placeHolderList[1059]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateX" 
		"modelRN.placeHolderList[1060]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateY" 
		"modelRN.placeHolderList[1061]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.rotateZ" 
		"modelRN.placeHolderList[1062]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleX" 
		"modelRN.placeHolderList[1063]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleY" 
		"modelRN.placeHolderList[1064]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKHandle|model:IKOffsetLeg_L|model:IKExtraLeg_L|model:IKLeg_L|model:IKSubLeg_L|model:IKLegFootRockInnerPivot_L|model:IKLegFootRockOuterPivot_L|model:RollOffsetHeel_L|model:RollRollerHeel_L|model:RollExtraHeel_L|model:RollHeel_L|model:RollOffsetToesEnd_L|model:RollRollerToesEnd_L|model:RollExtraToesEnd_L|model:RollToesEnd_L|model:IKOffsetToes_L|model:IKExtraToes_L|model:IKToes_L.scaleZ" 
		"modelRN.placeHolderList[1065]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateX" 
		"modelRN.placeHolderList[1066]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateY" 
		"modelRN.placeHolderList[1067]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.translateZ" 
		"modelRN.placeHolderList[1068]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.follow" 
		"modelRN.placeHolderList[1069]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_R|model:PoleExtraLeg_R|model:PoleLeg_R.lock" 
		"modelRN.placeHolderList[1070]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateY" 
		"modelRN.placeHolderList[1071]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateZ" 
		"modelRN.placeHolderList[1072]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.translateX" 
		"modelRN.placeHolderList[1073]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.follow" 
		"modelRN.placeHolderList[1074]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetArm_L|model:PoleExtraArm_L|model:PoleArm_L.lock" 
		"modelRN.placeHolderList[1075]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateX" 
		"modelRN.placeHolderList[1076]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateY" 
		"modelRN.placeHolderList[1077]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.translateZ" 
		"modelRN.placeHolderList[1078]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.follow" 
		"modelRN.placeHolderList[1079]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:IKSystem|model:IKPoleVector|model:PoleOffsetLeg_L|model:PoleExtraLeg_L|model:PoleLeg_L.lock" 
		"modelRN.placeHolderList[1080]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKIKBlend" 
		"modelRN.placeHolderList[1081]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.IKVis" 
		"modelRN.placeHolderList[1082]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_R|model:FKIKArm_R.FKVis" 
		"modelRN.placeHolderList[1083]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKIKBlend" 
		"modelRN.placeHolderList[1084]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.IKVis" 
		"modelRN.placeHolderList[1085]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_R|model:FKIKLeg_R.FKVis" 
		"modelRN.placeHolderList[1086]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.FKIKBlend" 
		"modelRN.placeHolderList[1087]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.IKVis" 
		"modelRN.placeHolderList[1088]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintSpine_M|model:FKIKSpine_M.FKVis" 
		"modelRN.placeHolderList[1089]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKIKBlend" 
		"modelRN.placeHolderList[1090]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.IKVis" 
		"modelRN.placeHolderList[1091]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintArm_L|model:FKIKArm_L.FKVis" 
		"modelRN.placeHolderList[1092]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKIKBlend" 
		"modelRN.placeHolderList[1093]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.IKVis" 
		"modelRN.placeHolderList[1094]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:FKIKSystem|model:FKIKParentConstraintLeg_L|model:FKIKLeg_L.FKVis" 
		"modelRN.placeHolderList[1095]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateX" 
		"modelRN.placeHolderList[1096]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateY" 
		"modelRN.placeHolderList[1097]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.translateZ" 
		"modelRN.placeHolderList[1098]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.visibility" 
		"modelRN.placeHolderList[1099]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateX" 
		"modelRN.placeHolderList[1100]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateY" 
		"modelRN.placeHolderList[1101]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:RootSystem|model:RootFollowMain|model:RootOffsetX_M|model:RootExtraX_M|model:RootX_M.rotateZ" 
		"modelRN.placeHolderList[1102]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.spread" 
		"modelRN.placeHolderList[1103]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.indexCurl" 
		"modelRN.placeHolderList[1104]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.middleCurl" 
		"modelRN.placeHolderList[1105]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.ringCurl" 
		"modelRN.placeHolderList[1106]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.pinkyCurl" 
		"modelRN.placeHolderList[1107]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_L.thumbCurl" 
		"modelRN.placeHolderList[1108]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.translate" 
		"modelRN.placeHolderList[1109]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotate" 
		"modelRN.placeHolderList[1110]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.scale" 
		"modelRN.placeHolderList[1111]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.spread" 
		"modelRN.placeHolderList[1112]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.indexCurl" 
		"modelRN.placeHolderList[1113]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.middleCurl" 
		"modelRN.placeHolderList[1114]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.ringCurl" 
		"modelRN.placeHolderList[1115]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.pinkyCurl" 
		"modelRN.placeHolderList[1116]" ""
		5 4 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.thumbCurl" 
		"modelRN.placeHolderList[1117]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotatePivot" 
		"modelRN.placeHolderList[1118]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotatePivotTranslate" 
		"modelRN.placeHolderList[1119]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.rotateOrder" 
		"modelRN.placeHolderList[1120]" ""
		5 3 "modelRN" "|model:Group|model:MotionSystem|model:DrivingSystem|model:Fingers_R.parentMatrix" 
		"modelRN.placeHolderList[1121]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.scaleX" 
		"modelRN.placeHolderList[1122]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.scaleY" 
		"modelRN.placeHolderList[1123]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.scaleZ" 
		"modelRN.placeHolderList[1124]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.translateX" 
		"modelRN.placeHolderList[1125]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.translateY" 
		"modelRN.placeHolderList[1126]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.translateZ" 
		"modelRN.placeHolderList[1127]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.visibility" 
		"modelRN.placeHolderList[1128]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.rotateX" 
		"modelRN.placeHolderList[1129]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.rotateY" 
		"modelRN.placeHolderList[1130]" ""
		5 4 "modelRN" "|model:Group|model:DeformationSystem|model:Root_M|model:Spine1_M|model:Spine2_M|model:Chest_M|model:Scapula_R|model:Shoulder_R|model:Shoulder2_R.rotateZ" 
		"modelRN.placeHolderList[1131]" "";
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
createNode reference -n "modelRN1";
	rename -uid "101C1098-491D-5FD1-C200-F7B6C2855725";
	setAttr -s 28 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN1"
		"modelRN1" 0
		"modelRN1" 29
		0 "|modelRN1fosterParent1|Main_parentConstraint1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main" 
		"-s -r "
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem.drawOverride" "modelRN1.placeHolderList[1]" 
		""
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.translateX" 
		"modelRN1.placeHolderList[2]" ""
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.translateY" 
		"modelRN1.placeHolderList[3]" ""
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.translateZ" 
		"modelRN1.placeHolderList[4]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.rotatePivot" 
		"modelRN1.placeHolderList[5]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.rotatePivotTranslate" 
		"modelRN1.placeHolderList[6]" ""
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.rotateX" 
		"modelRN1.placeHolderList[7]" ""
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.rotateY" 
		"modelRN1.placeHolderList[8]" ""
		5 4 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.rotateZ" 
		"modelRN1.placeHolderList[9]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.rotateOrder" 
		"modelRN1.placeHolderList[10]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:MainSystem|model1:Main.parentInverseMatrix" 
		"modelRN1.placeHolderList[11]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.scale" 
		"modelRN1.placeHolderList[12]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.parentMatrix" 
		"modelRN1.placeHolderList[13]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.translate" 
		"modelRN1.placeHolderList[14]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.rotatePivot" 
		"modelRN1.placeHolderList[15]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.rotatePivotTranslate" 
		"modelRN1.placeHolderList[16]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.rotate" 
		"modelRN1.placeHolderList[17]" ""
		5 3 "modelRN1" "|model1:Group|model1:MotionSystem|model1:FKSystem|model1:FKOffsetRoot_M|model1:FKExtraRoot_M|model1:FKRoot_M|model1:FKXRoot_M|model1:FKOffsetjoint2_M|model1:FKExtrajoint2_M|model1:FKjoint2_M|model1:FKXjoint2_M|model1:FKOffsetjoint3_M|model1:FKExtrajoint3_M|model1:FKjoint3_M|model1:FKXjoint3_M|model1:FKOffsetjoint4_M|model1:FKExtrajoint4_M|model1:FKjoint4_M|model1:FKXjoint4_M|model1:FKOffsetjoint5_M|model1:FKExtrajoint5_M|model1:FKjoint5_M|model1:FKXjoint5_M|model1:FKOffsetjoint6_M|model1:FKExtrajoint6_M|model1:FKjoint6_M|model1:FKXjoint6_M|model1:FKOffsetjoint7_M|model1:FKExtrajoint7_M|model1:FKjoint7_M.rotateOrder" 
		"modelRN1.placeHolderList[18]" ""
		5 4 "modelRN1" "|model1:Bat:front1.rotateX" "modelRN1.placeHolderList[19]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.rotateY" "modelRN1.placeHolderList[20]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.rotateZ" "modelRN1.placeHolderList[21]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.visibility" "modelRN1.placeHolderList[22]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.translateX" "modelRN1.placeHolderList[23]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.translateY" "modelRN1.placeHolderList[24]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.translateZ" "modelRN1.placeHolderList[25]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.scaleX" "modelRN1.placeHolderList[26]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.scaleY" "modelRN1.placeHolderList[27]" 
		""
		5 4 "modelRN1" "|model1:Bat:front1.scaleZ" "modelRN1.placeHolderList[28]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode polyPlane -n "polyPlane1";
	rename -uid "1BF13D09-4282-C523-B4A8-219434CD9C00";
	setAttr ".cuv" 2;
createNode animCurveTL -n "FKSpine2_M_translateX";
	rename -uid "636DF44D-471A-2758-61FC-E58C82B176F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 0 108 0 128 0 138 0 147 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSpine2_M_translateY";
	rename -uid "ACE9B136-4BD1-1E9A-98EF-1EBE1947660B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 0 108 0 128 0 138 0 147 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSpine2_M_translateZ";
	rename -uid "511C9421-4D55-3FA7-1402-58B00D9F9329";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 0 108 0 128 0 138 0 147 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKChest_M_translateX";
	rename -uid "AA481522-4D4C-3E20-DC6B-D68BE42788DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKChest_M_translateY";
	rename -uid "5760AD59-48F8-6B65-E05C-1987B2633E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKChest_M_translateZ";
	rename -uid "AC2D33A9-4CF6-E861-4E4E-81A0C93B940E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKNeck_M_translateX";
	rename -uid "3C4A2023-41E7-CD75-747C-2E86F0EE6113";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKNeck_M_translateY";
	rename -uid "67551A5C-4C33-BF02-9708-DDA0BE986D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKNeck_M_translateZ";
	rename -uid "13D5DEA7-47B5-9A83-A224-2780E5142444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKHead_M_translateX";
	rename -uid "940BBEAC-436C-2605-45A3-DAA96B429DA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 0 103 0 106 0 108 0 116 0 125 0 127 0
		 129 0 131 0 134 0 138 0 144 0 148 0 151 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKHead_M_translateY";
	rename -uid "E2BBA622-4053-F031-7B18-4FB5ADA2D2F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 0 103 0 106 0 108 0 116 0 125 0 127 0
		 129 0 131 0 134 0 138 0 144 0 148 0 151 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKHead_M_translateZ";
	rename -uid "11C1A7C9-4BA3-6EC9-E9FB-94BAF052590F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 0 103 0 106 0 108 0 116 0 125 0 127 0
		 129 0 131 0 134 0 138 0 144 0 148 0 151 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKJaw_M_translateX";
	rename -uid "F49A3192-491E-B919-AD5C-DA900976671B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKJaw_M_translateY";
	rename -uid "74EEAC70-4193-0BF4-677F-219BC415FE5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKJaw_M_translateZ";
	rename -uid "EA1FFBA3-4478-8788-4560-4EB3B6E49BEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_L_translateX";
	rename -uid "AAD4231B-4025-DED0-22A9-FE89480E93E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 121 0 128 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_L_translateY";
	rename -uid "116A1A34-4443-837D-392E-96B559DC9264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 121 0 128 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_L_translateZ";
	rename -uid "E6BC5AEA-4135-A6B9-3507-45A1CCAF9C51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 121 0 128 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_L_translateX";
	rename -uid "633E8577-43E9-09F6-5395-B58AE0D80AAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_L_translateY";
	rename -uid "4254634E-4A03-7C4B-6194-87B07A9EDD48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_L_translateZ";
	rename -uid "3F26373A-47B3-458D-AB1E-88B1881EACE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_L_translateX";
	rename -uid "3A73D0EE-4A72-B47D-4D8F-6CA28AA886B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKShoulder_L_translateY";
	rename -uid "A20ABE70-4F43-E358-8AA5-8FA933B8F602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKShoulder_L_translateZ";
	rename -uid "A402C3E1-49BA-0B2E-48DD-2BB6B6D652D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKShoulder2_L_translateX";
	rename -uid "3D4B7B70-4748-D8F3-9DE0-588D951D0533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKShoulder2_L_translateY";
	rename -uid "F48BDC59-40EC-118E-DD7E-A4BDDDCC5FBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKShoulder2_L_translateZ";
	rename -uid "ED5A3588-426C-2106-D46D-1AA2AA0D60DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKWrist_L_translateX";
	rename -uid "06BF4B91-43E0-377D-F4C2-7EB2A097AFDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKWrist_L_translateY";
	rename -uid "2EEC2012-475A-1EE9-8F49-F698C570237A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKWrist_L_translateZ";
	rename -uid "7E7DFA3A-4D11-B2AC-7471-10A6D5AA4493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTL -n "FKScapula_R_translateX";
	rename -uid "6675B018-4F5D-1A3B-F70B-A28A7B167033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 121 0 128 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_R_translateY";
	rename -uid "30D6E975-4F50-D82B-0F10-72B48E473280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 121 0 128 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKScapula_R_translateZ";
	rename -uid "6313CEB3-46B7-DD96-4150-F6A225D7F76C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 121 0 128 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_R_translateX";
	rename -uid "EB0C0330-44F0-6110-F0B8-75BD0165A439";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 106 0 128 0 134 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_R_translateY";
	rename -uid "71B23C0D-4CF5-C6ED-5486-53BF6F1082F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 106 0 128 0 134 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder_R_translateZ";
	rename -uid "4DEDE99B-481C-1D70-4B53-79A6FB05F022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 0 106 0 128 0 134 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_R_translateX";
	rename -uid "1B27612F-4549-636C-17E5-11AEBCB51ED1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 115 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_R_translateY";
	rename -uid "63E87BC8-4C33-D682-FE66-31BA90CCCCA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 115 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulder2_R_translateZ";
	rename -uid "4B309912-489E-A7E4-79EF-68B560E75A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 115 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_R_translateX";
	rename -uid "BB7F33B8-410D-54E3-1AE5-DE9F3698C73B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  101 0 104 0 107 0 110 0 122 0 126 0 128 0
		 130 0 134 0 138 0 147 0 150 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_R_translateY";
	rename -uid "9E24747A-487E-AACC-FD38-6CB777EA2A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  101 0 104 0 107 0 110 0 122 0 126 0 128 0
		 130 0 134 0 138 0 147 0 150 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKWrist_R_translateZ";
	rename -uid "E1B69178-4C36-78D0-BBF3-139A25E11B37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  101 0 104 0 107 0 110 0 122 0 126 0 128 0
		 130 0 134 0 138 0 147 0 150 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint1_M_translateX";
	rename -uid "C6AF530D-458E-3B4E-C63C-B59634D2F41C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint1_M_translateY";
	rename -uid "BA532500-4E8B-02A1-112A-38AA0AE9D147";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint1_M_translateZ";
	rename -uid "F39D740E-4E4A-D4F8-49E9-D4A33F56EEC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint11_M_translateX";
	rename -uid "0703ADFF-4B48-562D-432E-339EA51677C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint11_M_translateY";
	rename -uid "98650EF5-4115-9523-A11F-BC967F9F3ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint11_M_translateZ";
	rename -uid "EF5DF08E-40E3-7125-85DA-C79CB7579B90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint12_M_translateX";
	rename -uid "95B66584-42D9-8FC5-1340-BB84EF909E4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint12_M_translateY";
	rename -uid "3C9F4885-4198-4AB3-4D5E-65AB79542B06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint12_M_translateZ";
	rename -uid "D6E49051-45C1-4BC0-31E3-28B19BE0FC1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint13_M_translateX";
	rename -uid "0526EF3D-4D27-596C-0C77-0DAD7C1DD0BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint13_M_translateY";
	rename -uid "4482E04F-4417-7A4D-DA89-E5AF9D126547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint13_M_translateZ";
	rename -uid "43AB37DA-4E6D-0ADD-46A2-89BC657A0D37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint14_M_translateX";
	rename -uid "911C1388-482D-3FBC-4926-77AB8F98DB2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint14_M_translateY";
	rename -uid "C3EE5CD9-411A-1178-FEB4-EC956CDAAF0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKjoint14_M_translateZ";
	rename -uid "5285800E-4264-3E11-9E62-EFA638A66D8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_L_translateX";
	rename -uid "F95FFAE9-4A96-FA36-874B-618D6E4D1FA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_L_translateY";
	rename -uid "62B131C8-45D8-CF4E-A6D9-91A054B39DAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_L_translateZ";
	rename -uid "000608AB-4DCA-4209-6CA0-938C7CF0A894";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_L_translateX";
	rename -uid "0C58425F-4D79-0BCC-05FE-7CA97998BC64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_L_translateY";
	rename -uid "77A70C36-4773-E21C-8F58-BD8C31E6B784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_L_translateZ";
	rename -uid "2FEBEEE7-49CB-A868-0371-15AFC3C70B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_L_translateX";
	rename -uid "456E3EAB-4083-74AB-020D-20AB3061E75D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_L_translateY";
	rename -uid "C2A6B6E8-498D-0BDA-4D88-C9BF63BFCD56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_L_translateZ";
	rename -uid "FBF4D728-4FF4-56BD-4E1B-5E93E0C47020";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_L_translateX";
	rename -uid "D46FB32E-4639-1D83-DFC1-70920E65FCA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_L_translateY";
	rename -uid "E435D5FE-4F59-3E9A-DCA8-56A89A07DC7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_L_translateZ";
	rename -uid "D21EE71D-48B7-DBB1-F827-52B831746415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_L_translateX";
	rename -uid "69191E20-4AEB-DA60-1D46-F48BB5217367";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_L_translateY";
	rename -uid "209CE463-4443-5C8C-1301-4BAA465232EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_L_translateZ";
	rename -uid "C695DC46-4F5B-83CA-F820-869B3640B9C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_L_translateX";
	rename -uid "99555E1D-4E76-0FFE-83B4-1DBA07804CD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_L_translateY";
	rename -uid "C8772605-4DCA-6309-1F1F-E18C7C4B5315";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_L_translateZ";
	rename -uid "2A6458CA-460C-B093-1DDE-FCBD798ABAEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_L_translateX";
	rename -uid "31831338-42F9-406E-F00D-63AD5C9A0838";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_L_translateY";
	rename -uid "C966FDB4-4A21-E0E0-2C21-F8A64CEBFDC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_L_translateZ";
	rename -uid "5862D9DE-411B-A1D3-297D-E3A1E03D7EB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_L_translateX";
	rename -uid "A23BEB6A-4FCF-9D65-7C5D-EEB0973AF9DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_L_translateY";
	rename -uid "56EC2F65-487B-43D2-206E-A1A9A842763A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_L_translateZ";
	rename -uid "E5153493-46E2-B17B-1325-059E8BE82A7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_L_translateX";
	rename -uid "43A2B4DC-4711-354E-B371-9EA0422F8D78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_L_translateY";
	rename -uid "55825B3F-4955-03EC-F271-E9A6CD49A4F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_L_translateZ";
	rename -uid "7F500FC3-44B6-8A75-CAE6-AE952A473A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_L_translateX";
	rename -uid "55288787-4000-51E1-954F-B883923C1A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_L_translateY";
	rename -uid "47C59A27-4D03-B417-96B2-4D99B879190B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_L_translateZ";
	rename -uid "5B198220-4257-5046-0D05-92854AFCA9D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_L_translateX";
	rename -uid "88445447-41AD-2B72-9B06-229FF32BBCDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_L_translateY";
	rename -uid "49950C35-4CF5-37EE-6ABA-93A693B29C56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_L_translateZ";
	rename -uid "AEE977C3-4607-774E-6189-13926E2032BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_L_translateX";
	rename -uid "ACDFEF2E-4F59-ED82-0E00-4C920ED823AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_L_translateY";
	rename -uid "DBB6D98A-4EC3-BC2D-0A57-DD9B991E93F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_L_translateZ";
	rename -uid "6C80CAC5-45A3-80A1-0921-62AAFE29C751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_L_translateX";
	rename -uid "F8B834EC-4D3D-D577-A242-879C160B8876";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_L_translateY";
	rename -uid "E643A39D-4090-6887-8799-5B8DC125C739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_L_translateZ";
	rename -uid "A44FAC8A-4DC2-83E1-0F5A-ABA22927C116";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_L_translateX";
	rename -uid "BE65C28C-4205-2E73-84DC-2382C07301BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_L_translateY";
	rename -uid "B5C1FC24-4C0C-CD81-36F0-DF991C100973";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_L_translateZ";
	rename -uid "7BC156FD-4C01-A951-2CD1-A28A8B5AF633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_L_translateX";
	rename -uid "0201C581-4C96-195E-4DD4-C0AC03360FF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_L_translateY";
	rename -uid "00470E91-437E-46CA-02FD-70890E02870D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_L_translateZ";
	rename -uid "50777729-4C13-E8AD-BA72-7EB8FB89D5C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_L_translateX";
	rename -uid "CCDB808C-4065-1A60-0197-A19342432B44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_L_translateY";
	rename -uid "2C7CB8CB-40F9-D328-E01F-ED963C02EE68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_L_translateZ";
	rename -uid "5370A26E-4328-FD0B-4D09-079CE75A9271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_L_translateX";
	rename -uid "0B218CD6-40C9-970A-696F-4DBB1C3594EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_L_translateY";
	rename -uid "79240EC5-4A67-9705-9100-3DB5E6784D15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_L_translateZ";
	rename -uid "BE4D4206-4642-5957-92A6-91B55AFD0C0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_L_translateX";
	rename -uid "31D2AB8E-4409-55AC-F59D-0DBCDF55912C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_L_translateY";
	rename -uid "EF8667CB-4CE8-C31A-EC3E-FCBDD7222B33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_L_translateZ";
	rename -uid "099557BC-41C3-D9D1-DB18-E39996CA6BA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_L_translateX";
	rename -uid "DE9B3546-44D5-C54F-C89E-62B7C4083DF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_L_translateY";
	rename -uid "3080B12F-4C8A-D43B-182E-46863ABD3F8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_L_translateZ";
	rename -uid "2610FC1C-437E-9834-16C7-42B640EF8CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_R_translateX";
	rename -uid "DB974C92-4BF9-A977-CEA4-DD80467977EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_R_translateY";
	rename -uid "360698E0-47EC-1094-4341-80817C0DC168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger0_R_translateZ";
	rename -uid "55E167DE-4B0A-FD6D-0326-A9ABF086773A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_R_translateX";
	rename -uid "39D1B3ED-4681-D83D-3BFA-868CDE651B06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_R_translateY";
	rename -uid "27F352B1-4912-3072-B740-5592FE142F4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger1_R_translateZ";
	rename -uid "24FE7064-4961-282D-4208-D7A69D970C09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_R_translateX";
	rename -uid "75D2158C-43D4-DC4F-EB37-8DAFE3E92DAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_R_translateY";
	rename -uid "9BA86F76-4E56-070A-F9B2-3D8AEEB131D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger2_R_translateZ";
	rename -uid "E8B2DD86-4229-6B6C-4845-B68B8F9FB263";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_R_translateX";
	rename -uid "175E8A3D-4A24-8226-9503-E9AE9D90D0C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_R_translateY";
	rename -uid "48BDFAB2-4FA7-C537-8FE1-8787960CAA58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKIndexFinger3_R_translateZ";
	rename -uid "61D4B775-4F58-0E01-4CC8-47912223953B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_R_translateX";
	rename -uid "3F7EA32C-4A32-F34C-7384-FBBEB00BE586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_R_translateY";
	rename -uid "71992ADD-4888-25DB-7431-ACBA5F721A1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger0_R_translateZ";
	rename -uid "D19EEF07-49FE-1861-DBC3-2694AF4404E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_R_translateX";
	rename -uid "6A1FDE12-476E-119C-5BEF-4D8B4355A9A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_R_translateY";
	rename -uid "40989020-41EF-34DE-B72C-609A23327F33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger1_R_translateZ";
	rename -uid "132C1ADA-4B8A-950C-55D8-69AC05A77FD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_R_translateX";
	rename -uid "1689530E-4E6D-890E-29B1-EEA886F2E630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_R_translateY";
	rename -uid "7898080A-4E90-4CF9-4DFB-95BA25560FAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger2_R_translateZ";
	rename -uid "85E2D72D-4FAC-885E-FCAD-518DB2EB40F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_R_translateX";
	rename -uid "82EFDAD0-401D-CD2D-7D34-FDA87871BC72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_R_translateY";
	rename -uid "F1386C29-48DE-C7FC-EAE2-47B2598EE85E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKMiddleFinger3_R_translateZ";
	rename -uid "90E41548-4F6D-4F2C-0A55-E39DC85B1618";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_R_translateX";
	rename -uid "E060D517-4B2E-7BB9-E864-29961DB303F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_R_translateY";
	rename -uid "4578C96B-4AA1-0630-3816-CDB9E1C4A452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger0_R_translateZ";
	rename -uid "FEB9C392-4FC1-6DCA-7784-F89E4B46673B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_R_translateX";
	rename -uid "C3714A51-4BFC-177F-8B34-CB9E0A485853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_R_translateY";
	rename -uid "80A399EF-478E-3299-5F04-D9A2230DD5F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger1_R_translateZ";
	rename -uid "3CF42A3E-4348-73C1-6BA5-63A3AE6EED57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_R_translateX";
	rename -uid "FE4740DD-43E9-2877-A3CF-3EBB561D5A3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_R_translateY";
	rename -uid "84E12526-449D-6891-ADC5-18998778657F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger2_R_translateZ";
	rename -uid "B0552A73-48E5-D49A-D7B3-DCB0F01C7586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_R_translateX";
	rename -uid "7874C714-4E1A-D3A9-9A48-538B3D9102FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_R_translateY";
	rename -uid "E960785B-458C-A477-2D2E-F5AA4DF1BBFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKPinkyFinger3_R_translateZ";
	rename -uid "C76E64F7-4893-4F96-0ADC-5482483A95BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_R_translateX";
	rename -uid "FFC8767C-40D3-B263-4936-608A0453F14B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_R_translateY";
	rename -uid "BD8F94B6-4959-F9E4-9FBB-65A4E774151B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger0_R_translateZ";
	rename -uid "3351364A-45A9-1444-D5AE-29B6CD588D09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_R_translateX";
	rename -uid "DDAA9FCF-46B4-D7CF-9D74-71943A96985D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_R_translateY";
	rename -uid "632C0A13-4D0F-E08C-CA2D-B9952FF0AB68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger1_R_translateZ";
	rename -uid "E1E7064A-4F1D-2704-83F6-ACB782230043";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_R_translateX";
	rename -uid "B35553AD-492E-ED99-14E4-53B34D2DE584";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_R_translateY";
	rename -uid "2CEEC62E-4EAE-6025-9C20-C1A8E240C943";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger2_R_translateZ";
	rename -uid "2EB65D7E-466D-1099-B942-438F7DFF4CCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_R_translateX";
	rename -uid "E6374D5A-4C0F-1B9F-ECAA-FA9FB200C444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_R_translateY";
	rename -uid "67BC5C52-4FBD-A458-857E-44B38ECBF96E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRingFinger3_R_translateZ";
	rename -uid "37D63209-4EB8-38B7-C429-04840401B22F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_R_translateX";
	rename -uid "3BE10A3A-4D97-4EA9-AE0B-688E923A168D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_R_translateY";
	rename -uid "BAE7ED97-41BF-566B-1539-058143337438";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger1_R_translateZ";
	rename -uid "0C1D4C78-4A7D-5ED1-3361-CA8F78A96EC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_R_translateX";
	rename -uid "7A76FE85-4C90-192E-3091-C584F5FC6388";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_R_translateY";
	rename -uid "65C0F68B-4F6F-F9E2-0B68-0EA00BD683C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger2_R_translateZ";
	rename -uid "1C84A010-4399-0D8C-4A06-68AB1291C2B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_R_translateX";
	rename -uid "AAE3C97B-4B43-5BC4-DCCE-CF8D45A97A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_R_translateY";
	rename -uid "B8FB6F4F-48B2-42B0-03ED-30BDCEF527DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKThumbFinger3_R_translateZ";
	rename -uid "59AD3B7C-4DA1-68F4-EE8A-86B557FE6514";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_L_translateX";
	rename -uid "FCCD9C3E-4FEF-3873-C49A-0FAA440C5A54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_L_translateY";
	rename -uid "26DF8818-4907-590B-21A3-13AFA3009C46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_L_translateZ";
	rename -uid "8A44A480-46FD-7DF8-C3BE-69946D13572A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_L_translateX";
	rename -uid "F9BAD024-4978-796F-6747-C6B9A3055269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_L_translateY";
	rename -uid "0161EB09-4D10-7BC7-3AB8-64A7AA3B6B3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_L_translateZ";
	rename -uid "6523D5F4-4E6F-B988-A8A5-7B852EFB49E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_L_translateX";
	rename -uid "B732D666-498D-B90E-20F0-ED8311597AB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_L_translateY";
	rename -uid "37213916-4081-86E4-DE74-ADBC1EEA2AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_L_translateZ";
	rename -uid "17D55DB1-4C64-A8E8-938D-51A88185C110";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_L_translateX";
	rename -uid "ADCA3D4E-435A-EB3B-B29A-4BBB4FDFAEBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_L_translateY";
	rename -uid "0D828547-4B4D-163D-3473-298C8F6CAE5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_L_translateZ";
	rename -uid "B743457B-4A86-6746-760D-718B5CE8BC06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_R_translateX";
	rename -uid "911F8BA9-4D7C-B2E9-64AF-40AAB1FCBBC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 -2.220852058464323 127 -2.2251764397293443
		 143 -4.7645953147700295 153 -2.220852058464323;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_R_translateY";
	rename -uid "8D988C69-427C-105D-C04B-F3B97BBAB2C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  101 -1.0658141036401503e-14 105 0 111 0
		 113 0 118 0 127 0 143 9.3658906237340016 149 4.4878225905392046 153 -1.0658141036401503e-14;
	setAttr -s 9 ".kit[7:8]"  1 1;
	setAttr -s 9 ".kot[7:8]"  1 18;
	setAttr -s 9 ".kix[7:8]"  0.029883991211962696 0.055485552908124826;
	setAttr -s 9 ".kiy[7:8]"  -0.99955337379713916 -0.99845949012390078;
	setAttr -s 9 ".kox[7:8]"  0.029883990560444437 1;
	setAttr -s 9 ".koy[7:8]"  -0.9995533738166178 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_R_translateZ";
	rename -uid "3B5C9294-4043-1B49-23B0-15B9CB8CD60D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 26.906 113 -5.7658254791687114 127 -43.88295520486556
		 134 -43.88295520486556 143 -3.2593770050807613 153 26.906;
	setAttr -s 6 ".kit[0:5]"  18 18 2 1 1 18;
	setAttr -s 6 ".kot[0:5]"  2 18 1 1 1 18;
	setAttr -s 6 ".kix[3:5]"  0.016599861947615074 0.006456566636034145 
		1;
	setAttr -s 6 ".kiy[3:5]"  0.99986221279900367 0.99997915615640431 
		0;
	setAttr -s 6 ".kox[2:5]"  0.012992665920486568 0.016599862900462056 
		0.0064565671420719227 1;
	setAttr -s 6 ".koy[2:5]"  -0.99991559175376332 0.99986221278318443 
		0.99997915615313704 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_R_translateX";
	rename -uid "A887E7D9-4B2B-B750-9731-8A878C3CCC3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_R_translateY";
	rename -uid "8320F688-4158-3F47-3443-DF9CD769EFE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollHeel_R_translateZ";
	rename -uid "447AD419-412C-A2B8-4392-EC8771E1C40F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_R_translateX";
	rename -uid "1B40B991-484D-1297-21F9-F383A4FD0EBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_R_translateY";
	rename -uid "50AFCEFC-4D75-E331-6E98-00AA1A018357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToesEnd_R_translateZ";
	rename -uid "4A58B1B0-4234-6D1D-5AC6-75ACAB0A3BA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_R_translateX";
	rename -uid "2F6317D5-4806-F884-28FE-15BFE2C79CC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_R_translateY";
	rename -uid "0FDA28DB-43CA-A9BD-331B-EB9AEF0B4E50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKToes_R_translateZ";
	rename -uid "6E90001C-4D48-4AA6-CC1B-1D805DCF5843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_R_translateX";
	rename -uid "4F33EC4F-440F-BC1E-DAE3-4D86D76146DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_R_translateY";
	rename -uid "F9FB9DDB-48FA-15B3-1130-4D84E4E21686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RollToes_R_translateZ";
	rename -uid "0F545D96-49C6-7BEC-5F48-B19A54635B3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_L_translateX";
	rename -uid "818FE711-4516-72AD-88E3-618B916F9087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_L_translateY";
	rename -uid "BE4D0BFE-4580-8CD4-4202-ECB153E4D9C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_L_translateZ";
	rename -uid "148245A5-4053-CCE1-25E5-B4813F84DB55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_R_translateX";
	rename -uid "94AC8B72-4C47-D39D-E45B-D5AAB0FB0A2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_R_translateY";
	rename -uid "9EFAF75A-4D68-2BAB-D27E-75B51B077BE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleLeg_R_translateZ";
	rename -uid "D50A09A4-4480-1E5B-D740-43B2A3EE441A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RootX_M_translateX";
	rename -uid "D9226135-4268-9EBA-9F18-4CB13D1107E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 0.33949692852644797 111 -0.6123078520477776
		 120 -1.3130251036809293 134 -0.6123078520477776 149 -0.058805509243976539 153 0.33949692852644797;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RootX_M_translateY";
	rename -uid "30EB7B01-40FD-21E9-3124-1EB67619807D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 -17.27425901765686 103 -14.110151750337835
		 107 -14.65049297157775 120 -8.222019936545399 127 -14.65049297157775 128 -16.571642664821553
		 130 -13.70667501917147 134 -14.65049297157775 145 -8.222019936545399 152 -14.65049297157775
		 153 -17.27425901765686;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "RootX_M_translateZ";
	rename -uid "DA242053-483E-0C70-5FD3-A08FB56D3823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 1.5657516898152579 103 1.5657516898152579
		 107 1.5657516898152579 111 1.5657516898152579 116 1.5657516898152579 120 1.5657516898152579
		 124 1.5657516898152579 127 1.5657516898152579 128 1.5657516898152579 130 1.5657516898152579
		 134 1.5657516898152579 145 1.5657516898152579 149 1.5657516898152579 152 1.5657516898152579
		 153 1.5657516898152579;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_L_rotateX";
	rename -uid "F41C9EB6-4E48-973F-FD17-C38B0813FDA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_L_rotateY";
	rename -uid "60B63334-403E-B57A-B762-B9ADE73CC3A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 15.012961270534914 128 15.012961270534914
		 153 15.012961270534914;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_L_rotateZ";
	rename -uid "F9281F3A-44BC-378E-EF11-6D93CF7C9DC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_L_scaleX";
	rename -uid "B6D2113C-4439-AA34-A571-FDA215AD1F56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_L_scaleY";
	rename -uid "BD82F335-473F-2B2E-8934-618E9B2A4D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_L_scaleZ";
	rename -uid "DA3E4CFB-47F2-3EE7-70ED-EF98686622C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKJaw_M_rotateX";
	rename -uid "5C81D153-4FAB-1CF5-E9C0-00868F79FB97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKJaw_M_rotateY";
	rename -uid "96676D28-415B-1D5D-43D6-18B6365FAE6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKJaw_M_rotateZ";
	rename -uid "09FC72C6-45CF-8F24-9A64-67AB4DEB81FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKJaw_M_scaleX";
	rename -uid "D1A17C4E-4806-76E5-48DA-0D981185AA06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKJaw_M_scaleY";
	rename -uid "57B24BA3-4B36-B0B2-81EC-3B9AD1D99F9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKJaw_M_scaleZ";
	rename -uid "992D8932-40D7-B192-A70B-44A681187E10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_R_FKIKBlend";
	rename -uid "FC7241CD-4C08-C8DC-5B4D-91BAE6244E15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 10 128 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_R_FKVis";
	rename -uid "24C58FA3-4D74-B506-868A-DA876D92D64D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_R_IKVis";
	rename -uid "C8DB4B53-4917-12A8-472D-508FC747BE38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKHead_M_rotateX";
	rename -uid "AC2A2D42-4687-1417-B10D-94A42EF854D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  101 -0.0089895033453388784 108 -0.0089895033453388784
		 116 0.0054965089045354663 125 0.41342257282382783 131 0.34849781534016949 138 0.21394483902070127
		 153 -0.0089895033453388784;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKHead_M_rotateY";
	rename -uid "67B00971-4E34-82DF-8779-FD806D051B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  101 -5.3095707395218019 108 -5.3095707395218019
		 116 -4.7805853001518823 125 1.2132252866258275 131 2.6455667177426117 138 1.4009395482536591
		 153 -5.3095707395218019;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKHead_M_rotateZ";
	rename -uid "5C83A5D1-4A6F-50D3-2F62-199EDCE8E6D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 -1.6070893750293587 103 3.7240247427977873
		 106 -3.879205437248316 108 -2.5695495167359219 116 -2.5703219924022687 125 -3.1326842775021717
		 127 -5.7472393689905896 129 1.9067709059107936 131 -3.4845394377966405 134 -2.5695495167359219
		 138 -2.5695495167359219 144 -2.5867709986502754 148 -2.5997311225552346 153 -1.6070893750293587;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_scaleX";
	rename -uid "EEF879B8-43FD-E454-E5E2-ECBD7FA2EB5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 1 103 1 106 1 108 1 116 1 125 1 127 1
		 129 1 131 1 134 1 138 1 144 1 148 1 151 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_scaleY";
	rename -uid "BB5F22B6-408C-472C-F242-8DB176801C66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 1 103 1 106 1 108 1 116 1 125 1 127 1
		 129 1 131 1 134 1 138 1 144 1 148 1 151 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_scaleZ";
	rename -uid "83909A28-41D3-EF11-91C2-969BD8F805B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 1 103 1 106 1 108 1 116 1 125 1 127 1
		 129 1 131 1 134 1 138 1 144 1 148 1 151 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKHead_M_Global";
	rename -uid "B36796CE-4A3F-73CB-383F-EAB084BE88C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 10 103 10 106 10 108 10 116 10 125 10
		 127 10 129 10 131 10 134 10 138 10 144 10 148 10 151 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint11_M_rotateX";
	rename -uid "D9A8795E-4D22-2801-106D-3BADE506E962";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint11_M_rotateY";
	rename -uid "FD000E32-4C8E-BF3B-135A-5FB4B768C177";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint11_M_rotateZ";
	rename -uid "EA37DC4D-49D5-E2D5-1F02-8EBEED30C46D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint11_M_scaleX";
	rename -uid "69488FC4-404D-7A47-F0B1-B8BAE08C5970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint11_M_scaleY";
	rename -uid "16614234-4BD7-769C-F4B0-CCB7920879F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint11_M_scaleZ";
	rename -uid "8C086425-44F0-FFE5-39D4-719E2FF893CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_R_rotateX";
	rename -uid "60AD7990-4C7C-8D40-30BE-189013194A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_R_rotateY";
	rename -uid "EE7E4362-4329-38F1-70BD-5082F1BD5E42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_R_rotateZ";
	rename -uid "B54ABE69-4A9B-02A5-6B4E-18A471685ADB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_R_scaleX";
	rename -uid "661C125F-440F-90C5-5E60-F6BDBE18321E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_R_scaleY";
	rename -uid "049CDC5E-432C-7C81-8BC3-608ABB5E782C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_R_scaleZ";
	rename -uid "8423EED3-4797-504F-3441-85B61E60F4EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_L_rotateX";
	rename -uid "C7F90B80-4BB0-CAA5-69E8-2E90498692E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_L_rotateY";
	rename -uid "6B3BE165-4559-9CD2-18EC-E5A655766BBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_L_rotateZ";
	rename -uid "586975D7-48C3-7529-BC8C-C7B531161B13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_L_scaleX";
	rename -uid "0AEBC3A8-4B8B-BE8C-BD68-ADABE50D2E10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_L_scaleY";
	rename -uid "1E88EFFB-4D90-5E74-7104-2180042D05CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_L_scaleZ";
	rename -uid "F5775967-425D-7288-634C-D1931BB413BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_L_rotateX";
	rename -uid "87FC2A8B-4E36-2648-2D86-CBA7068CF1FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_L_rotateY";
	rename -uid "71735C55-4D35-2366-02C9-9DA67AB9D98B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_L_rotateZ";
	rename -uid "271D1220-40AD-A2D5-3D5F-6DBD41609C87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_L_scaleX";
	rename -uid "F286A7D0-4AF2-BD8D-6E9C-98AFC8E450AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_L_scaleY";
	rename -uid "8C392DDE-4E9A-954D-9D4C-598F3BB4405F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_L_scaleZ";
	rename -uid "E74E2581-43CE-5A86-9DCD-2E9F28D42EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_L_rotateX";
	rename -uid "0ED42D1B-451B-B169-E951-2CB550C4A997";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_L_rotateY";
	rename -uid "E89C9195-4BBA-2C60-2394-958E3B11C109";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_L_rotateZ";
	rename -uid "FD4F9D6B-4CF1-B3C7-E193-F39A8EC0970D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_L_scaleX";
	rename -uid "E6F0DB86-4AD1-3504-7147-4F8C59502A15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_L_scaleY";
	rename -uid "215E0868-43C5-43EA-5934-52B363DE87E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_L_scaleZ";
	rename -uid "10A36812-46F3-1A30-AD41-8EA8BD649E9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_L_rotateX";
	rename -uid "D5855796-416B-22CC-9D48-C98BC3D37B85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_L_rotateY";
	rename -uid "6DAE0009-484E-B040-F991-558917D94A06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_L_rotateZ";
	rename -uid "24B94114-4CCA-EDF4-B3E9-2CABA5EF67C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 3.6054107559063278 128 3.6054107559063278
		 153 3.6054107559063278;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_L_scaleX";
	rename -uid "D498C035-425A-B93D-AC64-509B7F8686AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_L_scaleY";
	rename -uid "203C7A06-4229-F43A-4957-8C983F6603DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_L_scaleZ";
	rename -uid "4E6EC45D-4EAE-C0D8-6C56-5EBCF48D9FE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateX";
	rename -uid "CA39019F-4C18-7255-4894-CC951932FD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateY";
	rename -uid "A441F99C-47D9-83E1-4B01-44BB75712E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_L_rotateZ";
	rename -uid "E04CA69E-4191-B3A4-163C-4A80849483DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -3.5430248612468564 128 -3.5430248612468564
		 153 -3.5430248612468564;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleX";
	rename -uid "00CC4CC1-4B18-FD3D-16FC-A3B196BFAAC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleY";
	rename -uid "6BDDC846-4F53-BB06-1669-5F9E959EA080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_L_scaleZ";
	rename -uid "FE8082B7-492B-182D-06BB-75AEF42D536A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_L_rotateX";
	rename -uid "75B406B1-46D0-B247-7FFB-D5837A21FCA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -18.370891650012048 128 -18.370891650012048
		 153 -18.370891650012048;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_L_rotateY";
	rename -uid "9D1E26C8-4826-06C8-C16E-93B86589702B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_L_rotateZ";
	rename -uid "119C2099-4D7A-2DC3-3C08-28965292B3E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_L_scaleX";
	rename -uid "C83F8FDD-4A16-6CA1-2043-8C970513C37E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_L_scaleY";
	rename -uid "BC3F4216-4455-B2D8-D597-6AA4D98B8F63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_L_scaleZ";
	rename -uid "7DD5C3D5-4781-7FC5-7F33-EDB034DA8629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSpine2_M_rotateX";
	rename -uid "1B36619B-4C41-1668-AC87-0FB341806D38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -30.039957088431727 128 22.215989633285808
		 153 -30.039957088431727;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSpine2_M_rotateY";
	rename -uid "3CDBCA17-4D11-53E2-EB8C-F394AD8F1FF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -2.0021116310232059 128 6.9005289472046858
		 153 -2.0021116310232059;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSpine2_M_rotateZ";
	rename -uid "8CCD77DE-47AE-B225-9540-C5A3CF740986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 13.673421199959089 117 17.990163210292419
		 138 17.940663998631187 153 13.673421199959089;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_scaleX";
	rename -uid "B4A327D8-4CBD-EB70-52B9-018C17184BB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 1 108 1 128 1 138 1 147 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_scaleY";
	rename -uid "44F67C76-41B7-6540-18F6-64AFEBE83944";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 1 108 1 128 1 138 1 147 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_scaleZ";
	rename -uid "65F511F2-4331-D402-5DB6-A2922C17D421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 1 108 1 128 1 138 1 147 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint12_M_rotateX";
	rename -uid "F56ADCC7-449F-230C-AD3C-B0BD62CE5C6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint12_M_rotateY";
	rename -uid "078EA686-492C-10AE-E292-D59C69B597D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint12_M_rotateZ";
	rename -uid "36A8E9BD-4943-6B81-3137-FF91E789C2C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint12_M_scaleX";
	rename -uid "288A363F-4232-86D4-9A87-5891C3265D95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint12_M_scaleY";
	rename -uid "EED9B25A-40AA-0C96-35DC-69A03795551A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint12_M_scaleZ";
	rename -uid "0E801B04-4E4C-4021-894F-60AA20E8E339";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateX";
	rename -uid "B62C5952-4AFB-A453-75C4-9AAEBBE9AE75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateY";
	rename -uid "B2F5E33D-4840-0FE2-0EC0-0498B1E1E460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 14.365868308041025 128 14.365868308041025
		 153 14.365868308041025;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger1_R_rotateZ";
	rename -uid "4ED66FE6-4A96-5E81-8065-34B13F570E84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -12.60841683868836 128 -12.60841683868836
		 153 -12.60841683868836;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleX";
	rename -uid "A519E677-4B8E-D817-F082-829155117290";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleY";
	rename -uid "F785ACD8-4468-A78B-4D14-5286F41C1F35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger1_R_scaleZ";
	rename -uid "129D8FFC-4EB2-8B12-140C-9084260F720F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_R_rotateX";
	rename -uid "72F28CDA-4A6E-999C-2C49-0DABFFD1A1AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_R_rotateY";
	rename -uid "78791E46-4915-2915-6E6C-8EB142441C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_R_rotateZ";
	rename -uid "E48C6271-4398-FC68-831D-3AB651A99E51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_R_scaleX";
	rename -uid "4CCFD4C3-417E-834F-5BBA-FD8385742FF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_R_scaleY";
	rename -uid "C427F617-4570-A355-A83D-9EA0FD74E323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_R_scaleZ";
	rename -uid "32C887B4-4DC0-D66D-F1F4-FDBDB000FC25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_L_FKIKBlend";
	rename -uid "C1A7564F-4B84-D7DB-4253-6D887DDBBE07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 10 128 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_L_FKVis";
	rename -uid "2CF93731-4D5E-A876-B25B-80A9C2FE4E38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKLeg_L_IKVis";
	rename -uid "D098BCB9-4BA0-3AE5-3EA9-FBB8E7D4AC74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateX";
	rename -uid "F83DBC27-4F51-C104-A3E6-88876464F159";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateY";
	rename -uid "3E040EA5-43B5-A41D-20CD-ADAB91C8C1E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_L_rotateZ";
	rename -uid "F38BA7B4-4D30-173C-9587-6BB9E75DC6DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleX";
	rename -uid "28549C09-4105-0175-6B21-B4B7045067A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleY";
	rename -uid "22395FD5-4BA5-14FB-C1C9-5A903F706605";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_L_scaleZ";
	rename -uid "8A36140A-44E6-E21D-8A15-FDB4FD14208B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_R_rotateX";
	rename -uid "BED4D824-4B8E-3FDC-A9B4-2CB92C2E0721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 115 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_R_rotateY";
	rename -uid "C943F30F-4BE5-8FEE-7672-D1BB75C64090";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 115 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_R_rotateZ";
	rename -uid "5088309A-4818-47B6-10E3-EE8A697CD30C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 83.049032263167575 115 86.174813477198981
		 128 88.971707622792152 153 83.049032263167575;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_R_scaleX";
	rename -uid "62AA649E-4FD0-20BC-F73D-A49A3D6F1E42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 1 115 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_R_scaleY";
	rename -uid "41905BF5-4357-3324-CFDC-DDB803FDA252";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 1 115 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder2_R_scaleZ";
	rename -uid "360CA5F8-4538-E87C-4DDD-90A52DC5F38C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 1 115 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_R_rotateX";
	rename -uid "CDF4DC45-4312-316F-7A90-0384D5E4A115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_R_rotateY";
	rename -uid "29C9A9F9-4E88-F629-B9B9-C3979820F2C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_R_rotateZ";
	rename -uid "AF800572-4D87-A53E-A810-64A4A2435693";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_R_scaleX";
	rename -uid "1158853A-497E-E631-6F31-EF94577A10AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_R_scaleY";
	rename -uid "EA6D1C9C-4D83-9A58-278B-86A989AB1536";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_R_scaleZ";
	rename -uid "2BBE9708-44A4-80F7-44AA-10A47F4ACCF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_R_rotateX";
	rename -uid "86CDFBDA-4D64-6844-B52F-B892CC1147B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_R_rotateY";
	rename -uid "4070A348-497A-B4FA-5D50-A09F9C2E82AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_R_rotateZ";
	rename -uid "D2805B0F-4FE1-4FFD-048D-B893C3D633E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_R_scaleX";
	rename -uid "D23DBDDC-4495-24BD-96D6-6DB596B91666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_R_scaleY";
	rename -uid "B1F4AAF7-4AB4-8D78-65F5-B086E3B2EC7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_R_scaleZ";
	rename -uid "D26CF80C-4789-5CB9-8138-E7AB7E4AFD40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_spread";
	rename -uid "01E8E585-4146-B746-91E0-31BC2AF632EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_indexCurl";
	rename -uid "32EDCEA5-4FA6-844B-52B7-46A9B30CDA3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 2.5 128 2.5 153 2.5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_middleCurl";
	rename -uid "C784805C-49F1-F00A-7421-20B41A75C8F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 3 128 3 153 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_ringCurl";
	rename -uid "72233FE0-444B-A058-FA87-4681B5BE3E3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 3 128 3 153 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_pinkyCurl";
	rename -uid "A5806D69-4BB7-4FA7-5A0E-108B792E194B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 3 128 3 153 3;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_L_thumbCurl";
	rename -uid "8D75F65A-46AF-62E3-7FDA-A888CE417F2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint14_M_rotateX";
	rename -uid "568A88A3-4525-18A3-D288-8485364318EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint14_M_rotateY";
	rename -uid "157F3546-4EA1-C246-1E29-3A8EE7E9668B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint14_M_rotateZ";
	rename -uid "D09F4E8E-4494-1AAE-9F41-80A39AB9380D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint14_M_scaleX";
	rename -uid "85286B59-4B3F-6EC2-A8DA-FC9F2D156A89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint14_M_scaleY";
	rename -uid "1FFA546B-4CB4-F6B8-5BCE-CBBE43E3FFC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint14_M_scaleZ";
	rename -uid "F219E2B4-4F5B-CAE3-4C88-74AB469393E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint13_M_rotateX";
	rename -uid "564CDD27-4B24-29C3-4FEF-59B1817B05EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint13_M_rotateY";
	rename -uid "3628202F-4A29-998E-E732-1E9BA71B9721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint13_M_rotateZ";
	rename -uid "2A5ECB86-49C4-8280-8184-508F5926E42F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint13_M_scaleX";
	rename -uid "AF2AD6DF-4D11-9548-1428-F49E54D22AA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint13_M_scaleY";
	rename -uid "92000668-44F4-B4F4-341C-0C8018BA7EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint13_M_scaleZ";
	rename -uid "3808263E-46DE-AD73-7810-988B31CC1592";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_L_rotateX";
	rename -uid "5EB96F5A-4D29-8D69-2A3B-91B6DA7630DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_L_rotateY";
	rename -uid "AE3AE1EB-4DD2-53EE-C813-BDB95D55C1C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 6.8992664610736956 128 6.8992664610736956
		 153 6.8992664610736956;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_L_rotateZ";
	rename -uid "1B8BAB2A-4334-14C4-B5C3-8890B8081E8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_L_scaleX";
	rename -uid "AB740B53-4732-777C-BC88-FCAAE4E01427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_L_scaleY";
	rename -uid "2D256841-4389-0717-CFF1-E9BA7819B73B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_L_scaleZ";
	rename -uid "24695287-4DC2-46FA-1BD4-7A8B48848E5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_L_rotateX";
	rename -uid "A213C4A4-4FAE-5046-FCE1-9883F87F8E1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_L_rotateY";
	rename -uid "79649197-411C-80DD-2189-2CACCF31EEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_L_rotateZ";
	rename -uid "9635678A-4BFF-659C-C6E1-B1AAF623BD0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_L_scaleX";
	rename -uid "D678EB66-4FE0-FE9F-DB2C-59BD2E212989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_L_scaleY";
	rename -uid "4656A43D-43BA-8727-395A-F08240C34D73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_L_scaleZ";
	rename -uid "0AD7F780-4D72-6B2B-3B53-96A3EDD3C828";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateX";
	rename -uid "31873C58-40ED-3B6D-0A3A-13AFB84770B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateY";
	rename -uid "1984AD86-44F0-0A8A-D4DA-C3AB26CFFF57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_R_rotateZ";
	rename -uid "54A07620-49B9-CB6B-AA40-10B45E3CABF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleX";
	rename -uid "123FC662-41D2-C050-1F66-5C9A532A55F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleY";
	rename -uid "0EDA1211-4D28-BC56-A495-5FA1D2775DF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_R_scaleZ";
	rename -uid "268A9A50-474D-AE19-6951-92BB58CD2A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKNeck_M_rotateX";
	rename -uid "7F3BE7D4-44D7-213B-0985-EABCA0781AFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKNeck_M_rotateY";
	rename -uid "8EE5AECA-494C-48BA-6446-4AAFEA804724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKNeck_M_rotateZ";
	rename -uid "A6D6268D-45A8-E789-8762-30955481CCF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -10.456295330303854 127 -10.456295330303854
		 153 -10.456295330303854;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKNeck_M_scaleX";
	rename -uid "70BECC85-45BD-A4F2-7D9F-5CBC8D21BFAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 127 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKNeck_M_scaleY";
	rename -uid "E63E4BD1-450E-02EF-20D3-D88F9DF8C780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 127 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKNeck_M_scaleZ";
	rename -uid "3CC8A454-49F3-3100-F2B5-D885B626F900";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 127 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_R_rotateX";
	rename -uid "248F47F4-4601-6259-AF53-C0918F76C1EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -6.0547350000711138 128 -6.0547350000711138
		 153 -6.0547350000711138;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_R_rotateY";
	rename -uid "3A7473E5-4699-B6C2-D4E6-BCBB9D4C5737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -5.6080274962251737 128 -5.6080274962251737
		 153 -5.6080274962251737;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger2_R_rotateZ";
	rename -uid "B3D92D8D-40E5-818A-5776-32B75C9720FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 5.8443743941057233 128 5.8443743941057233
		 153 5.8443743941057233;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_R_scaleX";
	rename -uid "C03945CB-41A0-FB40-61FA-3BBA32B5C48C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_R_scaleY";
	rename -uid "440B4EEC-4E63-B4DB-972C-A9AC86B1226A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger2_R_scaleZ";
	rename -uid "9AEF1CAA-438E-17C6-293B-6ABF1EF18505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_L_rotateX";
	rename -uid "C9FFAA53-4BFD-CF96-4153-7D9B81C824AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_L_rotateY";
	rename -uid "5865F4EE-41A3-F289-EC42-1DA96A8A4F10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_L_rotateZ";
	rename -uid "C9119C07-4F9A-52B0-ED74-029D86274064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_L_scaleX";
	rename -uid "DA08AF83-48B8-B5D7-9C03-C9A7AD7799D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_L_scaleY";
	rename -uid "D1F5FB74-49AB-91CE-3121-C181C52F73D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_L_scaleZ";
	rename -uid "463F187A-4393-6852-1798-B9B57E481842";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateX";
	rename -uid "3D3A9253-46CF-B9A0-0176-CBACCB8A384E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateY";
	rename -uid "B699C88A-4478-5021-A87B-F7A2809D7B1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -23.84120761449164 128 -23.84120761449164
		 153 -23.84120761449164;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_R_rotateZ";
	rename -uid "F649B3E8-4ED6-1C51-C82C-59BA32E2AD08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleX";
	rename -uid "3BCA84F8-45BB-D108-1AFA-46B249D76651";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleY";
	rename -uid "63AFF60B-4BE1-DF3A-BCD5-27B999A67F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_R_scaleZ";
	rename -uid "8B3E11A9-46C7-6EA5-695A-93A4F27E8067";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_R_rotateX";
	rename -uid "C647D0B2-4E56-1EC5-ED50-FFA9BB61D1F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_R_rotateY";
	rename -uid "7FD97C95-4D10-87C3-CC96-1496025AD52A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKToes_R_rotateZ";
	rename -uid "D674495F-4756-092A-0D36-4D9376C70FF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_R_scaleX";
	rename -uid "C1E294C5-4A22-1B70-954E-A5A927A3E56C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_R_scaleY";
	rename -uid "B706291C-4925-3FCE-F015-3EA6F746213B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKToes_R_scaleZ";
	rename -uid "3B9F8092-4F3E-4918-BF64-C29EC60D62CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_R_rotateX";
	rename -uid "E6BD61BF-4D3E-0CA1-BB6B-468F34F474D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_R_rotateY";
	rename -uid "84E2A458-4700-FDA8-1BA7-4F8065B4F1A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger2_R_rotateZ";
	rename -uid "73022305-4A4E-E587-0FA6-12B461C9BC41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_R_scaleX";
	rename -uid "54943F92-416E-39C4-992D-39929C603F11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_R_scaleY";
	rename -uid "9A7D833C-4C64-41D2-E50D-9F978752AC60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger2_R_scaleZ";
	rename -uid "F0246E22-49E6-D4D5-DEDC-AAACE03DAE44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_L_rotateX";
	rename -uid "7C26EF43-4F4D-D06D-4F8A-53806D087F19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 0 121 0 128 0 131 0.25496451712492318
		 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_L_rotateY";
	rename -uid "438CDB44-4E9B-0330-F744-CEBE4E0E5AFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  101 0 104 8.0065842399026739 108 0 121 0
		 128 -11.780553558602927 130 7.2458887094958415 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_L_rotateZ";
	rename -uid "2E9A3BF6-499C-1082-5BC5-6E9DFF5518B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 10.581759130661583 121 10.581759130661583
		 128 10.581759130661583 131 10.46998731815901 132 10.581759130661583 153 10.581759130661583;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_scaleX";
	rename -uid "70369844-4002-80BE-68EC-E6BD39EAA792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 121 1 128 1 132 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_scaleY";
	rename -uid "F09E11C8-40E1-51D0-1BDD-6085ACA450DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 121 1 128 1 132 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_scaleZ";
	rename -uid "985D4528-498D-2B9A-7684-35BEC82783B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 121 1 128 1 132 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_R_rotateX";
	rename -uid "E8A8B098-4ABC-A149-F724-1DB8BDBBCB9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 0 121 0 128 0 131 0.25496451712492318
		 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_R_rotateY";
	rename -uid "BCA783EE-4FC1-B5D7-2E38-319592EAFD2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  101 0 104 8.0065842399026739 108 0 121 0
		 128 -11.780553558602927 130 7.2458887094958415 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKScapula_R_rotateZ";
	rename -uid "741B0C94-485E-0A06-CA55-F39D32DA8720";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  101 10.581759130661583 121 0 128 0 131 -0.11177181250257302
		 132 0 153 10.581759130661583;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_scaleX";
	rename -uid "FDEE11B7-4E9F-033B-8B79-3AA827ED5452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 121 1 128 1 132 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_scaleY";
	rename -uid "D2877F81-4015-6E5E-8518-178AE9E4CD9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 121 1 128 1 132 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_scaleZ";
	rename -uid "D62A9028-4B86-296B-E8CA-A3AD622653A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 121 1 128 1 132 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_R_rotateX";
	rename -uid "B0AB6E08-4EE4-B2C7-B539-0EAE40144082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_R_rotateY";
	rename -uid "D17E4DCF-4862-FEB5-D55F-EEB929633118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_R_rotateZ";
	rename -uid "4ECF044C-4DF7-E3A7-0D82-91AAD5EC13ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_R_scaleX";
	rename -uid "A977770C-4A08-9984-653B-F29EB7DD4EB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_R_scaleY";
	rename -uid "150770FC-453E-9337-2887-F2B101D7B669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_R_scaleZ";
	rename -uid "D81AEEF1-4B36-CC40-6C08-648136CC5295";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateX";
	rename -uid "79FF9C35-4CD7-5992-A33C-C993C6C5BFF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateY";
	rename -uid "61E2877F-40BA-301E-0E23-429980A74192";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 14.365868308041025 128 14.365868308041025
		 153 14.365868308041025;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_R_rotateZ";
	rename -uid "C161413D-459F-1C72-DA8B-7EB55392B718";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -4.2697946265151927 128 -4.2697946265151927
		 153 -4.2697946265151927;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleX";
	rename -uid "95AF22B4-4A9D-894B-AA19-56A974804D75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleY";
	rename -uid "D224CC26-4B2B-05E9-6156-D993D0E0D3EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_R_scaleZ";
	rename -uid "687AC39B-45A6-548C-F207-D29967BF7B31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_L_rotateX";
	rename -uid "2B3FD0E0-41F5-4E55-2313-709CCD899621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_L_rotateY";
	rename -uid "8F65081C-45AF-A450-8517-E790E4AD4EEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToesEnd_L_rotateZ";
	rename -uid "AE78F3A6-4BA7-1128-1286-72B2D00C50C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_L_scaleX";
	rename -uid "1B084ED5-4959-7B2D-5464-359D45C1C2D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_L_scaleY";
	rename -uid "D85990D4-46A8-A1BE-9712-2F9D22F3F167";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToesEnd_L_scaleZ";
	rename -uid "D5BE2086-4D18-3D9F-0EFF-1BAC86876AC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint1_M_rotateX";
	rename -uid "9CACCCB1-455B-33CD-02F7-88A72ACEBD4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint1_M_rotateY";
	rename -uid "80191912-402E-C8A2-B306-A3A605F69123";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKjoint1_M_rotateZ";
	rename -uid "854AB597-495A-1417-2EC4-DC8589C1B56B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint1_M_scaleX";
	rename -uid "7DB3F92D-4FB1-1865-C187-AEB439220A80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint1_M_scaleY";
	rename -uid "F9E59BED-4948-E7F7-B014-BF8FA75FF497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKjoint1_M_scaleZ";
	rename -uid "9289D658-4F28-1099-E39B-02B1B4AA2129";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_R_rotateX";
	rename -uid "76CEB4DC-4293-684D-E007-C4B92BE66242";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_R_rotateY";
	rename -uid "B5E3C347-44B8-3F1D-0158-4F9284187F67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_R_rotateZ";
	rename -uid "4406B80A-48FA-226F-A103-B5985D62EDBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_R_scaleX";
	rename -uid "1C1FEB82-4F15-498D-3167-508E44179E5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_R_scaleY";
	rename -uid "B2D73EA4-4384-1E66-BE5E-2E9928CCE314";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_R_scaleZ";
	rename -uid "5F048496-41CA-9062-8A4D-CF8F5C1E1F9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateX";
	rename -uid "6A96B873-4E54-7355-F4B1-B6B04DC813EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateY";
	rename -uid "28728075-4356-67F0-8D68-EA96057119DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger3_L_rotateZ";
	rename -uid "111A4793-46E3-320E-A5E1-2A9416CA8C44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleX";
	rename -uid "1BF9EDFF-4386-B7DD-5CDD-368A94DF3691";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleY";
	rename -uid "ED4ED354-4D63-E4F1-587A-579A061540A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger3_L_scaleZ";
	rename -uid "0BCAEB5A-4685-7015-5591-859B8B95E5B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_L_rotateX";
	rename -uid "C69AE7D5-41B2-D334-ED14-A596118E9DFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_L_rotateY";
	rename -uid "50F293CC-431B-88DE-C5C6-389F5FA91C34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger3_L_rotateZ";
	rename -uid "1EEC806E-49EB-A114-EE70-C29DB409DD29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_L_scaleX";
	rename -uid "7AA9A6E7-4A2D-C8F0-BF0E-F8A4B5DE085E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_L_scaleY";
	rename -uid "0936208C-4007-BF12-7BE3-11879E2A6981";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger3_L_scaleZ";
	rename -uid "8B3AE09A-406E-1FBD-7995-8E880CDDFEBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateX";
	rename -uid "4AA8D7C7-41F6-56CB-C050-7E86DF4C1761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateY";
	rename -uid "9B7E22B6-470D-5C40-47C0-0CA726D40D7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger2_R_rotateZ";
	rename -uid "DE8F44B5-4BAD-BA35-4D32-A4A585555C9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleX";
	rename -uid "9234BFFC-473B-C595-0BD5-65A1B2954D1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleY";
	rename -uid "BC16312E-46D3-D627-4D3F-78B3A9D8A835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger2_R_scaleZ";
	rename -uid "AFE3D32A-49D6-D309-492E-D58346F5987F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "HipSwinger_M_visibility";
	rename -uid "298D38CB-4316-220E-B00F-4397584C1D31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "HipSwinger_M_rotateX";
	rename -uid "D398FDC1-4FC2-04DD-9DBB-1CB219D6A407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "HipSwinger_M_rotateY";
	rename -uid "D8424214-47F3-74CE-E5AB-74A6DAD310B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "HipSwinger_M_rotateZ";
	rename -uid "28B534C7-4FF0-AF21-D8A6-6B8435398634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_R_rotateX";
	rename -uid "7ADF3B5F-4889-4EF2-9432-BABCA72267D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_R_rotateY";
	rename -uid "2EAEC3A0-4D95-B0DD-F527-4E8A224D3410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -23.84120761449164 128 -23.84120761449164
		 153 -23.84120761449164;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger3_R_rotateZ";
	rename -uid "5F821E89-45DF-FF70-5007-29906594A199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_R_scaleX";
	rename -uid "9D057E2B-486C-5FEF-98B3-22A6573B9D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_R_scaleY";
	rename -uid "04406348-49AF-F295-A37B-5CA3913F2A5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger3_R_scaleZ";
	rename -uid "4164424F-4420-E625-CA12-E5B480FC2B8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_L_follow";
	rename -uid "219AF73E-45D0-E56A-8581-0789DBB37074";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 10 128 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_L_lock";
	rename -uid "75803DC9-4510-0533-3977-40A189E5BE26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_R_follow";
	rename -uid "31570C90-4D66-17B1-13EF-E097EEF6E50B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 10 128 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleLeg_R_lock";
	rename -uid "30A6517B-4E99-9E26-8DA5-E3B153B52C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder2_L_rotateX";
	rename -uid "CA8F974D-4D73-B654-02AB-7BBA776554AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTA -n "FKShoulder2_L_rotateY";
	rename -uid "E02073F7-452C-F300-FE2B-61B9AA753E00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTA -n "FKShoulder2_L_rotateZ";
	rename -uid "59663C56-4652-1B01-5E1E-69B5DF6CE55F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 97.997127290816067;
createNode animCurveTU -n "FKShoulder2_L_scaleX";
	rename -uid "94BB8F0F-4FA2-AD08-F6FB-858C6017616D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTU -n "FKShoulder2_L_scaleY";
	rename -uid "4CB20A23-4135-DE44-0B6A-0895B5EA4D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTU -n "FKShoulder2_L_scaleZ";
	rename -uid "C3F75D0D-4723-9E91-ED62-918740AF0D3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTA -n "FKRingFinger1_R_rotateX";
	rename -uid "7053625A-4719-D89F-2A87-E5922C8CE85C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_R_rotateY";
	rename -uid "CAB8C366-4436-6D7E-4507-FEB9A8B6D361";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 14.365868308041025 128 14.365868308041025
		 153 14.365868308041025;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger1_R_rotateZ";
	rename -uid "1FF75DF7-415F-4B30-E0A9-0C93AAA56429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -5.1917952044227897 128 -5.1917952044227897
		 153 -5.1917952044227897;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_R_scaleX";
	rename -uid "077BC4D2-4279-53F3-91E5-4B903AF03ECA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_R_scaleY";
	rename -uid "40F9410E-4331-14F5-5F57-9B827EDB6706";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger1_R_scaleZ";
	rename -uid "9A67AB9B-4B88-4966-8F5C-009B9C98BBA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode pairBlend -n "pairBlend2";
	rename -uid "F865D804-483E-61B6-CEFA-5F8F7D5F8E37";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend2_inRotateX1";
	rename -uid "C192F94E-4A00-A52E-47CC-4883FE238781";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -34.23644415498493 128 0 153 -34.23644415498493;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulderArmor_L_rotateY";
	rename -uid "BDCD3B0A-468F-139C-2304-228B5CBE70A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pairBlend2_inRotateZ1";
	rename -uid "ABF87857-4D83-DD49-C5D0-5981D4198811";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_scaleX";
	rename -uid "6A8AACC1-4B39-9865-A436-ADB2DD87F7C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_scaleY";
	rename -uid "F652CBCA-484E-D95F-2567-3F826CDE75EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_scaleZ";
	rename -uid "6FCAC096-4D28-B64A-C2E1-EDBBFC844D7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateX";
	rename -uid "4A5D9044-43BD-742E-C356-9D9D9BD34390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 7.7038554462935718 128 7.7038554462935718
		 153 7.7038554462935718;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateY";
	rename -uid "96B5BE6C-4F00-B870-A45E-A48A75EE749E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0.63743945403312896 128 0.63743945403312896
		 153 0.63743945403312896;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger1_L_rotateZ";
	rename -uid "39B6C67B-481D-394F-968E-FDA99472D5DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 4.7015376125583126 128 4.7015376125583126
		 153 4.7015376125583126;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleX";
	rename -uid "01F63839-46AA-319A-46FE-059F1BC9BBF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleY";
	rename -uid "11437E57-4AE5-09D8-EFBA-60989BD61C08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger1_L_scaleZ";
	rename -uid "0E3B68AE-4E69-D6F3-E2DD-5497B8A5CB2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_R_rotateX";
	rename -uid "87B06A0B-4303-6460-2849-50AF7B69CD92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_R_rotateY";
	rename -uid "DAD3CE5B-4039-22E2-D697-56A02BC202E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollHeel_R_rotateZ";
	rename -uid "883C92CD-43A3-4223-B284-38ADD0039C01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_R_scaleX";
	rename -uid "13CD7DCE-4CAD-BAD1-926A-D2851B56CE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_R_scaleY";
	rename -uid "4C7E5D13-405E-7C10-EF62-D786A326F468";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollHeel_R_scaleZ";
	rename -uid "B251EBEB-49E1-77D5-E0B3-E78A5EC2E634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_L_rotateX";
	rename -uid "CDDF8321-4739-1061-7952-E8A778C6184B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_L_rotateY";
	rename -uid "EECB8493-4CCB-530E-9F59-1E8CCC5AE69C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_L_rotateZ";
	rename -uid "CE08CAC6-494B-7C2E-BA19-74BFFDCA2268";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_L_scaleX";
	rename -uid "0563BD47-4C4C-B68C-F2BF-4A9EF9052AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_L_scaleY";
	rename -uid "451FED02-47A6-25BE-4B0C-26A02E071BE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_L_scaleZ";
	rename -uid "6D4696BE-418D-A88A-9AE8-FBAE7384D209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_L_rotateX";
	rename -uid "8C15E7DF-4039-B242-A8FD-93962F3EACCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_L_rotateY";
	rename -uid "2E80E529-4FCE-BEF5-F290-3183F4A37DB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger2_L_rotateZ";
	rename -uid "7F590661-43A9-BAA0-9555-299EECDCB3DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_L_scaleX";
	rename -uid "DA9EC724-4287-E0F2-FC2A-94BC3CB24280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_L_scaleY";
	rename -uid "BF81233C-4FBD-E366-6ABB-65AD450B663C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger2_L_scaleZ";
	rename -uid "C951FB07-46B7-E1BB-9BB4-A4BD2C9CBD5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_spread";
	rename -uid "657876F9-4913-0786-D2C0-7087F69D6A2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_indexCurl";
	rename -uid "C52C9735-46E9-AC61-223B-0A82BF0A0098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 4.9000000953674316 128 4.9000000953674316
		 153 4.9000000953674316;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_middleCurl";
	rename -uid "0A62D5E1-43D0-1552-B3AB-A7BC5F0C544A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 4.9000000953674316 128 4.9000000953674316
		 153 4.9000000953674316;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_ringCurl";
	rename -uid "CE53B802-4CE9-2EB6-8BCB-5688FD376130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 4.9000000953674316 128 4.9000000953674316
		 153 4.9000000953674316;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_pinkyCurl";
	rename -uid "0329A82F-4BCD-E29A-1C76-70B963193382";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 4.9000000953674316 128 4.9000000953674316
		 153 4.9000000953674316;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Fingers_R_thumbCurl";
	rename -uid "D8BF5337-42E9-E708-BB44-10BA73727180";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 2.7999999523162842 128 2.7999999523162842
		 153 2.7999999523162842;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_L_rotateX";
	rename -uid "A2170E46-4DA1-2808-4333-DFB4960BFB5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTA -n "FKShoulder_L_rotateY";
	rename -uid "261D3505-47C8-C220-7C49-55877AB407ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 81.09877568964194;
createNode animCurveTU -n "FKShoulder_L_scaleX";
	rename -uid "78440F85-4A83-06C5-4361-818F3525E60B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTU -n "FKShoulder_L_scaleY";
	rename -uid "6F6F6456-49E7-9383-A070-BBA6B4D44DA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTU -n "FKShoulder_L_scaleZ";
	rename -uid "968882B3-418A-ED19-D3FE-C6829864C547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTA -n "FKShoulder_R_rotateX";
	rename -uid "9AE89A30-4440-0835-804B-3C953E753DEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 56.066370357854417 106 55.713984753384274
		 128 -31.731172082473535 134 -31.274937030823622 153 56.066370357854417;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_R_rotateY";
	rename -uid "4D79BE32-447E-B767-1B1C-B1A98DDE5014";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 65.845580162888837 106 65.869861544226154
		 128 71.895332426975529 134 71.863895225432557 153 65.845580162888837;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulder_R_rotateZ";
	rename -uid "E804ED6D-4C09-C644-1451-BEBA34BA375A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -65.393170384267492 106 -65.039313167353114
		 128 22.771027090741782 134 22.312886736573873 153 -65.393170384267492;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_scaleX";
	rename -uid "BEEE6E35-4518-44DD-4615-348D55D60C4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 106 1 128 1 134 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_scaleY";
	rename -uid "F9E43D8A-4F60-54C1-BB5A-22BFBD4896B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 106 1 128 1 134 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_scaleZ";
	rename -uid "F64F57A7-40F8-8C0C-0518-71A3394A8797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1 106 1 128 1 134 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_R_rotateX";
	rename -uid "FAE62E8A-4737-8D38-0D70-8ABC3D81221B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_R_rotateY";
	rename -uid "86168028-4990-EB21-6C60-E6B9EC8F4281";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRingFinger0_R_rotateZ";
	rename -uid "11EAE4F8-4507-62AE-B48C-828A316F6F23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_R_scaleX";
	rename -uid "3528476E-4956-BDB8-5864-AFB392B479A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_R_scaleY";
	rename -uid "3D54575B-4265-4431-B306-16A93C909D42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRingFinger0_R_scaleZ";
	rename -uid "D2146489-425D-D089-5AA2-3C8E7F27FC34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RootX_M_visibility";
	rename -uid "23B89337-43FD-B191-1183-AA96B44E8211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 1 103 1 107 1 111 1 116 1 120 1 124 1
		 127 1 128 1 130 1 134 1 145 1 149 1 152 1 153 1;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RootX_M_rotateX";
	rename -uid "774E618D-412D-BD53-D802-D49929EC9B7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 4.7221716292404396 103 4.7221716292404396
		 107 4.7221716292404396 111 4.7221716292404396 116 4.7221716292404396 120 4.7221716292404396
		 124 4.7221716292404396 127 4.7221716292404396 128 4.7221716292404396 130 4.7221716292404396
		 134 4.7221716292404396 145 4.7221716292404396 149 4.7221716292404396 152 4.7221716292404396
		 153 4.7221716292404396;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RootX_M_rotateY";
	rename -uid "A2B94B6E-491D-1A6E-7612-39AB543CB9D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 0 103 0 107 0 111 0 116 0 120 0 124 0
		 127 0 128 0 130 0 134 0 145 0 149 0 152 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RootX_M_rotateZ";
	rename -uid "695FD0D1-429A-30D8-D05E-38A00D02494C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  101 0 103 0 107 0 111 0 116 0 120 0 124 0
		 127 0 128 0 130 0 134 0 145 0 149 0 152 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_L_rotateX";
	rename -uid "C7C327EB-4100-9133-DCE2-2F98D422F89F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_L_rotateY";
	rename -uid "1ADE8709-4915-B77E-B818-479216568D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger0_L_rotateZ";
	rename -uid "7D8F963B-40CF-F232-EFF1-1BBD92598A1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_L_scaleX";
	rename -uid "69BE48BF-4273-DD20-786A-CB85C89B088F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_L_scaleY";
	rename -uid "0D87E02C-4227-8A2A-7B3E-6AB3E91FDACD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger0_L_scaleZ";
	rename -uid "8CEEE65B-4B7F-C2D4-FF66-2A8665C47059";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_R_rotateX";
	rename -uid "D245A5C1-4CD7-CA9E-5BC4-02859EEABBFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0.63096399972252959 128 0.63096399972252959
		 153 0.63096399972252959;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_R_rotateY";
	rename -uid "BA343A95-452B-0215-1ED8-A4B1A6C42E22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 2.529119008302839 128 2.529119008302839
		 153 2.529119008302839;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_R_rotateZ";
	rename -uid "E0F8E38B-41B7-B680-86BE-2BA7A851E0FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 19.413394614536333 128 19.413394614536333
		 153 19.413394614536333;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_R_scaleX";
	rename -uid "2D9FCD1B-481C-2510-4CA5-0F97344656FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_R_scaleY";
	rename -uid "1E90733E-4010-5F72-CEF2-4CAE152A956F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_R_scaleZ";
	rename -uid "457C2970-4E0A-6090-B217-03BADA526029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_R_rotateX";
	rename -uid "489AC208-450A-CF99-9A06-79B0D99D176E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 -35.414730692433189 104 -39.770059845695407
		 107 -40.888741714420654 110 -37.82915359837093 122 -33.298297364188258 126 -31.94968316261329
		 128 -29.936650232091257 134 -33.268085816434834 138 -31.568375778019622 153 -35.414730692433189;
	setAttr -s 10 ".kit[6:9]"  1 18 18 18;
	setAttr -s 10 ".kot[6:9]"  1 18 18 18;
	setAttr -s 10 ".kix[6:9]"  0.98626954788259003 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0.16514351007372741 0 0 0;
	setAttr -s 10 ".kox[6:9]"  0.98626954844122627 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0.16514350673744285 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_R_rotateY";
	rename -uid "318E0542-4C17-9C74-D2A6-B7BE4BA9F5AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 -23.85591151152607 104 -11.653486700724876
		 107 -11.653486700724876 110 -16.184895136712889 122 -21.855627501876643 126 -27.620784362613996
		 128 -30.953120040598716 130 -29.495788865429287 134 -26.665137371070745 138 -23.602170142317583
		 153 -23.85591151152607;
	setAttr -s 11 ".kit[5:10]"  1 18 18 18 18 18;
	setAttr -s 11 ".kot[5:10]"  1 18 18 18 18 18;
	setAttr -s 11 ".kix[5:10]"  0.68053409893951722 1 0.93657617716837371 
		0.93299471699495606 1 1;
	setAttr -s 11 ".kiy[5:10]"  -0.73271641184061065 0 0.35046406999958601 
		0.35989006385214595 0 0;
	setAttr -s 11 ".kox[5:10]"  0.68053405720078919 1 0.93657617716837382 
		0.93299471699495617 1 1;
	setAttr -s 11 ".koy[5:10]"  -0.73271645060680402 0 0.35046406999958607 
		0.359890063852146 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_R_rotateZ";
	rename -uid "19DD083F-4BCE-BADC-118E-6EBE6164F5FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 20.875127550376884 104 17.554652063996134
		 107 17.554652063996134 110 18.027773507239626 122 25.349244013439055 126 21.92382854788837
		 128 21.212104399236264 130 21.444590690726493 134 20.246718694390331 138 18.041545246589717
		 153 20.875127550376884;
	setAttr -s 11 ".kit[0:10]"  1 18 18 18 18 1 18 18 
		18 18 18;
	setAttr -s 11 ".kot[0:10]"  1 18 18 18 18 1 18 18 
		18 18 18;
	setAttr -s 11 ".kix[0:10]"  0.92176536710224888 1 1 0.97065967926505792 
		1 0.69962090439208957 1 1 0.97608223623438106 1 1;
	setAttr -s 11 ".kiy[0:10]"  -0.38774812444531098 0 0 0.24045745371906158 
		0 -0.71451423368439237 0 0 -0.21740162857644349 0 0;
	setAttr -s 11 ".kox[0:10]"  0.9217653227089091 1 1 0.97065967926505803 
		1 0.69962090316151948 1 1 0.97608223623438095 1 1;
	setAttr -s 11 ".koy[0:10]"  -0.38774822997834668 0 0 0.2404574537190616 
		0 -0.71451423488931265 0 0 -0.21740162857644346 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_R_scaleX";
	rename -uid "5AC0E6EF-4D24-FF58-3086-73BF86D78F9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  101 1 104 1 107 1 110 1 122 1 126 1 128 1
		 130 1 134 1 138 1 147 1 150 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_R_scaleY";
	rename -uid "34974C99-42CC-CDE7-0F9C-78B8BD74E2CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  101 1 104 1 107 1 110 1 122 1 126 1 128 1
		 130 1 134 1 138 1 147 1 150 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKWrist_R_scaleZ";
	rename -uid "50F86EF7-4CEB-A340-8E21-17852FA0757D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  101 1 104 1 107 1 110 1 122 1 126 1 128 1
		 130 1 134 1 138 1 147 1 150 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateX";
	rename -uid "1593B70A-4B63-2EA2-BA96-CF9E51F06C4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateY";
	rename -uid "57C0A4F7-4DA6-DB28-2FEE-988E99F72245";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger2_L_rotateZ";
	rename -uid "E405CB33-4D0A-CE96-1593-8C969C1A8D8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleX";
	rename -uid "ACA588AF-488C-A9B8-C2BE-A09C9CF727AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleY";
	rename -uid "B2F9CA0A-4DE6-DA01-B445-02B35514681B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger2_L_scaleZ";
	rename -uid "1818C0D6-42B7-4BFF-44C2-2CACFA0AEAAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateX";
	rename -uid "331AF01E-421B-587D-051E-80A34FB0E1AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateY";
	rename -uid "62AA0D5F-410E-6AF2-9B94-11AF1A3DF359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -23.84120761449164 128 -23.84120761449164
		 153 -23.84120761449164;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_R_rotateZ";
	rename -uid "7A69E15C-4CE4-C73B-5186-BC895BBB0C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleX";
	rename -uid "45E90A40-4388-5203-846E-D892CBDF1FCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleY";
	rename -uid "7DEDB37F-4DEE-A57D-1C7B-059CF6916945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_R_scaleZ";
	rename -uid "E4A982A3-4780-7074-C597-02AABB6DF8B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_L_FKIKBlend";
	rename -uid "9F1039D9-4C73-5BA6-3492-FEA447E224F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 10 128 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_L_FKVis";
	rename -uid "8D6A792B-4FAB-6117-4CD6-B2BB3C21BE34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_L_IKVis";
	rename -uid "0D26BEF3-45ED-E16A-A454-3D9C95408D36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_L_rotateX";
	rename -uid "B8A9E818-4EF4-E694-3C81-E1BBDAA51791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_L_rotateY";
	rename -uid "D4E6A928-4CED-8FA9-5FB2-27A79C8D2181";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "RollToes_L_rotateZ";
	rename -uid "D8E9E337-4D99-3A5E-30D7-4587FFE07473";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_L_scaleX";
	rename -uid "494ED32A-4C6B-31FC-2D8A-90A4FA13B9BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_L_scaleY";
	rename -uid "5E749096-4F48-F526-0FA1-02AF4E127E46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "RollToes_L_scaleZ";
	rename -uid "2D373821-4C44-3057-3394-87B0CEF92CC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateX";
	rename -uid "5696B5D1-45E0-BC04-03EE-958A00B62669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateY";
	rename -uid "C1CA761A-48A0-F6C9-4B5E-EA8BEEF5B898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger3_L_rotateZ";
	rename -uid "ED63B928-4834-0B9D-3F3D-4FABCBC2D6ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleX";
	rename -uid "B6DF8908-4E0D-101F-91BD-B7B9E55B148F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleY";
	rename -uid "0D793650-4598-2066-5AD8-9A9C1A29A804";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger3_L_scaleZ";
	rename -uid "9B125DC0-450E-10CA-95FA-1F8410868BD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_R_rotateX";
	rename -uid "383ACAAC-42C2-E9CC-386E-EEB8D81D869B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 6.9668809499464261 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_R_rotateY";
	rename -uid "B94B8717-4ECE-9031-C76E-F4A4E0E513A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 -11.243429501217859 105 -11.243429501217859
		 111 -11.243429501217859 113 -11.243429501217859 118 -11.243429501217859 127 -11.243429501217859
		 134 -11.243429501217859 143 -11.243429501217859 149 -11.243429501217859 153 -11.243429501217859;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_R_rotateZ";
	rename -uid "2FAE7F09-4881-D8FA-A246-32B076117026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_scaleX";
	rename -uid "70650DE9-4B57-D167-47E0-4CBEA36F2E19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 1 105 1 111 1 113 1 118 1 127 1 134 1
		 143 1 149 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_scaleY";
	rename -uid "EF9330AB-4D31-F93C-E41A-DA9BBEACC1F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 1 105 1 111 1 113 1 118 1 127 1 134 1
		 143 1 149 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_scaleZ";
	rename -uid "22F4A26F-473B-3359-8B75-D2BDCBE7450D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 1 105 1 111 1 113 1 118 1 127 1 134 1
		 143 1 149 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_followMain";
	rename -uid "B40CA4AB-412F-9ABC-0805-B9BE45318F90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 10 105 10 111 10 113 10 118 10 127 10
		 134 10 143 10 149 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_followRoot";
	rename -uid "B5B55A95-4142-1268-ADC5-FAB9407DF90B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_swivel";
	rename -uid "7A0B41DE-490E-8126-692D-77BAEC84D424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_roll";
	rename -uid "903DDE2D-459E-C442-B5CB-1EA8F456625C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  101 -10.435974006116211 104 0 111 0 113 0.029476571428569277
		 118 1.2638080000000056 127 12.151999999999997 137 35.552 143 21.001117599627268 153 -10.435974006116211;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_rollStartAngle";
	rename -uid "510C481A-4438-BAA6-FBFA-6F8496AA5AB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 30 105 30 111 30 113 30 118 30 127 30
		 134 30 143 30 149 30 153 30;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_rollEndAngle";
	rename -uid "6EEE3844-4FE4-28FB-5517-599DD2EBF369";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 60 105 60 111 60 113 60 118 60 127 60
		 134 60 143 60 149 60 153 60;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_rock";
	rename -uid "ECCE5ECB-4FA4-3B57-928E-1B93E2F5CDF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_stretchy";
	rename -uid "66EE2240-4911-AB5B-CF3E-C79E38804B53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_antiPop";
	rename -uid "EB496B6C-4D49-61F1-178D-9B8DA6DD0E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Lenght1";
	rename -uid "B4BA4E14-4EA8-592F-75F7-20913333FBB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 1 105 1 111 1 113 1 118 1 127 1 134 1
		 143 1 149 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Lenght2";
	rename -uid "661C7F9B-4EF9-DB0B-F814-508110C98FFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 1 105 1 111 1 113 1 118 1 127 1 134 1
		 143 1 149 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Fatness1";
	rename -uid "393B1E64-4E55-C473-E04A-BBB49BB9E82F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_Fatness2";
	rename -uid "663F6A5F-4100-3027-6555-9284FC15C4AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 0 105 0 111 0 113 0 118 0 127 0 134 0
		 143 0 149 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_R_volume";
	rename -uid "72D41BFC-4616-B506-1372-9CABA2EB5287";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  101 10 105 10 111 10 113 10 118 10 127 10
		 134 10 143 10 149 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_L_rotateX";
	rename -uid "37BC407F-4B83-F4E4-E5D1-3CB5357721EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_L_rotateY";
	rename -uid "A8E17022-4522-E8CA-9670-778267738BFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKPinkyFinger0_L_rotateZ";
	rename -uid "03478A4C-4F47-FB5B-094A-A5A3AD964D76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_L_scaleX";
	rename -uid "2A201A96-41AE-58F0-2086-8882890421B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_L_scaleY";
	rename -uid "76174C66-477A-B65A-3A9C-A8843DDD2850";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKPinkyFinger0_L_scaleZ";
	rename -uid "98D3B484-4410-6A5D-5863-18AF3450FBAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKChest_M_rotateZ";
	rename -uid "90A159EA-4C57-5BF1-8CBB-8B91C46C646A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 4.7582725877453775 128 0 153 4.7582725877453775;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKChest_M_scaleX";
	rename -uid "C9D0FC85-49EE-E2F0-58A4-13AA5967E855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKChest_M_scaleY";
	rename -uid "7EB72AF6-4805-A2FE-043C-D493BA842DC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKChest_M_scaleZ";
	rename -uid "38BA1117-4157-51CF-2675-1DB15A49D703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_R_rotateX";
	rename -uid "73E16478-4BFF-F5F0-C611-348599FC6B99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_R_rotateY";
	rename -uid "235814BA-4978-1D6D-8680-459FF16D356F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKMiddleFinger0_R_rotateZ";
	rename -uid "31E12C88-4A3B-CE2E-4E2B-838E6C4FCD81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_R_scaleX";
	rename -uid "CE1936CE-4CE0-C4CF-426A-2A9D435824D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_R_scaleY";
	rename -uid "FE2234C6-4FC4-DEF8-3E1F-C6B9949A250C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKMiddleFinger0_R_scaleZ";
	rename -uid "4261B3B4-4B42-1E50-526E-7A959A20347E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKSpine_M_FKIKBlend";
	rename -uid "2F95D47B-46D1-E083-396D-DA91D20974B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKSpine_M_FKVis";
	rename -uid "22D1FBE6-418F-D130-122D-29910CC799B1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKSpine_M_IKVis";
	rename -uid "A77CB77F-49CD-CAAF-80FD-7B9584157008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKWrist_L_rotateX";
	rename -uid "4FDEC418-4E8D-20A5-35C0-B3A841112B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 102.95953859109885;
createNode animCurveTA -n "FKWrist_L_rotateY";
	rename -uid "F31E8CE9-444B-7C2E-E844-C682657E8ACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTA -n "FKWrist_L_rotateZ";
	rename -uid "2352D69E-403D-CEB2-B3AF-E69EAE3F1AE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 0;
createNode animCurveTU -n "FKWrist_L_scaleX";
	rename -uid "AEE7DD08-4936-86F2-2B0B-80AB96DB798D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTU -n "FKWrist_L_scaleY";
	rename -uid "17BDB875-4533-6368-A401-65AE89F9465C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTU -n "FKWrist_L_scaleZ";
	rename -uid "123A2364-4AE8-D09E-6287-43BA52D52706";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  126.25 1;
createNode animCurveTA -n "FKThumbFinger3_R_rotateX";
	rename -uid "8CFB51E2-424B-231C-1EA8-CB9C2A9EA0F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_R_rotateY";
	rename -uid "C544ACC3-4F61-BD00-BD32-8CB7993ACEE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger3_R_rotateZ";
	rename -uid "21014476-4BF3-1EAD-4787-77B43D95402F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_R_scaleX";
	rename -uid "2FE54072-4D80-D8AD-1F87-6BA6A29F9FA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_R_scaleY";
	rename -uid "C6E6E06B-41A9-1A8D-0338-D6909629A6D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger3_R_scaleZ";
	rename -uid "555928C2-49DF-00AB-8171-1489C1807C54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_L_rotateX";
	rename -uid "D3C73FB5-466A-9013-696F-A09D25326957";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -14.088475406642491 128 -14.088475406642491
		 153 -14.088475406642491;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_L_rotateY";
	rename -uid "CD0EACAE-453D-1493-67DA-93A01C9B0DE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 6.1038546762287567 128 6.1038546762287567
		 153 6.1038546762287567;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKThumbFinger1_L_rotateZ";
	rename -uid "BBA99E93-4B76-78A6-A0B6-9690F85FD38B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 72.369502038179604 128 72.369502038179604
		 153 72.369502038179604;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_L_scaleX";
	rename -uid "6D92111D-46CD-5A95-75C1-8CBB865EADD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_L_scaleY";
	rename -uid "D72EC5BB-46C9-2B0F-629D-97A3F584B6F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKThumbFinger1_L_scaleZ";
	rename -uid "14F5F09B-41F8-7076-5E81-288108157884";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_R_rotateX";
	rename -uid "2053791B-46A1-6C0F-450B-15B56BBA9E82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_R_rotateY";
	rename -uid "A0A0FF3C-4029-8245-87C0-3B9CAA11253D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 14.365868308041025 128 14.365868308041025
		 153 14.365868308041025;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKIndexFinger1_R_rotateZ";
	rename -uid "722F78B4-41FA-727E-91E6-0E97FB66A039";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -13.903426567298411 128 -13.903426567298411
		 153 -13.903426567298411;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_R_scaleX";
	rename -uid "061A4231-4A13-95ED-2670-0E8702C0CF1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_R_scaleY";
	rename -uid "36E7470C-4736-F761-8034-67BC9A8A00A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIndexFinger1_R_scaleZ";
	rename -uid "A2ABF22E-4DE3-94EF-D4F6-A281D6AA76E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode displayLayer -n "bat_ctrl";
	rename -uid "335EF2D0-4E8C-1C3E-B6B7-708395077D54";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode animCurveTL -n "PoleArm_L_translateX";
	rename -uid "391B2668-4680-A0FC-680A-A98D0F112744";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 -15.259330445834003 128 0.22958795431406287
		 132 0.17971363706558718 153 -15.259330445834003;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleArm_L_translateY";
	rename -uid "0201076C-413E-02E1-B9F6-7EB02EAE6B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -89.916879628968175 132 -89.916879628968175
		 153 -89.916879628968175;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "PoleArm_L_translateZ";
	rename -uid "1FA1A27A-4606-7D01-228E-A7A5B98408FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 93.160799147472702 128 -6.3268189569768367
		 132 -6.0064688266806154 153 93.160799147472702;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleArm_L_follow";
	rename -uid "3165B034-42AE-6D36-0E5F-FF8A13F61E56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "PoleArm_L_lock";
	rename -uid "2A525CDD-4CCD-5DD8-233A-ECB852329A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 132 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_blendFKShoulderL";
	rename -uid "6C4FD050-4777-F798-42FD-E0917FFBA564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "front1_rotateX";
	rename -uid "F3AE7CA2-4B80-B4DE-CC6C-C9B623BF7B56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
createNode animCurveTA -n "front1_rotateY";
	rename -uid "F3624F50-4A9C-54B3-591D-92A36BA2995E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
createNode animCurveTA -n "front1_rotateZ";
	rename -uid "667B92DE-4CA6-BC6E-1AC8-9B990D5DC6CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
createNode animCurveTU -n "front1_visibility";
	rename -uid "73042280-4DBD-9E08-362F-E48FEFD547C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "front1_translateX";
	rename -uid "A6A199EC-4D31-9174-8FF2-F3B0BFBE2654";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 -7.152557373046875e-07 153 -7.152557373046875e-07;
createNode animCurveTL -n "front1_translateY";
	rename -uid "FBCE42B8-4AC7-D0FB-0115-67B177D25BD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 41.340141296386719 153 41.340141296386719;
createNode animCurveTL -n "front1_translateZ";
	rename -uid "A971ACAA-447F-B34C-E42F-D592F38C9E85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1005.0614064819482 153 1005.0614064819482;
createNode animCurveTU -n "front1_scaleX";
	rename -uid "1E6485B2-4509-BDC6-1769-1F8DEDCD4E2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
createNode animCurveTU -n "front1_scaleY";
	rename -uid "B4EB5C59-409F-3A3D-B8B2-D4818702E5DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
createNode animCurveTU -n "front1_scaleZ";
	rename -uid "92A46302-43AD-C13F-AAE1-858BD0B6A720";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
createNode animCurveTA -n "FKRoot_M_rotateX";
	rename -uid "BE03A1B3-444F-B792-2056-CAB28A364987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateY";
	rename -uid "FBC7DB68-4F94-5086-8E05-8EB70EE90175";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKRoot_M_rotateZ";
	rename -uid "DFEAA9A3-4B4D-0A57-F75C-1B9FBFFD21AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateX";
	rename -uid "3094FA28-48B2-414A-67E6-179B56215B23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 -4.6230147599638354;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateY";
	rename -uid "52792FF7-4D18-449E-B405-76ACB93852D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 -4.368565065517914;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKRoot_M_translateZ";
	rename -uid "1B5DAB31-4184-FE66-B72C-5B82000403D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 6.9596116740651691e-15;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleX";
	rename -uid "E27E62C8-4829-7951-6EF4-B894D9E55992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleY";
	rename -uid "82114045-420E-5A5F-258D-45AA079229CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKRoot_M_scaleZ";
	rename -uid "7A4C0209-4022-CB40-67A7-8EAC76713C65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKArm_R_rotateX";
	rename -uid "6B342124-4B3F-EF4E-9C4D-EB9BFB7BB194";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 72.310762993062852 103 -74.020567487443472
		 105 -16.358450214078506 116 -20.915105348949908 128 -16.358450214078506 130 72.310762993062852
		 131 -74.020567487443472 133 -16.358450214078506 138 -16.358450214078506 151 -16.358450214078506
		 153 72.310762993062852;
createNode animCurveTA -n "IKArm_R_rotateY";
	rename -uid "A6DB71DB-46AB-97BE-2530-40B2321C02FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 101.2503279796323 103 103.26166405536438
		 105 98.897027411518053 116 85.770080567542223 128 98.897027411518053 130 101.2503279796323
		 131 103.26166405536438 133 98.897027411518053 138 98.897027411518053 151 98.897027411518053
		 153 101.2503279796323;
createNode animCurveTA -n "IKArm_R_rotateZ";
	rename -uid "643DDC73-4DFD-80F8-9B9A-8682567B3F11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 92.040101481737082 103 -55.003243730752708
		 105 1.885080788746234 116 -4.3120916193318294e-14 128 1.885080788746234 130 92.040101481737082
		 131 -55.003243730752708 133 1.885080788746234 138 1.885080788746234 151 1.885080788746234
		 153 92.040101481737082;
createNode animCurveTL -n "IKArm_R_translateX";
	rename -uid "BE910788-4F4A-346D-AFB7-09867F45049A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 55.716627469228506 103 55.716627469228506
		 105 55.716627469228506 116 55.716627469228506 128 55.716627469228506 130 55.716627469228506
		 131 55.716627469228506 133 55.716627469228506 138 54.184072031204579 151 55.716627469228506
		 153 55.716627469228506;
createNode animCurveTL -n "IKArm_R_translateY";
	rename -uid "0CD82B02-4404-8A62-CAC9-6A8DBFF7F94D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  101 -38.886020671726058 103 -38.905115350533407
		 105 -38.837141835496183 116 -38.251513574986006 128 -38.837141835496183 130 -38.886020671726058
		 131 -38.905115350533407 133 -38.837141835496183 138 -37.341012125077725 142 -38.9852244636009
		 151 -38.837141835496183 153 -38.886020671726058;
createNode animCurveTL -n "IKArm_R_translateZ";
	rename -uid "E83BAE27-4C3D-4E0D-11E7-BE8BDAADD2CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 30.540917076161975 103 30.540917076161975
		 105 30.540917076161975 116 30.540917076161975 128 30.540917076161975 130 30.540917076161975
		 131 30.540917076161975 133 30.540917076161975 138 29.780528996561259 151 30.540917076161975
		 153 30.540917076161975;
createNode animCurveTU -n "IKArm_R_scaleX";
	rename -uid "373C8826-4908-4B56-F5B8-CB8B132C329F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 1 103 1 105 1 116 1 128 1 130 1 131 1
		 133 1 138 1 151 1 153 1;
createNode animCurveTU -n "IKArm_R_scaleY";
	rename -uid "83424556-4291-C7C2-FED3-81B28104B5AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 1 103 1 105 1 116 1 128 1 130 1 131 1
		 133 1 138 1 151 1 153 1;
createNode animCurveTU -n "IKArm_R_scaleZ";
	rename -uid "EE58C804-48D0-D019-FD38-0F80C8EF5E7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 1 103 1 105 1 116 1 128 1 130 1 131 1
		 133 1 138 1 151 1 153 1;
createNode animCurveTU -n "IKArm_R_followMain";
	rename -uid "9230867C-48A9-EA7F-BE83-42806C71CBD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 10 103 10 105 10 116 10 128 10 130 10
		 131 10 133 10 138 10 151 10 153 10;
createNode animCurveTU -n "IKArm_R_followRoot";
	rename -uid "87573255-4025-C110-1F62-3C9ACD79370E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 0 103 0 105 0 116 0 128 0 130 0 131 0
		 133 0 138 0 151 0 153 0;
createNode animCurveTU -n "IKArm_R_followChest";
	rename -uid "736DAC3B-4053-AD9F-44FD-19B605B04ACC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 0 103 0 105 0 116 0 128 0 130 0 131 0
		 133 0 138 0 151 0 153 0;
createNode animCurveTU -n "IKArm_R_stretchy";
	rename -uid "C4AC9872-4A36-FFA0-A0EA-92976219D3AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 0 103 0 105 0 116 0 128 0 130 0 131 0
		 133 0 138 0 151 0 153 0;
createNode animCurveTU -n "IKArm_R_antiPop";
	rename -uid "5FE80025-444B-8A7D-3F79-87A9B805873A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 0 103 0 105 0 116 0 128 0 130 0 131 0
		 133 0 138 0 151 0 153 0;
createNode animCurveTU -n "IKArm_R_Lenght1";
	rename -uid "8AD32DE6-4F5A-75D3-70E9-A4BB9B78377F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 1 103 1 105 1 116 1 128 1 130 1 131 1
		 133 1 138 1 151 1 153 1;
createNode animCurveTU -n "IKArm_R_Lenght2";
	rename -uid "30CED09D-4A69-3CEB-CF8D-CEB1AAA69AAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 1 103 1 105 1 116 1 128 1 130 1 131 1
		 133 1 138 1 151 1 153 1;
createNode animCurveTU -n "IKArm_R_Fatness1";
	rename -uid "327FD46C-4F20-BFE5-96B8-6BB23E40B909";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 0 103 0 105 0 116 0 128 0 130 0 131 0
		 133 0 138 0 151 0 153 0;
createNode animCurveTU -n "IKArm_R_Fatness2";
	rename -uid "7D686217-46AA-7F0B-F706-C0AE7CE203F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 0 103 0 105 0 116 0 128 0 130 0 131 0
		 133 0 138 0 151 0 153 0;
createNode animCurveTU -n "IKArm_R_volume";
	rename -uid "32F0CCAB-4FF5-1416-93F6-CCB865530509";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  101 10 103 10 105 10 116 10 128 10 130 10
		 131 10 133 10 138 10 151 10 153 10;
createNode animCurveTU -n "FKIKArm_R_FKIKBlend";
	rename -uid "E9BDA1FA-4536-55C1-360A-1CBBEE5F73F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_R_FKVis";
	rename -uid "E134FA42-4A9F-12A7-8345-6DBD07F040AB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKIKArm_R_IKVis";
	rename -uid "D6811852-44A8-BC0C-5CDA-48BCE3BBAFD7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode reference -n "sharedReferenceNode";
	rename -uid "95FF1730-4716-4A2A-6958-44851ED3C221";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTL -n "FKSkirtJntTop_M_translateX";
	rename -uid "144DFB1E-4DED-0F13-A31B-81B67E686140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntTop_M_translateY";
	rename -uid "FA495974-4343-10F7-ABCF-658762928E91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntTop_M_translateZ";
	rename -uid "15116B5D-4871-327F-1136-AA8AA54CFADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid1_M_translateX";
	rename -uid "04C76E07-4907-410D-C921-CB8B85A55134";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid1_M_translateY";
	rename -uid "F0514EAA-4BC3-291A-C076-9C96AD38FD1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid1_M_translateZ";
	rename -uid "4A253954-4821-B687-E4A4-2C9099B868CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid2_M_translateX";
	rename -uid "120FA5AD-4337-EBBF-8BDF-9D91719EEC3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 141 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid2_M_translateY";
	rename -uid "28635006-4486-F601-6C55-B3941734B64D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 141 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid2_M_translateZ";
	rename -uid "796CEA96-414E-3C75-2462-2C91F61355FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 141 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid3_M_translateX";
	rename -uid "D7ADEF4B-490B-D6BA-481E-DC9429ABF596";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid3_M_translateY";
	rename -uid "121716F1-46B4-C485-F842-2592FDCB4C93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid3_M_translateZ";
	rename -uid "44020D0E-4FA1-4818-5BD4-B487FB5FD95E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid4_M_translateX";
	rename -uid "F7F2623E-4478-B773-3ED8-9FBFEF8EDA5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid4_M_translateY";
	rename -uid "EAB50729-44EB-3949-5E7D-74905FF9DB8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKSkirtJntMid4_M_translateZ";
	rename -uid "EE930129-4D6C-F934-CF96-CFAA7AA9BC17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntTop_M_rotateX";
	rename -uid "0F4E6FFF-4DD2-B7CE-EB0E-4EACBEEB0C9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -10.291172762020615 115 3.4338539895786302
		 128 -0.29548021040101397 141 -8.2522625875984765 153 -10.291172762020615;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntTop_M_rotateY";
	rename -uid "32CEB57E-4A22-F84E-8241-F78CE131A447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1.102933868083299 115 0.53631570078602753
		 128 0.90953634277937578 141 -0.65010382100299591 153 1.102933868083299;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntTop_M_rotateZ";
	rename -uid "72BEF533-417D-A836-0A21-E68FCB0C02DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -25.936718091025355 115 -27.634689069202118
		 128 -23.94733767314451 141 -23.507677064846767 153 -25.936718091025355;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntTop_M_scaleX";
	rename -uid "164ADF24-40DF-A7E6-555C-6D90EA6CDCCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntTop_M_scaleY";
	rename -uid "373208A8-4B6F-6CE9-A8CA-328E50EC913F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntTop_M_scaleZ";
	rename -uid "A226EEA5-488A-3169-4654-39837C849280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid1_M_rotateX";
	rename -uid "83AFDB00-469F-2C77-9D01-F4B15EE11F82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -3.4670000000000005 115 2.8164857254029085
		 128 18.16382082478663 141 1.2082055714201101 153 -3.4670000000000005;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid1_M_rotateY";
	rename -uid "B1AF3DB4-4D26-964B-785A-41855D2645E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -1.6743872604238279 115 -2.9341802513600528
		 128 -1.6743872604238279 141 -1.0829173575065167 153 -1.6743872604238279;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid1_M_rotateZ";
	rename -uid "4692A1B2-4D5C-FB62-0B0A-F49694218663";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -9.0247266725225401 115 8.8208223753806045
		 128 -9.0247266725225401 141 -2.7999884269885911 153 -9.0247266725225401;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid1_M_scaleX";
	rename -uid "8E913D29-4A8D-73BB-18B6-B39BA62690E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid1_M_scaleY";
	rename -uid "B09A8092-4448-0685-DFCD-C8A199B78955";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid1_M_scaleZ";
	rename -uid "D87EC0D4-440B-03A8-C85F-2F851B661D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid2_M_rotateX";
	rename -uid "93F4F802-4900-D481-F351-30B7A679D52C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -3.4670000000000005 115 0.053426317809987821
		 128 3.4667060238848766 141 -0.2131242778150588 153 -3.4670000000000005;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid2_M_rotateY";
	rename -uid "6D4BF44E-44E9-354A-9427-DFAD38157BB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 1.084140443264364 115 0.70759166954065034
		 128 1.084140443264364 141 0.6353957588657323 153 1.084140443264364;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid2_M_rotateZ";
	rename -uid "A5516B95-4FD0-55D4-DC8F-C9A374C50ED3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -1.7034798973254515 115 -16.161485702383494
		 128 -1.7034798973254515 141 -5.5479372347075886 153 -1.7034798973254515;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid2_M_scaleX";
	rename -uid "A01713DC-4DBA-F98F-74DF-22AB9BE7CA49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 141 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid2_M_scaleY";
	rename -uid "D10F3C7F-407B-4806-286C-C98F3E2600A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 141 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid2_M_scaleZ";
	rename -uid "0B4137D9-4F3F-B382-280F-E4A1FF515B0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 141 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid3_M_rotateX";
	rename -uid "4399D1B3-493A-B200-55CA-FAB354F08E79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -3.4670000000000005 128 3.4667060238848766
		 153 -3.4670000000000005;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid3_M_rotateY";
	rename -uid "15C2B8C4-4DF6-06AC-A113-90BBDCF51606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1.084140443264364 128 1.084140443264364
		 153 1.084140443264364;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid3_M_rotateZ";
	rename -uid "2BF3A90C-4CAD-5DBA-1138-39AF8424F392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -1.7034798973254515 128 -1.7034798973254515
		 153 -1.7034798973254515;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid3_M_scaleX";
	rename -uid "72B5BA97-4D4D-930C-19C2-5F88E3C44917";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid3_M_scaleY";
	rename -uid "6396D43D-4F38-9AFD-5B31-42A078D0952D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid3_M_scaleZ";
	rename -uid "10212898-48D6-7903-068A-86B1175362EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid4_M_rotateX";
	rename -uid "F02E9114-4D69-D75C-6B72-08B1A72F666D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -3.4670000000000005 128 3.4667060238848766
		 153 -3.4670000000000005;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid4_M_rotateY";
	rename -uid "394882F2-4C9A-ACEB-29FC-57B7E4BCE3D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1.084140443264364 128 1.084140443264364
		 153 1.084140443264364;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKSkirtJntMid4_M_rotateZ";
	rename -uid "6D54E8D2-4C0A-CC23-53B6-AF8AC98E6B00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -1.7034798973254515 128 -1.7034798973254515
		 153 -1.7034798973254515;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid4_M_scaleX";
	rename -uid "E9A44419-4CC0-8FC5-F226-53A47C564F97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid4_M_scaleY";
	rename -uid "CB53439D-4C87-9F45-68F7-99809D647F65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSkirtJntMid4_M_scaleZ";
	rename -uid "5239AAB7-4EAB-88F6-179B-0682314E6255";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  101 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Shoulder2_R_translateX";
	rename -uid "BAEDA231-467C-F0DF-674D-4FBC6AE51931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTL -n "Shoulder2_R_translateY";
	rename -uid "6939EF0A-4216-38FD-120D-DBAD5380318B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTL -n "Shoulder2_R_translateZ";
	rename -uid "E2B06763-4B39-8218-C819-FA99ED199EA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTU -n "Shoulder2_R_visibility";
	rename -uid "EECDDF5E-40E1-A5E5-74E2-788D9F987B14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Shoulder2_R_rotateX";
	rename -uid "61B122E0-4019-590F-FBEC-A48D9141AB76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTA -n "Shoulder2_R_rotateY";
	rename -uid "AE15AF6E-4A0E-FB21-E514-DEA3A3A544FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTA -n "Shoulder2_R_rotateZ";
	rename -uid "90A5F2CB-41A0-6A99-19A0-FA9131BFA9FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTU -n "Shoulder2_R_scaleX";
	rename -uid "C10C131A-424C-5BBB-98FA-8697C023503D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
createNode animCurveTU -n "Shoulder2_R_scaleY";
	rename -uid "16FA81C0-4DA2-89EF-208A-F8A9BDB3BFA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
createNode animCurveTU -n "Shoulder2_R_scaleZ";
	rename -uid "30B130D3-4244-9FED-7316-8E8022D93C60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
createNode animCurveTU -n "IKLeg_L_scaleX";
	rename -uid "76E49299-41F7-EF78-F9E4-279C69DED0F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 1 82 1 86 1 93 1 101 1 109 1 118 1 124 1
		 127 1 140 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_scaleY";
	rename -uid "0EDD232A-4C37-80D0-18C1-45BAD3AB120D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 1 82 1 86 1 93 1 101 1 109 1 118 1 124 1
		 127 1 140 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_scaleZ";
	rename -uid "F25CF7C2-4967-EB94-C061-D180798FB351";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 1 82 1 86 1 93 1 101 1 109 1 118 1 124 1
		 127 1 140 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_followMain";
	rename -uid "6383899A-4EAD-169C-81A0-8D8D8FF1E6DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 10 82 10 86 10 93 10 101 10 109 10 118 10
		 124 10 127 10 140 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_followRoot";
	rename -uid "9DA175CD-4532-5EEF-8E18-21AC18D89C92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_swivel";
	rename -uid "7EAFB82F-4587-0E5F-E027-9086174B3F96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_rock";
	rename -uid "4427F3AC-4A40-0117-85CA-82A1CD9AFDF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_roll";
	rename -uid "A432E5B4-44BA-1007-864F-EBA8502FA935";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 1.2638080000000056 101 8.8830089162104997
		 112 35.552 120 0 124 -15.71130434782609 127 0 140 7.1977637032127886 153 8.8830089162104997;
	setAttr -s 11 ".kit[6:10]"  1 18 18 18 18;
	setAttr -s 11 ".kot[6:10]"  1 18 18 18 18;
	setAttr -s 11 ".kix[6:10]"  0.0043949908294977011 1 0.023274140313490951 
		0.097103477044685763 1;
	setAttr -s 11 ".kiy[6:10]"  -0.99999034198116576 0 0.99972912050848461 
		0.99527429121113742 0;
	setAttr -s 11 ".kox[6:10]"  0.0043949909863139486 1 0.023274140313490954 
		0.097103477044685776 1;
	setAttr -s 11 ".koy[6:10]"  -0.99999034198047654 0 0.9997291205084845 
		0.99527429121113742 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_rollStartAngle";
	rename -uid "7D4EE75A-4D3F-7DAF-77A7-A9B8E0BD926C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 30 82 30 86 30 93 30 101 30 109 30 118 30
		 124 30 127 30 140 30 153 30;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_rollEndAngle";
	rename -uid "BEDF2A84-4F46-CB1B-845E-6FAE15349746";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 60 82 60 86 60 93 60 101 60 109 60 118 60
		 124 60 127 60 140 60 153 60;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_stretchy";
	rename -uid "727835A7-4E02-9DB9-A01C-8BB171ACB264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_antiPop";
	rename -uid "29281655-42F8-ADAA-CADD-9AAE1E7C9E51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Lenght1";
	rename -uid "B86616B5-4F0E-B483-7074-C3AD0C3E0ACB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 1 82 1 86 1 93 1 101 1 109 1 118 1 124 1
		 127 1 140 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Lenght2";
	rename -uid "498E167B-4C99-44E6-8F55-E4A784B86083";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 1 82 1 86 1 93 1 101 1 109 1 118 1 124 1
		 127 1 140 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Fatness1";
	rename -uid "15F9BA2A-4229-7F15-EDDE-188DB8B077BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_Fatness2";
	rename -uid "849CD6E8-4CC3-8C85-C8FE-9CB9F8641874";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "IKLeg_L_volume";
	rename -uid "348C040F-42BF-2AEE-3C20-26B02AEDDECA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 10 82 10 86 10 93 10 101 10 109 10 118 10
		 124 10 127 10 140 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_L_translateX";
	rename -uid "61EF40D4-49CE-DCD7-A514-B682D5CEBAA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  101 -4.3313846903824684 109 -2.005406 127 -4.2808365340295209
		 140 -4.2808365340295209 153 -4.3313846903824684;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_L_translateY";
	rename -uid "A950E88B-47A6-CF64-A58A-53BAF9F14D58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  76 0 82 0 86 0 93 0 101 0 118 9.3658906237340016
		 124 0 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "IKLeg_L_translateZ";
	rename -uid "00EF91BF-447D-6E14-DE73-FE8408C9BBA8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -38.639328703703718 127 26.906 153 -38.639328703703718;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  0.078626995319170057 1 0.078903506285904951;
	setAttr -s 3 ".kiy[0:2]"  -0.99690410552223085 0 -0.99688225819090104;
	setAttr -s 3 ".kox[0:2]"  0.078626887719065008 1 0.078903582957661866;
	setAttr -s 3 ".koy[0:2]"  -0.99690411400877144 0 -0.9968822521223073;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_L_rotateX";
	rename -uid "EBF1DAE8-4289-2633-8943-F3A13D967B6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 6.9668809499464261
		 124 0 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_L_rotateY";
	rename -uid "B3DE5E43-4DD2-6FC3-1F25-D6BBFDDB55A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 11.243 82 11.243 86 11.243 93 11.243
		 101 11.243 109 11.243 118 11.243 124 11.243 127 11.243 140 11.243 153 11.243;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "IKLeg_L_rotateZ";
	rename -uid "DA639DEE-41D2-51D8-A761-3D90D31107B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  76 0 82 0 86 0 93 0 101 0 109 0 118 0 124 0
		 127 0 140 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_L_Global";
	rename -uid "7317A406-460A-867A-254F-5FBCC6F1F1A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulder_R_Global";
	rename -uid "CB6AE5BB-4DE9-32E5-6386-00A2C28BE242";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  106 10 128 10 134 10 153 10;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateX";
	rename -uid "8BEF5700-47A9-28B4-4A99-A09A3610B81D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateY";
	rename -uid "8AE717D7-4B1C-3567-E251-1C998ED54980";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Main_rotateZ";
	rename -uid "D99FCF3C-46A4-C447-93B3-BC9C7C372C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_L_Global";
	rename -uid "3320AE64-4E25-7EAA-5F01-658AF58FD59F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKScapula_R_Global";
	rename -uid "7216F656-4B21-3E67-5C06-5987F60707AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKSpine2_M_Global";
	rename -uid "EF2D240A-466A-6C76-E1AD-D08B9724C29C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_visibility";
	rename -uid "E0C7C6C7-46AA-108A-8697-68ADBD8EB9D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateX";
	rename -uid "EF17A46F-4F39-73F3-BFCE-63BFA34A4B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateY";
	rename -uid "C09E3383-4D33-B978-5BBC-EAA2FD90C379";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Main_translateZ";
	rename -uid "2831917F-4AC3-D652-70E4-F993321961D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleX";
	rename -uid "1F6067E3-48F9-218F-B7B1-ECA1D8A5E6A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleY";
	rename -uid "60985798-4701-9C73-04AA-64924A245F79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Main_scaleZ";
	rename -uid "6C862DC4-43F2-82A8-80C8-0F81C52F5890";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_R_translateZ";
	rename -uid "DB857C46-4378-D173-3468-628C67C43BCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_R_translateY";
	rename -uid "65DD30A1-4AEE-6BAF-1995-83AAFEF1BC36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "FKShoulderArmor_R_translateX";
	rename -uid "5DB0E575-4A72-88AD-0822-A8979F7C4CCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "FKShoulderArmor_R_rotateY";
	rename -uid "44DB9D44-463B-3F92-B038-1C987CB7B319";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0.31985659875958461 128 0 153 0.31985659875958461;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "F7FA14DB-49BD-70C8-B9DB-43A99D4141EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 -2.0787511071016103 128 0 153 -2.0787511071016103;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode pairBlend -n "pairBlend1";
	rename -uid "D5F470D2-44DB-70CB-2171-AB85B1E8DFF3";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "48AD98EC-4234-D727-305C-479E0CFF62FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 11.22466398457312 128 17.176737160112882
		 153 11.22466398457312;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_blendFKShoulderR";
	rename -uid "CB2C2E15-4897-6D4A-65BD-71AD573CF852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 128 0 153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_Global";
	rename -uid "1E942771-463D-C3D9-882E-27866A3A7FAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_scaleZ";
	rename -uid "18B8D863-48FA-05AA-C1F2-158D64731433";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_scaleY";
	rename -uid "5FC44FD1-4259-2429-D37B-8EBC42B95462";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "FKShoulderArmor_R_scaleX";
	rename -uid "93221BCB-400F-33B2-4DC0-96A464E4DF36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 128 1 153 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animLayer -n "BaseAnimation";
	rename -uid "B66FB1CF-400B-6105-36CA-BA8C49458F6A";
	setAttr -s 3 ".cdly";
	setAttr -s 3 ".chsl";
	setAttr ".ovrd" yes;
createNode animLayer -n "AnimLayer1";
	rename -uid "AD624191-4AF9-8387-F7F8-95949173C33B";
	setAttr -s 9 ".dsm";
	setAttr -s 7 ".bnds";
createNode animBlendNodeAdditiveDL -n "model:FKShoulder2_R_translateX_AnimLayer1";
	rename -uid "A52923B4-4CA7-50E0-7E90-CDA352BD34AD";
createNode animBlendNodeAdditiveDL -n "model:FKShoulder2_R_translateY_AnimLayer1";
	rename -uid "3DDCF315-41C7-F0A2-93F1-BDBA5FC9340A";
createNode animBlendNodeAdditiveDL -n "model:FKShoulder2_R_translateZ_AnimLayer1";
	rename -uid "8FCF75C0-4DF8-77D0-EADC-8FA4A46B9376";
createNode animBlendNodeAdditiveRotation -n "model:FKShoulder2_R_rotate_AnimLayer1";
	rename -uid "9BDDE2A3-40E7-903F-621C-2893D9338265";
	setAttr ".o" -type "double3" 0 0 83.049032263167575 ;
createNode animBlendNodeAdditiveScale -n "model:FKShoulder2_R_scaleX_AnimLayer1";
	rename -uid "89A7DEDD-437B-98F6-A997-83B64944F093";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "model:FKShoulder2_R_scaleY_AnimLayer1";
	rename -uid "737896AF-4CCF-AB5A-5A3D-179F20AA4498";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "model:FKShoulder2_R_scaleZ_AnimLayer1";
	rename -uid "97B859D8-4D14-7A2E-6E08-3496FA64985C";
	setAttr ".o" 1;
createNode animCurveTA -n "FKShoulder2_R_rotate_AnimLayer1_inputBX";
	rename -uid "849393A1-4E7F-ED00-4C66-518DE2DFA960";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 114 3.7896802373175702 127 4.5221006285634902
		 153 0;
createNode animCurveTA -n "FKShoulder2_R_rotate_AnimLayer1_inputBY";
	rename -uid "DB32A38C-456E-C23D-F1AA-168E3050CE3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 114 0 127 0 153 0;
createNode animCurveTA -n "FKShoulder2_R_rotate_AnimLayer1_inputBZ";
	rename -uid "EFF311E8-4640-A173-DFA0-BB8A7B1ACE2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 114 0 127 0 153 0;
createNode animCurveTL -n "FKShoulder2_R_translateX_AnimLayer1_inputB";
	rename -uid "21A49A0E-4632-D721-041C-26A386FC289D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 114 0 127 0 153 0;
createNode animCurveTL -n "FKShoulder2_R_translateY_AnimLayer1_inputB";
	rename -uid "BB97A794-41A1-10D7-A1E9-1FBBE900F0DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 114 0 127 0 153 0;
createNode animCurveTL -n "FKShoulder2_R_translateZ_AnimLayer1_inputB";
	rename -uid "F3DE38A2-42DB-3019-5146-49820EB1B68C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 0 114 0 127 0 153 0;
createNode animCurveTU -n "FKShoulder2_R_scaleX_AnimLayer1_inputB";
	rename -uid "E4BC50D8-4509-FDF7-0D3F-55B82CD56DBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 1 114 1 127 1 153 1;
createNode animCurveTU -n "FKShoulder2_R_scaleY_AnimLayer1_inputB";
	rename -uid "A61B74B6-445A-0211-B60D-ACA378D3CAE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 1 114 1 127 1 153 1;
createNode animCurveTU -n "FKShoulder2_R_scaleZ_AnimLayer1_inputB";
	rename -uid "CE27C1F7-47BD-BC43-751C-1EA5B9FBFDEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  101 1 114 1 127 1 153 1;
createNode animLayer -n "AnimLayer2";
	rename -uid "22307088-451F-A110-0EAA-8995F57184B5";
	setAttr -s 9 ".dsm";
	setAttr -s 7 ".bnds";
createNode animBlendNodeAdditiveDL -n "model:FKWrist_R_translateX_AnimLayer2";
	rename -uid "32DA3311-4963-1D03-A019-60BF4C3640CB";
createNode animBlendNodeAdditiveDL -n "model:FKWrist_R_translateY_AnimLayer2";
	rename -uid "98B1426B-4D8C-7443-4B52-98A63CA6BC60";
createNode animBlendNodeAdditiveDL -n "model:FKWrist_R_translateZ_AnimLayer2";
	rename -uid "0206EF48-4F78-D8EE-3DF1-F889D0DDF810";
createNode animBlendNodeAdditiveRotation -n "model:FKWrist_R_rotate_AnimLayer2";
	rename -uid "D747FCBE-413C-7690-B0E4-E2923842D8E7";
	setAttr ".o" -type "double3" -35.414730692433189 -23.85591151152607 20.875127550376884 ;
createNode animBlendNodeAdditiveScale -n "model:FKWrist_R_scaleX_AnimLayer2";
	rename -uid "6AC06116-4C24-42D2-5910-28AD5B242502";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "model:FKWrist_R_scaleY_AnimLayer2";
	rename -uid "22D83D7A-4F7E-CBB4-C846-CEBF4F13BDBB";
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "model:FKWrist_R_scaleZ_AnimLayer2";
	rename -uid "F17AA372-4C81-41F1-2421-219AFE38C25B";
	setAttr ".o" 1;
createNode animCurveTA -n "FKWrist_R_rotate_AnimLayer2_inputBX";
	rename -uid "5480281D-40C1-FD9F-3B73-CABF36279027";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
createNode animCurveTA -n "FKWrist_R_rotate_AnimLayer2_inputBY";
	rename -uid "52ADAFC5-45F2-34C3-319D-3090306B5903";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
createNode animCurveTA -n "FKWrist_R_rotate_AnimLayer2_inputBZ";
	rename -uid "7C1681CF-47E7-618D-921F-4B9FFCE026FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
createNode animCurveTL -n "FKWrist_R_translateX_AnimLayer2_inputB";
	rename -uid "ADE66654-479A-0B5C-9408-3D8FCB7904F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
createNode animCurveTL -n "FKWrist_R_translateY_AnimLayer2_inputB";
	rename -uid "CAB0168C-420E-0721-72B1-A6811825A67E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
createNode animCurveTL -n "FKWrist_R_translateZ_AnimLayer2_inputB";
	rename -uid "78DE0842-4B57-7C3A-853E-FFA4801D6E1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 0 127 0 153 0;
createNode animCurveTU -n "FKWrist_R_scaleX_AnimLayer2_inputB";
	rename -uid "44AB3BF9-4951-44F8-0674-7497C03D9B9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 127 1 153 1;
createNode animCurveTU -n "FKWrist_R_scaleY_AnimLayer2_inputB";
	rename -uid "C83B5523-4739-444C-D0EE-3EB4F359E64A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 127 1 153 1;
createNode animCurveTU -n "FKWrist_R_scaleZ_AnimLayer2_inputB";
	rename -uid "9DF31D02-4970-8CB4-AF8B-1F88E9C44067";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  101 1 127 1 153 1;
createNode multMatrix -n "model2:RootMM_M";
	rename -uid "C47CAD74-40D3-23D1-9B1F-678E48DD5E30";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMRoot_M";
	rename -uid "37068802-404F-BDC0-0445-60A9108F7A9E";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendRoot_M";
	rename -uid "43C2B420-4B7C-6A57-7826-0FA626642C1A";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "model2:IKScaleRootMultiplyDivide_M";
	rename -uid "8DBCCD1F-407E-9F87-EF09-4EBF4F7A7D64";
createNode multiplyDivide -n "model2:MainScaleMultiplyDivide";
	rename -uid "393D7A44-4AC9-707A-A27C-4195819B399C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "model2:IKCurveInfoAllMultiplySpine_M";
	rename -uid "EFFB540E-4819-7EAE-D4F3-9A8B953A4BA3";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode multiplyDivide -n "model2:IKCurveInfoNormalizeSpine_M";
	rename -uid "55A3F088-46EA-C263-22BE-CAB02CD318E8";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 35.471424 1 1 ;
createNode multMatrix -n "model2:Spine1MM_M";
	rename -uid "A61E48ED-4B45-22B6-917F-9DBBFC57D809";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMSpine1_M";
	rename -uid "EBF054BD-45BD-D1FA-B190-0FBE940F56DC";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendSpine1_M";
	rename -uid "E6072C9A-44EC-6014-16E8-3A9DB8AAC7F6";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "model2:IKScaleSpine1MultiplyDivide_M";
	rename -uid "B578F65D-431C-E83D-FD8A-14B52ACAB52D";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "model2:IKSquashDistributNormalizerBSpine1_M";
	rename -uid "1D2ABB24-4B56-9F3E-D8D5-23B0751DEE48";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "model2:IKSquashDistributerSpine1_M";
	rename -uid "400C0CE7-4D19-6E22-C2FD-68A1AAEE2081";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "model2:IKSquashDistributNormalizerASpine1_M";
	rename -uid "E1ED409F-40C2-4733-2E95-D88888FE5256";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode blendTwoAttr -n "model2:volumeBlendSpineBlendTwo_M";
	rename -uid "4606EF4C-4891-0A8D-5B78-908E91E73E27";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 0.0031622776295989752;
createNode multiplyDivide -n "model2:multWithStretchySpine_M";
	rename -uid "B7968270-4B6E-773D-3923-799A7FB2908D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "model2:volumepowSpine_M";
	rename -uid "6AF6E8A2-4E3B-9683-DF2D-2CBC7759B945";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "model2:volume1OverSpine_M";
	rename -uid "37B71CAC-417D-ED8E-C76A-67BBCC9E9C0A";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multMatrix -n "model2:Spine2MM_M";
	rename -uid "2B3370CF-4CE3-48D9-E32D-7DB328EBF9B8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMSpine2_M";
	rename -uid "7DE2568B-49C9-8E86-9FBE-EFA4B205EC02";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendSpine2_M";
	rename -uid "AC7A3E81-4450-7F98-5ACC-92BCF0617751";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "model2:IKScaleSpine2MultiplyDivide_M";
	rename -uid "8B3EC1AC-4061-1DE9-19F5-94A8CEC36F25";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "model2:IKSquashDistributNormalizerBSpine2_M";
	rename -uid "37D2D755-4828-919E-FA52-E68EE75F0066";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "model2:IKSquashDistributerSpine2_M";
	rename -uid "06CCD4B7-4A07-EAD5-06CD-83BCAF147697";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "model2:IKSquashDistributNormalizerASpine2_M";
	rename -uid "279C0BAC-4D8A-0BC5-48BC-B3812FA7DB5F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode multMatrix -n "model2:ChestMM_M";
	rename -uid "C2A67BBC-4E89-7BF6-405F-969A1D9C656B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMChest_M";
	rename -uid "BF6511B1-46F5-BD8E-023E-C696402CB6A5";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendChest_M";
	rename -uid "96004735-41D3-AD55-9F66-E8BE4F36E914";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "model2:IKScaleChestMultiplyDivide_M";
	rename -uid "1D863900-48F3-72B3-1BB1-97B9BD655E7F";
createNode multMatrix -n "model2:NeckMM_M";
	rename -uid "3CD38CA5-4909-007C-23C4-CEB5EDBB75BA";
createNode multMatrix -n "model2:HeadMM_M";
	rename -uid "C64959E3-459D-D84B-916E-CBA2D85B16AC";
createNode multMatrix -n "model2:JawMM_M";
	rename -uid "0D1289AF-4953-BFF5-EE4E-7AA43CDE7448";
createNode multMatrix -n "model2:ScapulaMM_R";
	rename -uid "BCA821D5-46AA-B25C-6F7A-159D4163AB05";
createNode animLayer -n "pasted__AnimLayer1";
	rename -uid "519E8273-4D3F-48A1-BF72-41B8CDAEB7EA";
createNode animLayer -n "pasted__BaseAnimation";
	rename -uid "AC7570D2-4BD4-3B48-ECFD-34A93AC26F9F";
	setAttr -s 2 ".cdly";
	setAttr -s 2 ".chsl";
	setAttr ".ovrd" yes;
createNode animLayer -n "pasted__AnimLayer2";
	rename -uid "0A1365AC-4802-E791-4777-D38B16B7B071";
createNode multMatrix -n "model2:ShoulderMM_R";
	rename -uid "6FEC510D-4C2D-E265-F9DD-90BD6009CE8B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMShoulder_R";
	rename -uid "0F494381-40F5-4C87-FA40-ACB8E893E279";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendShoulder_R";
	rename -uid "62E5D90D-4BD5-D878-C9F8-20A8C4213392";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendTwoAttr -n "model2:volumeBlendArmBlendTwo_R";
	rename -uid "538FD270-4262-9990-E9D5-5FACCD0D429A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "model2:multWithStretchyArm_R";
	rename -uid "8EF58168-4A96-DE85-1C12-8BA428165498";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "model2:IKmessureDivArm_R";
	rename -uid "6311F9CB-4D92-2CEF-B278-CF855715B96B";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 66.601448 1 1 ;
createNode blendTwoAttr -n "model2:IKmessureBlendStretchArm_R";
	rename -uid "EE80EEFB-43CC-D5F7-6BC7-19A39AB22C77";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeStretchArm_R";
	rename -uid "99114B6D-463A-5E7B-C7FB-B69414D1E3A7";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode clamp -n "model2:IKdistanceClampArm_R";
	rename -uid "F041DE18-4BE4-68B1-4B72-59B51A2FAE1F";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 66.601448 0 0 ;
createNode blendTwoAttr -n "model2:IKmessureBlendAntiPopArm_R";
	rename -uid "A1837C64-48D9-98B1-3ABC-999CCD6BA585";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeAntiPopArm_R";
	rename -uid "2F49D338-40C3-661D-02C0-B99324E4BB58";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode animCurveUU -n "model2:IKdistanceArm_RShape_normal";
	rename -uid "390BA81D-4050-B7E6-F69B-93AC5B91CEC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  66.601448059082031 66.601448829830844 79.921737670898438 
		79.921738595797009;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode distanceBetween -n "model2:IKdistanceArm_RShape";
	rename -uid "CDF69E05-4B7F-4C13-746E-C38AA0DCC3A0";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr ".ihi" 0;
	setAttr ".im1" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".im2" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode animCurveUU -n "model2:IKdistanceArm_RShape_antiPop";
	rename -uid "5758883A-4573-15E4-975A-89953C2ED7B1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6.6601448059082031 66.601448829830844 46.621013641357422 
		66.601448829830844 56.611232757568359 59.941303946847761 66.601448059082031 66.601448829830844 
		79.921737670898438 79.921738595797009;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode multiplyDivide -n "model2:volumepowArm_R";
	rename -uid "02CE442F-4A5D-0909-8401-6D858CE5CE48";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "model2:volume1OverArm_R";
	rename -uid "2BA47195-48F1-94E0-BD3C-CF9C6E5CA14B";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode plusMinusAverage -n "model2:fatnessIKXShoulder_R";
	rename -uid "96A43A98-45CB-4BEB-CB41-9781F8C4E5A7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:ShoulderArmorMM_R";
	rename -uid "CA46B34D-455D-CE72-985E-C8ACD8DB36B3";
createNode multMatrix -n "model2:ElbowMM_R";
	rename -uid "180C642F-470A-6E5F-05B4-218D92DAF2B6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMElbow_R";
	rename -uid "9B040AEB-4236-3F52-2BAD-BC96C4E6C461";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendElbow_R";
	rename -uid "D6C4D23D-4A87-44CB-4286-73AAE573A771";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "model2:fatnessIKXElbow_R";
	rename -uid "4F3DAD77-40B7-B926-79C6-418910AA845A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode animCurveTU -n "pasted__Shoulder2_R_scaleX";
	rename -uid "8CB16BC6-4637-0C94-2E2E-9B976BA1DEB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
createNode animCurveTU -n "pasted__Shoulder2_R_scaleY";
	rename -uid "A3A67290-4705-4501-0253-309F19BEA644";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
createNode animCurveTU -n "pasted__Shoulder2_R_scaleZ";
	rename -uid "C061E9C7-4FA2-3DFC-D712-1F81920DA05C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
createNode animCurveTL -n "pasted__Shoulder2_R_translateX";
	rename -uid "3B29B43A-4AB8-240E-49BD-2AAE23780FBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTL -n "pasted__Shoulder2_R_translateY";
	rename -uid "2C42B252-4F3D-1216-4F42-4B9520E1838B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTL -n "pasted__Shoulder2_R_translateZ";
	rename -uid "A2D7A704-4D44-AC79-5F10-48BB7CEA6645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTU -n "pasted__Shoulder2_R_visibility";
	rename -uid "9B825615-4E3A-0580-99FC-A1BBA0C0A769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pasted__Shoulder2_R_rotateX";
	rename -uid "691C68C9-4BD3-A7BA-4FAB-45B12CBC99B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTA -n "pasted__Shoulder2_R_rotateY";
	rename -uid "AD0917ED-47E7-E3FB-BA12-5CA6AC2EEC68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode animCurveTA -n "pasted__Shoulder2_R_rotateZ";
	rename -uid "536AFBAA-45AA-C190-8F78-FEB8980D7112";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  153 0;
createNode multMatrix -n "model2:WristMM_R";
	rename -uid "D67E76AD-480F-4FC0-015B-7DBE1771C8DE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMWrist_R";
	rename -uid "EED48F26-4EF5-EACB-C751-D5A5BDCFE910";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendWrist_R";
	rename -uid "9E954509-4D16-9016-F4AE-A2AF65965B3F";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multMatrix -n "model2:IndexFinger0MM_R";
	rename -uid "7639A2A2-430B-3776-710B-1A91C2EE5F79";
createNode animCurveUA -n "model2:SDKFKIndexFinger1_R_rotateZ";
	rename -uid "A269795E-49AF-6D6C-943B-AE9C347EB5FF";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 -20 0 0 10 40;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger1_L_rotateZ";
	rename -uid "3D22BF30-49D5-C8CD-99B2-169DD500EBDB";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 -20 0 0 10 40;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger1_L_rotateZ";
	rename -uid "8F5418DB-4E9F-290B-76BB-87BAD47C11F4";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 14.999999999999998 0 0 10 -29.999999999999996;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger1_L_rotateZ";
	rename -uid "CCF1694B-44DD-8BF5-59D8-0EA42194B81F";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 29.999999999999996 0 0 10 -59.999999999999993;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger2_L_rotateY";
	rename -uid "8EAC520A-473B-9CC3-D067-4BBA7722AEA6";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger1_L_rotateY";
	rename -uid "A1F06094-4979-F44D-2BF7-51B06584B547";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger3_L_rotateY";
	rename -uid "BEB668D1-42CC-6D41-04C3-BCA49238A68F";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKMiddleFinger3_L_rotateY";
	rename -uid "E36BDED9-44B5-8AB7-34DC-1F9885DE84D8";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKMiddleFinger2_L_rotateY";
	rename -uid "58542325-417F-84DD-99C3-9985A9B9C266";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKMiddleFinger1_L_rotateY";
	rename -uid "8B842D3F-43C3-721B-8571-4DB1251A90A4";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger2_L_rotateY";
	rename -uid "E3D6808B-409E-02A8-B05F-A28CA4AC95D5";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger3_L_rotateY";
	rename -uid "D55D9201-4B5B-43B6-5E67-CF9B66DE41DD";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger1_L_rotateY";
	rename -uid "DCA80518-4A69-6DDB-D6AD-97BB63E9DE7C";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger1_L_rotateY";
	rename -uid "C9AF2601-420D-B310-C009-B8B9C9DC7AC0";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger3_L_rotateY";
	rename -uid "2288C5E9-4542-817A-BF4B-5899FDA39D7F";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger2_L_rotateY";
	rename -uid "59654CF1-4B94-95BE-5443-5982E8EFACAC";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKThumbFinger2_L_rotateY";
	rename -uid "278FDDFD-496A-D7F8-1774-30BF87323503";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKThumbFinger3_L_rotateY";
	rename -uid "9F1B616D-4F58-5F60-7AF3-238BAB8DCCB1";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger1_R_rotateZ";
	rename -uid "8A46E4B2-4DB1-3B4E-8630-F2A8C1784407";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 14.999999999999998 0 0 10 -29.999999999999996;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger1_R_rotateZ";
	rename -uid "B3F43AFE-45EC-2481-3754-20B26F362E49";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "spread" -ln "spread" -smn -5 -smx 10 -at "float";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -5 29.999999999999996 0 0 10 -59.999999999999993;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger3_R_rotateY";
	rename -uid "B2F0D6D1-4694-8C96-503C-5A9E082E58BE";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger1_R_rotateY";
	rename -uid "45925C26-407C-E28D-C5C5-F983055C2C11";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKIndexFinger2_R_rotateY";
	rename -uid "B08B89DC-48A4-5869-5440-4B8D7D3690AF";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "indexCurl" -ln "indexCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKMiddleFinger1_R_rotateY";
	rename -uid "8693A1B2-4F39-F658-E6E3-D7BD20BCA5FE";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKMiddleFinger3_R_rotateY";
	rename -uid "AD9F8A66-4CF0-E5EA-974B-ED9FBF5B1F21";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKMiddleFinger2_R_rotateY";
	rename -uid "907727E8-4ADB-75A8-6E53-D1AFEC61D9D7";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "middleCurl" -ln "middleCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger1_R_rotateY";
	rename -uid "33834540-4FC9-991A-B9F6-4788150D5D1A";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger2_R_rotateY";
	rename -uid "F124F493-47F0-430A-E592-E696E72EF427";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKRingFinger3_R_rotateY";
	rename -uid "7283FCD1-45D9-390E-7C80-47B77E3A97E3";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "ringCurl" -ln "ringCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger2_R_rotateY";
	rename -uid "929502C2-47CB-BBAC-15B9-9F8710FDCCCA";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger1_R_rotateY";
	rename -uid "EE1782A8-4095-58A9-D05C-029CA761BCE5";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKPinkyFinger3_R_rotateY";
	rename -uid "A4FF6CE8-470E-DD3F-168E-B0B146F52144";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "pinkyCurl" -ln "pinkyCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKThumbFinger3_R_rotateY";
	rename -uid "F4F56D2D-4CED-9EFB-CD16-97A30B06443A";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode animCurveUA -n "model2:SDKFKThumbFinger2_R_rotateY";
	rename -uid "88A3DC8A-41E7-EFC6-80D2-578A9EFA7EC6";
	addAttr -s false -ci true -sn "drivingSystemOut" -ln "drivingSystemOut" -at "message";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -smn -2 -smx 10 -at "float";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -2 -18 0 0 10 90;
	setAttr -s 3 ".kix[0:2]"  0 0 0;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 0 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
	setAttr ".pre" 4;
	setAttr ".pst" 4;
createNode multiplyDivide -n "model2:RootFat";
	rename -uid "EA8A8007-4CDA-222E-43A2-4C887F90BAAD";
createNode multiplyDivide -n "model2:Spine1Fat";
	rename -uid "915825D2-4749-DF73-8A4D-EFB2EA3A59A8";
createNode multiplyDivide -n "model2:Spine2Fat";
	rename -uid "B49945E7-4DF3-08F1-3478-9891E68E119E";
createNode multiplyDivide -n "model2:ChestFat";
	rename -uid "D9FC7A7C-4FE4-7B9D-BF3E-66953DA2B6F0";
createNode multiplyDivide -n "model2:NeckFat";
	rename -uid "FA99DBFF-4371-27D2-F206-389A05E6A21B";
createNode multiplyDivide -n "model2:HeadFat";
	rename -uid "7FCDC7D4-41C5-3226-75D3-478DA6718F4C";
createNode multiplyDivide -n "model2:HeadEndFat";
	rename -uid "D27BB4CD-49B0-D6CE-108C-D6AEC2F743E7";
createNode multiplyDivide -n "model2:JawFat";
	rename -uid "C7AB6959-4B6F-956A-1707-448D6405F695";
createNode multiplyDivide -n "model2:JawEndFat";
	rename -uid "E985E3F1-4F46-66F9-F081-3D863B47F8AD";
createNode multiplyDivide -n "model2:ScapulaFat";
	rename -uid "0EF4C584-485D-2C81-5C62-42B94FBF77CA";
createNode multiplyDivide -n "model2:ShoulderFat";
	rename -uid "A8462D00-409C-086F-06E2-0CAA71D3575C";
createNode multiplyDivide -n "model2:ShoulderArmorFat";
	rename -uid "E5162B6B-4BAF-8486-2C5E-6594053C21B7";
createNode multiplyDivide -n "model2:ElbowFat";
	rename -uid "131AC647-4189-E65B-955F-089C9F9F60EE";
createNode multiplyDivide -n "model2:WristFat";
	rename -uid "90E72F4C-4BBF-3C88-E68A-D2B59A33DCE4";
createNode multiplyDivide -n "model2:IndexFinger0Fat";
	rename -uid "D6957F52-4581-4313-12BB-03AD33ED7BFE";
createNode multiplyDivide -n "model2:IndexFinger1Fat";
	rename -uid "FBB4D083-48A0-9221-23FC-9199A061E512";
createNode multiplyDivide -n "model2:IndexFinger2Fat";
	rename -uid "5AAE4678-443D-5773-7BE7-E59DE4CFB467";
createNode multiplyDivide -n "model2:IndexFinger3Fat";
	rename -uid "523E19F3-4DA1-BD1C-0DDA-6FAAB1072FF2";
createNode multiplyDivide -n "model2:IndexFinger4Fat";
	rename -uid "947D4E1B-4655-7BE5-A114-A2A227464B07";
createNode multiplyDivide -n "model2:MiddleFinger0Fat";
	rename -uid "07E71111-4863-2630-C500-0DB637624D9A";
createNode multiplyDivide -n "model2:MiddleFinger1Fat";
	rename -uid "DC62A936-448B-5740-1295-5DBD7A50FA43";
createNode multiplyDivide -n "model2:MiddleFinger2Fat";
	rename -uid "14E84325-48C3-9560-717F-C78E1A1AC964";
createNode multiplyDivide -n "model2:MiddleFinger3Fat";
	rename -uid "9D3204A4-4920-B914-DD89-76AB5F7E0CE9";
createNode multiplyDivide -n "model2:MiddleFinger4Fat";
	rename -uid "7CB16F6B-4D0D-A80F-1ECB-1380EA4DECE4";
createNode multiplyDivide -n "model2:RingFinger0Fat";
	rename -uid "5512FA5B-4CDD-A8AF-0DD2-E1AEF7B6D353";
createNode multiplyDivide -n "model2:RingFinger1Fat";
	rename -uid "F02A5D39-45EE-A458-AC00-D5AE3841AF67";
createNode multiplyDivide -n "model2:RingFinger2Fat";
	rename -uid "00083DA6-465F-AF6C-5036-A0A2AF0C9FDF";
createNode multiplyDivide -n "model2:RingFinger3Fat";
	rename -uid "CDD4A606-4115-0F7C-57D1-72A1A34BCAAA";
createNode multiplyDivide -n "model2:RingFinger4Fat";
	rename -uid "A9ECB6E5-47C5-2A55-C726-45846FD71D1B";
createNode multiplyDivide -n "model2:PinkyFinger0Fat";
	rename -uid "8E24E6CA-47BA-AF1A-D87B-BFA990A7DC97";
createNode multiplyDivide -n "model2:PinkyFinger1Fat";
	rename -uid "C98439AF-42F7-9699-D9FF-C98EC3412816";
createNode multiplyDivide -n "model2:PinkyFinger2Fat";
	rename -uid "F9B897B2-4B09-955D-9FC4-FBB87F7351E9";
createNode multiplyDivide -n "model2:PinkyFinger3Fat";
	rename -uid "2712C7B2-4AFD-B28B-8C56-AB839ABC65A4";
createNode multiplyDivide -n "model2:PinkyFinger4Fat";
	rename -uid "5AEBA0E9-4B25-39DC-1A14-E98E8472CFE4";
createNode multiplyDivide -n "model2:ThumbFinger1Fat";
	rename -uid "01AC4D66-46B0-6DCE-29AA-9699940DEED6";
createNode multiplyDivide -n "model2:ThumbFinger2Fat";
	rename -uid "DE73F027-4642-748D-91D6-36B5E8D5F814";
createNode multiplyDivide -n "model2:ThumbFinger3Fat";
	rename -uid "0ADB87D1-4688-0871-3074-A6A76B57DF76";
createNode multiplyDivide -n "model2:ThumbFinger4Fat";
	rename -uid "73F58EA5-4108-B36A-B705-7C9DCBD4458D";
createNode multiplyDivide -n "model2:SkirtJntTopFat";
	rename -uid "C50FC459-4F62-B04D-2FE5-BC9F356D73D6";
createNode multiplyDivide -n "model2:SkirtJntMid1Fat";
	rename -uid "70EE15FA-49AE-39A7-F187-53991D683B3C";
createNode multiplyDivide -n "model2:SkirtJntMid2Fat";
	rename -uid "B8BBA21E-4E43-40C0-3FF8-A285B58ABAD5";
createNode multiplyDivide -n "model2:SkirtJntMid3Fat";
	rename -uid "0E63A313-4043-E74C-3B92-589096972F13";
createNode multiplyDivide -n "model2:SkirtJntMid4Fat";
	rename -uid "5668E6EA-4F33-72CE-8D4C-BCA992CB1F32";
createNode multiplyDivide -n "model2:SkirtJntEndFat";
	rename -uid "CBFD7EC6-4181-5BB3-5E26-479227BA713B";
createNode multiplyDivide -n "model2:HipFat";
	rename -uid "EF709B7E-4DEC-3C35-A337-CBB1F021C6FA";
createNode multiplyDivide -n "model2:KneeFat";
	rename -uid "15E2F8CD-49CE-43C3-10A5-D59260FA37BE";
createNode multiplyDivide -n "model2:AnkleFat";
	rename -uid "B7EBF33F-4706-A18B-51DE-EF97CE921DFD";
createNode multiplyDivide -n "model2:HeelFat";
	rename -uid "42780602-4DC3-1699-BAA5-F88D452F9B03";
createNode multiplyDivide -n "model2:ToesFat";
	rename -uid "4C476401-42C4-2583-E271-A5A0896DD657";
createNode multiplyDivide -n "model2:FootSideInnerFat";
	rename -uid "49A5C850-4299-9866-72C8-A1A58E40DDF3";
createNode multiplyDivide -n "model2:FootSideOuterFat";
	rename -uid "31485BB8-44AD-43BA-CE71-CCB77CBF8409";
createNode multiplyDivide -n "model2:ToesEndFat";
	rename -uid "B059D8A1-446C-92D9-1039-199F33EF771F";
createNode multMatrix -n "model2:IndexFinger1MM_R";
	rename -uid "5BA20617-44DE-0951-F046-279E377DE406";
createNode multMatrix -n "model2:IndexFinger2MM_R";
	rename -uid "CBC90859-42C6-351C-C898-939E650473FD";
createNode multMatrix -n "model2:IndexFinger3MM_R";
	rename -uid "22CD7225-4E01-EFC5-B837-379BBFE86084";
createNode multMatrix -n "model2:MiddleFinger0MM_R";
	rename -uid "50BC854E-45F4-1249-DEC6-9B97DF866233";
createNode multMatrix -n "model2:MiddleFinger1MM_R";
	rename -uid "F955713E-4560-E217-6B37-059B6B45F601";
createNode multMatrix -n "model2:MiddleFinger2MM_R";
	rename -uid "26874DE1-479F-C6FD-FA74-3F9D4EEABE6C";
createNode multMatrix -n "model2:MiddleFinger3MM_R";
	rename -uid "A1079AB2-4831-4FA9-A271-FE823A6AEBA6";
createNode multMatrix -n "model2:RingFinger0MM_R";
	rename -uid "0E9954A3-4429-B398-50EA-00A54C830311";
createNode multMatrix -n "model2:RingFinger1MM_R";
	rename -uid "EB5A57E2-4E80-1524-5472-FC8238EF9DFF";
createNode multMatrix -n "model2:RingFinger2MM_R";
	rename -uid "536C11E5-4ACD-3415-94EE-25948DC5226D";
createNode multMatrix -n "model2:RingFinger3MM_R";
	rename -uid "96AA3F49-471F-F0F9-F069-1AA82C3F27ED";
createNode multMatrix -n "model2:PinkyFinger0MM_R";
	rename -uid "3AE9276F-4B99-1EE7-B82F-D88E00D2462C";
createNode multMatrix -n "model2:PinkyFinger1MM_R";
	rename -uid "AA31615F-4DA2-21C9-8453-56B548EB5728";
createNode multMatrix -n "model2:PinkyFinger2MM_R";
	rename -uid "190D866A-48A9-34A9-6F86-3191F153A87A";
createNode multMatrix -n "model2:PinkyFinger3MM_R";
	rename -uid "CE59B986-40DC-57FE-9FE4-CF827015D0BC";
createNode multMatrix -n "model2:ThumbFinger1MM_R";
	rename -uid "2DD7808A-4D58-9656-C3C1-A89637642377";
createNode multMatrix -n "model2:ThumbFinger2MM_R";
	rename -uid "C46F3241-4452-0BF7-684C-98A4F4CB1649";
createNode multMatrix -n "model2:ThumbFinger3MM_R";
	rename -uid "7581AF8D-4D97-7131-A5D8-7DA638A60BFB";
createNode blendMatrix -n "model2:ElbowPartialBM_R";
	rename -uid "222280A3-4D38-20F5-B9E6-0C8A3E7EB63B";
	setAttr ".imat" -type "matrix" 0.99376975686395785 0.1113903488412171 -0.0037229729493508555 0
		 -0.11139112081374331 0.9937766440221153 0 0 0.0036998035633910077 0.00041470612958743912 0.99999306971219393 0
		 30.846370690009159 -0.52779418487483554 0.54314657075269679 1;
createNode multDoubleLinear -n "model2:ElbowPartial_RFollowMDL_R";
	rename -uid "BEC0B43E-447E-8395-0C59-40BEB5FF4464";
	setAttr ".i2" 0.1;
createNode multMatrix -n "model2:ScapulaMM_L";
	rename -uid "67B93C45-49E0-793D-1A48-92B0EFF51D73";
createNode multMatrix -n "model2:ShoulderMM_L";
	rename -uid "EEFB7EF1-4B2E-3300-F58F-7397E68E7B7C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMShoulder_L";
	rename -uid "D3DC99C9-46A0-D644-14DB-1687EA356625";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendShoulder_L";
	rename -uid "CEFEBB83-47C2-5A6D-2CA5-BFB754273379";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendTwoAttr -n "model2:volumeBlendArmBlendTwo_L";
	rename -uid "E00C998F-476C-381C-1FA0-D88D407B2CEA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "model2:multWithStretchyArm_L";
	rename -uid "53C7FAAF-4663-38F0-1CF8-8AB96DB102D2";
	setAttr ".ihi" 0;
createNode decomposeMatrix -n "model3:FKOffsetRootDM_M";
	rename -uid "1EE4B9D6-44E9-8B7D-EB9D-2196883E7CC4";
	setAttr ".ihi" 0;
createNode multMatrix -n "model3:FKOffsetRootMM_M";
	rename -uid "B2C26441-4D6B-7A9F-48EB-4FA425F77270";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i";
	setAttr ".i[0]" -type "matrix" 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 1;
createNode multiplyDivide -n "model3:MainScaleMultiplyDivide";
	rename -uid "F958662C-4F56-4A1F-C0B2-3FB9A14BE6EC";
	setAttr ".ihi" 0;
createNode displayLayer -n "pasted__bat_ctrl";
	rename -uid "CB48235C-4AB3-4E82-E287-23A36444C95D";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode multiplyDivide -n "model2:IKmessureDivArm_L";
	rename -uid "B9E7E883-4A29-ACB4-AFDE-8DAEBAB22A40";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 66.601448 1 1 ;
createNode blendTwoAttr -n "model2:IKmessureBlendStretchArm_L";
	rename -uid "DF4DD7EE-497C-AF30-27A8-B2BC9E8F83F5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeStretchArm_L";
	rename -uid "4C19116A-4946-F9E7-9D97-25B5F8177CD3";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode clamp -n "model2:IKdistanceClampArm_L";
	rename -uid "601B6DCB-4C68-6FF2-B789-C98655D832AE";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 66.601448 0 0 ;
createNode blendTwoAttr -n "model2:IKmessureBlendAntiPopArm_L";
	rename -uid "44171886-4409-98EC-5C45-328B6C8CA51A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeAntiPopArm_L";
	rename -uid "757171C8-4AEA-1ADD-0BFF-678DF0659581";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode animCurveUU -n "model2:IKdistanceArm_LShape_normal";
	rename -uid "CB46A920-4F70-A221-C4C6-DCB20B55171A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  66.601448059082031 66.601448829830844 79.921737670898438 
		79.921738595797009;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode distanceBetween -n "model2:IKdistanceArm_LShape";
	rename -uid "8BD61595-4BFD-040D-8437-E78CC19CBFB7";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr ".ihi" 0;
	setAttr ".im1" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".im2" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode animCurveUU -n "model2:IKdistanceArm_LShape_antiPop";
	rename -uid "A1BBD88C-4CD9-C5B1-FA1B-D3940378A551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6.6601448059082031 66.601448829830844 46.621013641357422 
		66.601448829830844 56.611232757568359 59.941303946847761 66.601448059082031 66.601448829830844 
		79.921737670898438 79.921738595797009;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode multiplyDivide -n "model2:volumepowArm_L";
	rename -uid "83BDB656-4566-3585-294C-F498F9451C95";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "model2:volume1OverArm_L";
	rename -uid "2F190626-4EFD-6578-3D34-F18687A65F12";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode plusMinusAverage -n "model2:fatnessIKXShoulder_L";
	rename -uid "4E00CC09-4CA3-C35B-3845-A9B6D5CE6EF4";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:ShoulderArmorMM_L";
	rename -uid "1490C4BE-4C7B-E279-E418-60821D3E1FAB";
createNode multMatrix -n "model2:ElbowMM_L";
	rename -uid "D5E9FE77-4A3B-8732-44E8-6E9C8DE490F2";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMElbow_L";
	rename -uid "A9B1B071-4AD2-7781-D291-4C8CF0755ADB";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendElbow_L";
	rename -uid "107907EC-4E32-BC69-AE14-69871F92C22A";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "model2:fatnessIKXElbow_L";
	rename -uid "EFF1913B-4DE7-C0B3-FF7D-77A11EB1F605";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:WristMM_L";
	rename -uid "4EDDE76B-4375-D7FC-48F8-F5BF65DBB73E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMWrist_L";
	rename -uid "ACF1B6FD-42BA-36CE-19DA-ADB0378CE70E";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendWrist_L";
	rename -uid "6CBF57B2-4487-2C1C-9198-A2BADCDE48B7";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multMatrix -n "model2:IndexFinger0MM_L";
	rename -uid "6CED6859-41E8-0EBC-5597-88B1194B0E92";
createNode multMatrix -n "model2:IndexFinger1MM_L";
	rename -uid "FE0D8A65-45C8-6C1B-BEF8-EB9EDC55F60B";
createNode multMatrix -n "model2:IndexFinger2MM_L";
	rename -uid "DD070D02-44E9-357B-E5CC-E0863BEE74CD";
createNode multMatrix -n "model2:IndexFinger3MM_L";
	rename -uid "15C28CC0-4ACF-FBD6-D2C2-FCBD0CB869C7";
createNode multMatrix -n "model2:MiddleFinger0MM_L";
	rename -uid "C2B68A6E-42AA-3428-F85C-B2AFD38290A0";
createNode multMatrix -n "model2:MiddleFinger1MM_L";
	rename -uid "33A9E80B-4F33-FF11-8B9E-B49676B32FAA";
createNode multMatrix -n "model2:MiddleFinger2MM_L";
	rename -uid "050A518D-4026-6F96-C492-84A6DACB0981";
createNode multMatrix -n "model2:MiddleFinger3MM_L";
	rename -uid "3B241196-4989-660F-8FBB-3BA9813B31A3";
createNode multMatrix -n "model2:RingFinger0MM_L";
	rename -uid "7B6F3A53-460E-5CB9-7AEA-3D890A5A8CBA";
createNode multMatrix -n "model2:RingFinger1MM_L";
	rename -uid "95E0A8BB-4616-6530-7DD6-199691BFAE90";
createNode multMatrix -n "model2:RingFinger2MM_L";
	rename -uid "F2C61A4F-4D39-208D-79C7-FEA75E1DE4AD";
createNode multMatrix -n "model2:RingFinger3MM_L";
	rename -uid "29659569-4FDC-E26C-AC22-4CBBBB217B49";
createNode multMatrix -n "model2:PinkyFinger0MM_L";
	rename -uid "69242386-4CAA-7217-DE29-8A986768331B";
createNode multMatrix -n "model2:PinkyFinger1MM_L";
	rename -uid "0692089B-44FA-8DA3-AE7C-FBBC2B5DD46F";
createNode multMatrix -n "model2:PinkyFinger2MM_L";
	rename -uid "E4883EF2-4FBC-9E1F-A4EC-92AFD0A1074E";
createNode multMatrix -n "model2:PinkyFinger3MM_L";
	rename -uid "81E94E8F-43A7-FC84-5A0F-EA887A193B33";
createNode multMatrix -n "model2:ThumbFinger1MM_L";
	rename -uid "A4092F41-4FF5-2698-01AE-ABAAA8B69C42";
createNode multMatrix -n "model2:ThumbFinger2MM_L";
	rename -uid "B7AE30F2-461D-2537-B177-E0BDC214D142";
createNode multMatrix -n "model2:ThumbFinger3MM_L";
	rename -uid "09BB8847-42E2-BA55-401C-9CA6B9C91617";
createNode blendMatrix -n "model2:ElbowPartialBM_L";
	rename -uid "3EF58760-429F-4F72-AA6A-E8ABFF771CBC";
	setAttr ".imat" -type "matrix" 0.99376975686395774 0.11139034884121725 -0.0037229729493507618 0
		 -0.11139112081374346 0.99377664402211519 -2.7105054312137611e-20 0 0.0036998035633909175 0.00041470612958742969 0.9999930697121947 0
		 -30.846370690009174 0.52779418487481422 -0.54314657075275363 1;
createNode multDoubleLinear -n "model2:ElbowPartial_LFollowMDL_L";
	rename -uid "984246EE-43EF-DC72-777A-F4A6682E1A61";
	setAttr ".i2" 0.1;
createNode multMatrix -n "model2:SkirtJntTopMM_M";
	rename -uid "046F0E29-4BFB-EC48-F20C-0284A7B41073";
createNode multMatrix -n "model2:SkirtJntMid1MM_M";
	rename -uid "F7840C0A-49AE-66B4-83D0-0DB21254617A";
createNode multMatrix -n "model2:SkirtJntMid2MM_M";
	rename -uid "36E7B845-4CB3-C95A-E7A3-3EA0F3638352";
createNode multMatrix -n "model2:SkirtJntMid3MM_M";
	rename -uid "543A1E3C-4E4B-58AE-57C9-B3A9B4325443";
createNode multMatrix -n "model2:SkirtJntMid4MM_M";
	rename -uid "F9085C32-4C48-CE8B-42A5-FAA4E01F9FFB";
createNode multMatrix -n "model2:HipMM_R";
	rename -uid "300C4A61-4A59-650A-CA23-27AB35749FFF";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMHip_R";
	rename -uid "79B53CA6-4FDD-D243-2F50-3A987DE195E4";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendHip_R";
	rename -uid "D6B41D14-4B38-643B-CCEF-39BC6C78A25A";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendTwoAttr -n "model2:volumeBlendLegBlendTwo_R";
	rename -uid "AD164E99-437F-7119-CC4D-47B0205EFBDC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "model2:multWithStretchyLeg_R";
	rename -uid "AB5C65C5-40CB-94E0-F7B8-D0AF6C1CB7D7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "model2:volumepowLeg_R";
	rename -uid "7B57E972-4325-98A5-2022-8CACF1630327";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "model2:volume1OverLeg_R";
	rename -uid "F2328907-49F2-BD06-85B7-F5A2B690FB17";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "model2:IKmessureDivLeg_R";
	rename -uid "23AAF8BC-4EF0-BB05-AC65-5B8059A67CC5";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 93.223335 1 1 ;
createNode blendTwoAttr -n "model2:IKmessureBlendStretchLeg_R";
	rename -uid "132A3F88-411F-352E-9232-CD82180AD511";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeStretchLeg_R";
	rename -uid "90752437-4A2C-CB5E-B0D6-8B849FA51832";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode clamp -n "model2:IKdistanceClampLeg_R";
	rename -uid "A0B17A09-428C-9AA7-8C1D-148517CD0B20";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 93.223335 0 0 ;
createNode blendTwoAttr -n "model2:IKmessureBlendAntiPopLeg_R";
	rename -uid "51821F09-4A81-4F8D-572C-2E8C6E48F206";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeAntiPopLeg_R";
	rename -uid "39A9B8D3-4DA7-F5D1-3E38-95A3889F3F90";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode animCurveUU -n "model2:IKdistanceLeg_RShape_normal";
	rename -uid "B4C77F7C-4F26-5CD4-5249-4ABE9AD03D83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  93.223335266113281 93.223333749757586 111.86800384521484 
		111.8680004997091;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode distanceBetween -n "model2:IKdistanceLeg_RShape";
	rename -uid "44BED42A-4022-B308-BF58-38AF629B9EFE";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr ".ihi" 0;
	setAttr ".im1" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".im2" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode animCurveUU -n "model2:IKdistanceLeg_RShape_antiPop";
	rename -uid "3AEC4D1E-4A76-5162-7CD7-339189C4BF4E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  9.3223333358764648 93.223333749757586 65.256332397460938 
		93.223333749757586 79.239830017089844 83.90100037478183 93.223335266113281 93.223333749757586 
		111.86800384521484 111.8680004997091;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode plusMinusAverage -n "model2:fatnessIKXHip_R";
	rename -uid "367CDBF7-46E7-F08B-6EF3-04ABEF7EF514";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:KneeMM_R";
	rename -uid "FB1DDBBE-4A14-9BE0-137E-A19A2AD4D393";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMKnee_R";
	rename -uid "1BFCD2AF-45AA-102F-9ED4-8084131C57D3";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendKnee_R";
	rename -uid "9CFEC6F2-42B7-8D47-1476-0D9332446C37";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "model2:fatnessIKXKnee_R";
	rename -uid "0B997D32-48B8-14DC-B714-FB998AE78E3D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:AnkleMM_R";
	rename -uid "7F3103C6-43FE-EC85-C82B-FDABD78C5D58";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMAnkle_R";
	rename -uid "0106566B-49D0-53A2-50ED-7484BDC8C523";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendAnkle_R";
	rename -uid "3621A11E-4E34-EEF2-080C-71B2A78B0F5E";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multMatrix -n "model2:ToesMM_R";
	rename -uid "4B4DF8A2-46BA-BCE2-03FC-CAA914E06C96";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMToes_R";
	rename -uid "908462BA-4199-2BF4-1496-729F651DEAEC";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendToes_R";
	rename -uid "E0575870-4E0F-3139-9237-5997824D347C";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendMatrix -n "model2:KneePartialBM_R";
	rename -uid "FE42AC49-4019-0F2C-A39C-BFB486304399";
	setAttr ".imat" -type "matrix" 0.99617850476045933 -0.087340635750007528 0 0 0.087340635750007528 0.99617850476045933 0 0
		 0 0 1.0000000000000004 0 43.99715663028924 -0.0032537999184327759 -1.2612133559741778e-13 1;
createNode multDoubleLinear -n "model2:KneePartial_RFollowMDL_R";
	rename -uid "ED36065A-437B-16A4-127D-E183C00E009E";
	setAttr ".i2" 0.1;
createNode multMatrix -n "model2:HipMM_L";
	rename -uid "5E580F5E-461B-CD35-99E2-6CAE499E51E9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMHip_L";
	rename -uid "86A43577-435A-F44A-AC94-93BB4BC69454";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendHip_L";
	rename -uid "A846BBE2-4B31-C4AB-EC93-13B586163BD6";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendTwoAttr -n "model2:volumeBlendLegBlendTwo_L";
	rename -uid "25D54221-4E8F-E77F-DEE3-13A9A8E1347E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "model2:multWithStretchyLeg_L";
	rename -uid "9CCF8313-4800-B4FA-1DFC-DCA2468016BB";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "model2:IKmessureDivLeg_L";
	rename -uid "71065E7F-42A9-5631-1919-80A3DA13A626";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 93.223335 1 1 ;
createNode blendTwoAttr -n "model2:IKmessureBlendStretchLeg_L";
	rename -uid "431514F4-4F12-963A-8B1F-1282EE5D633B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeStretchLeg_L";
	rename -uid "D26D211E-4073-640C-FCB0-5D9810DFF138";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode clamp -n "model2:IKdistanceClampLeg_L";
	rename -uid "41D6929F-4DE3-DE12-597E-1D80360A4EA1";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 93.223335 0 0 ;
createNode blendTwoAttr -n "model2:IKmessureBlendAntiPopLeg_L";
	rename -uid "78007D44-4EF5-7171-4C11-F387C26D9FFE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode setRange -n "model2:IKSetRangeAntiPopLeg_L";
	rename -uid "B9951321-48F1-12F6-9F56-0CB9F1D38994";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode animCurveUU -n "model2:IKdistanceLeg_LShape_normal";
	rename -uid "F19B74A1-49CE-E05E-B2F1-9D85F0339F19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  93.223335266113281 93.223333749757586 111.86800384521484 
		111.8680004997091;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode distanceBetween -n "model2:IKdistanceLeg_LShape";
	rename -uid "DC96D138-4CB4-2C6E-8ECB-24923E1926C7";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr ".ihi" 0;
	setAttr ".im1" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".im2" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode animCurveUU -n "model2:IKdistanceLeg_LShape_antiPop";
	rename -uid "371BFE38-4775-82B1-A88F-6FBD0ADFDC46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  9.3223333358764648 93.223333749757586 65.256332397460938 
		93.223333749757586 79.239830017089844 83.90100037478183 93.223335266113281 93.223333749757586 
		111.86800384521484 111.8680004997091;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode multiplyDivide -n "model2:volumepowLeg_L";
	rename -uid "6DFA2C8E-48B6-6FC8-C6CE-F18A330C6249";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "model2:volume1OverLeg_L";
	rename -uid "0590A14D-41F4-7E68-4AFF-0AA9CD84F3BF";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode plusMinusAverage -n "model2:fatnessIKXHip_L";
	rename -uid "F3FC6AF6-4005-BBC8-EA8C-A190D45FF8DB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:KneeMM_L";
	rename -uid "12660CF9-4BD4-3C44-4984-36BFC43C9E96";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMKnee_L";
	rename -uid "636A3401-4DE3-02C0-DB4A-6B8F7E4E1F15";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendKnee_L";
	rename -uid "74A2EEA6-4A1E-279E-8E6B-13B91D9854CF";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "model2:fatnessIKXKnee_L";
	rename -uid "FEEE66FC-45AF-A987-99EB-61B554573FAD";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode multMatrix -n "model2:AnkleMM_L";
	rename -uid "EC63D526-46C6-46AC-4C97-08BB2EACFEB3";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMAnkle_L";
	rename -uid "8D5604D1-4D6D-6667-35C1-16AA8D564B17";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendAnkle_L";
	rename -uid "C171479C-4401-4B61-0D5A-CB8111A6AAFB";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multMatrix -n "model2:ToesMM_L";
	rename -uid "32BCE415-428F-5281-7524-94BDD35FE3AD";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
createNode composeMatrix -n "model2:ScaleBlendCMToes_L";
	rename -uid "F4D4FCD0-4E19-D8B4-0A99-E3972390974B";
	setAttr ".ihi" 0;
createNode blendColors -n "model2:ScaleBlendToes_L";
	rename -uid "EE5C7275-44F4-C0F8-CCB6-02AA2BDBE2DE";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendMatrix -n "model2:KneePartialBM_L";
	rename -uid "26ACA327-4BB1-BD69-89C6-2895D941C19F";
	setAttr ".imat" -type "matrix" 0.99617850476046299 -0.08734063574996874 0 0 0.087340635749968726 0.99617850476046277 0 0
		 0 0 1 0 -43.997156630289226 0.0032537999183972488 1.0480505352461478e-13 1;
createNode multDoubleLinear -n "model2:KneePartial_LFollowMDL_L";
	rename -uid "FD980D50-4A0B-698B-41F0-CB83784AE82F";
	setAttr ".i2" 0.1;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4BBD2B1C-4F65-EB9B-B632-33AF1B05987C";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 153;
	setAttr -av -k on ".unw" 153;
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
	setAttr -av -k on ".aoon" yes;
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
	setAttr -av -k on ".msaa" yes;
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -k on ".laa";
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 45 ".st";
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
	setAttr -s 55 ".s";
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
	setAttr ".ro" yes;
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
	setAttr ".ro" yes;
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
	setAttr -av -k on ".w" 1920;
	setAttr -av -k on ".h" 1080;
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1.7769999504089355;
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
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
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
connectAttr "Main_scaleX.o" "modelRN.phl[342]";
connectAttr "Main_scaleY.o" "modelRN.phl[343]";
connectAttr "Main_scaleZ.o" "modelRN.phl[344]";
connectAttr "Main_visibility.o" "modelRN.phl[345]";
connectAttr "Main_translateX.o" "modelRN.phl[346]";
connectAttr "Main_translateY.o" "modelRN.phl[347]";
connectAttr "Main_translateZ.o" "modelRN.phl[348]";
connectAttr "Main_rotateX.o" "modelRN.phl[349]";
connectAttr "Main_rotateY.o" "modelRN.phl[350]";
connectAttr "Main_rotateZ.o" "modelRN.phl[351]";
connectAttr "FKNeck_M_scaleX.o" "modelRN.phl[352]";
connectAttr "FKNeck_M_scaleY.o" "modelRN.phl[353]";
connectAttr "FKNeck_M_scaleZ.o" "modelRN.phl[354]";
connectAttr "FKNeck_M_translateX.o" "modelRN.phl[355]";
connectAttr "FKNeck_M_translateY.o" "modelRN.phl[356]";
connectAttr "FKNeck_M_translateZ.o" "modelRN.phl[357]";
connectAttr "FKNeck_M_rotateX.o" "modelRN.phl[358]";
connectAttr "FKNeck_M_rotateY.o" "modelRN.phl[359]";
connectAttr "FKNeck_M_rotateZ.o" "modelRN.phl[360]";
connectAttr "FKHead_M_scaleX.o" "modelRN.phl[361]";
connectAttr "FKHead_M_scaleY.o" "modelRN.phl[362]";
connectAttr "FKHead_M_scaleZ.o" "modelRN.phl[363]";
connectAttr "FKHead_M_Global.o" "modelRN.phl[364]";
connectAttr "FKHead_M_translateX.o" "modelRN.phl[365]";
connectAttr "FKHead_M_translateY.o" "modelRN.phl[366]";
connectAttr "FKHead_M_translateZ.o" "modelRN.phl[367]";
connectAttr "FKHead_M_rotateX.o" "modelRN.phl[368]";
connectAttr "FKHead_M_rotateY.o" "modelRN.phl[369]";
connectAttr "FKHead_M_rotateZ.o" "modelRN.phl[370]";
connectAttr "FKJaw_M_scaleX.o" "modelRN.phl[371]";
connectAttr "FKJaw_M_scaleY.o" "modelRN.phl[372]";
connectAttr "FKJaw_M_scaleZ.o" "modelRN.phl[373]";
connectAttr "FKJaw_M_translateX.o" "modelRN.phl[374]";
connectAttr "FKJaw_M_translateY.o" "modelRN.phl[375]";
connectAttr "FKJaw_M_translateZ.o" "modelRN.phl[376]";
connectAttr "FKJaw_M_rotateX.o" "modelRN.phl[377]";
connectAttr "FKJaw_M_rotateY.o" "modelRN.phl[378]";
connectAttr "FKJaw_M_rotateZ.o" "modelRN.phl[379]";
connectAttr "FKScapula_R_scaleX.o" "modelRN.phl[380]";
connectAttr "FKScapula_R_scaleY.o" "modelRN.phl[381]";
connectAttr "FKScapula_R_scaleZ.o" "modelRN.phl[382]";
connectAttr "FKScapula_R_Global.o" "modelRN.phl[383]";
connectAttr "FKScapula_R_translateX.o" "modelRN.phl[384]";
connectAttr "FKScapula_R_translateY.o" "modelRN.phl[385]";
connectAttr "FKScapula_R_translateZ.o" "modelRN.phl[386]";
connectAttr "FKScapula_R_rotateX.o" "modelRN.phl[387]";
connectAttr "FKScapula_R_rotateY.o" "modelRN.phl[388]";
connectAttr "FKScapula_R_rotateZ.o" "modelRN.phl[389]";
connectAttr "FKShoulder_R_scaleX.o" "modelRN.phl[390]";
connectAttr "FKShoulder_R_scaleY.o" "modelRN.phl[391]";
connectAttr "FKShoulder_R_scaleZ.o" "modelRN.phl[392]";
connectAttr "FKShoulder_R_Global.o" "modelRN.phl[393]";
connectAttr "modelRN.phl[394]" "pairBlend1.irx2";
connectAttr "FKShoulder_R_rotateX.o" "modelRN.phl[395]";
connectAttr "modelRN.phl[396]" "pairBlend1.irz2";
connectAttr "FKShoulder_R_rotateZ.o" "modelRN.phl[397]";
connectAttr "FKShoulder_R_rotateY.o" "modelRN.phl[398]";
connectAttr "FKShoulder_R_translateX.o" "modelRN.phl[399]";
connectAttr "FKShoulder_R_translateY.o" "modelRN.phl[400]";
connectAttr "FKShoulder_R_translateZ.o" "modelRN.phl[401]";
connectAttr "modelRN.phl[402]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_scaleX_AnimLayer1.o" "modelRN.phl[403]";
connectAttr "modelRN.phl[404]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_scaleY_AnimLayer1.o" "modelRN.phl[405]";
connectAttr "modelRN.phl[406]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_scaleZ_AnimLayer1.o" "modelRN.phl[407]";
connectAttr "modelRN.phl[408]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_translateX_AnimLayer1.o" "modelRN.phl[409]";
connectAttr "modelRN.phl[410]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_translateY_AnimLayer1.o" "modelRN.phl[411]";
connectAttr "modelRN.phl[412]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_translateZ_AnimLayer1.o" "modelRN.phl[413]";
connectAttr "modelRN.phl[414]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_rotate_AnimLayer1.ox" "modelRN.phl[415]";
connectAttr "modelRN.phl[416]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_rotate_AnimLayer1.oy" "modelRN.phl[417]";
connectAttr "modelRN.phl[418]" "AnimLayer1.dsm" -na;
connectAttr "model:FKShoulder2_R_rotate_AnimLayer1.oz" "modelRN.phl[419]";
connectAttr "modelRN.phl[420]" "model:FKShoulder2_R_rotate_AnimLayer1.ro";
connectAttr "modelRN.phl[421]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_scaleX_AnimLayer2.o" "modelRN.phl[422]";
connectAttr "modelRN.phl[423]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_scaleY_AnimLayer2.o" "modelRN.phl[424]";
connectAttr "modelRN.phl[425]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_scaleZ_AnimLayer2.o" "modelRN.phl[426]";
connectAttr "modelRN.phl[427]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_translateX_AnimLayer2.o" "modelRN.phl[428]";
connectAttr "modelRN.phl[429]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_translateY_AnimLayer2.o" "modelRN.phl[430]";
connectAttr "modelRN.phl[431]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_translateZ_AnimLayer2.o" "modelRN.phl[432]";
connectAttr "modelRN.phl[433]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_rotate_AnimLayer2.ox" "modelRN.phl[434]";
connectAttr "modelRN.phl[435]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_rotate_AnimLayer2.oy" "modelRN.phl[436]";
connectAttr "modelRN.phl[437]" "AnimLayer2.dsm" -na;
connectAttr "model:FKWrist_R_rotate_AnimLayer2.oz" "modelRN.phl[438]";
connectAttr "modelRN.phl[439]" "model:FKWrist_R_rotate_AnimLayer2.ro";
connectAttr "FKScapula_L_scaleX.o" "modelRN.phl[440]";
connectAttr "FKScapula_L_scaleY.o" "modelRN.phl[441]";
connectAttr "FKScapula_L_scaleZ.o" "modelRN.phl[442]";
connectAttr "FKScapula_L_Global.o" "modelRN.phl[443]";
connectAttr "FKScapula_L_translateX.o" "modelRN.phl[444]";
connectAttr "FKScapula_L_translateY.o" "modelRN.phl[445]";
connectAttr "FKScapula_L_translateZ.o" "modelRN.phl[446]";
connectAttr "FKScapula_L_rotateX.o" "modelRN.phl[447]";
connectAttr "FKScapula_L_rotateY.o" "modelRN.phl[448]";
connectAttr "FKScapula_L_rotateZ.o" "modelRN.phl[449]";
connectAttr "FKShoulder_L_scaleX.o" "modelRN.phl[450]";
connectAttr "FKShoulder_L_scaleY.o" "modelRN.phl[451]";
connectAttr "FKShoulder_L_scaleZ.o" "modelRN.phl[452]";
connectAttr "modelRN.phl[453]" "pairBlend2.irx2";
connectAttr "FKShoulder_L_rotateX.o" "modelRN.phl[454]";
connectAttr "FKShoulder_L_rotateY.o" "modelRN.phl[455]";
connectAttr "modelRN.phl[456]" "pairBlend2.irz2";
connectAttr "FKShoulder_L_translateX.o" "modelRN.phl[457]";
connectAttr "FKShoulder_L_translateY.o" "modelRN.phl[458]";
connectAttr "FKShoulder_L_translateZ.o" "modelRN.phl[459]";
connectAttr "FKShoulder2_L_scaleX.o" "modelRN.phl[460]";
connectAttr "FKShoulder2_L_scaleY.o" "modelRN.phl[461]";
connectAttr "FKShoulder2_L_scaleZ.o" "modelRN.phl[462]";
connectAttr "FKShoulder2_L_translateX.o" "modelRN.phl[463]";
connectAttr "FKShoulder2_L_translateY.o" "modelRN.phl[464]";
connectAttr "FKShoulder2_L_translateZ.o" "modelRN.phl[465]";
connectAttr "FKShoulder2_L_rotateX.o" "modelRN.phl[466]";
connectAttr "FKShoulder2_L_rotateY.o" "modelRN.phl[467]";
connectAttr "FKShoulder2_L_rotateZ.o" "modelRN.phl[468]";
connectAttr "FKWrist_L_scaleX.o" "modelRN.phl[469]";
connectAttr "FKWrist_L_scaleY.o" "modelRN.phl[470]";
connectAttr "FKWrist_L_scaleZ.o" "modelRN.phl[471]";
connectAttr "FKWrist_L_translateX.o" "modelRN.phl[472]";
connectAttr "FKWrist_L_translateY.o" "modelRN.phl[473]";
connectAttr "FKWrist_L_translateZ.o" "modelRN.phl[474]";
connectAttr "FKWrist_L_rotateX.o" "modelRN.phl[475]";
connectAttr "FKWrist_L_rotateY.o" "modelRN.phl[476]";
connectAttr "FKWrist_L_rotateZ.o" "modelRN.phl[477]";
connectAttr "FKShoulderArmor_R_scaleX.o" "modelRN.phl[478]";
connectAttr "FKShoulderArmor_R_scaleY.o" "modelRN.phl[479]";
connectAttr "FKShoulderArmor_R_scaleZ.o" "modelRN.phl[480]";
connectAttr "FKShoulderArmor_R_Global.o" "modelRN.phl[481]";
connectAttr "modelRN.phl[482]" "pairBlend1.w";
connectAttr "FKShoulderArmor_R_blendFKShoulderR.o" "modelRN.phl[483]";
connectAttr "pairBlend1.orx" "modelRN.phl[484]";
connectAttr "pairBlend1.orz" "modelRN.phl[485]";
connectAttr "FKShoulderArmor_R_rotateY.o" "modelRN.phl[486]";
connectAttr "FKShoulderArmor_R_translateX.o" "modelRN.phl[487]";
connectAttr "FKShoulderArmor_R_translateY.o" "modelRN.phl[488]";
connectAttr "FKShoulderArmor_R_translateZ.o" "modelRN.phl[489]";
connectAttr "FKIndexFinger0_R_scaleX.o" "modelRN.phl[490]";
connectAttr "FKIndexFinger0_R_scaleY.o" "modelRN.phl[491]";
connectAttr "FKIndexFinger0_R_scaleZ.o" "modelRN.phl[492]";
connectAttr "FKIndexFinger0_R_translateX.o" "modelRN.phl[493]";
connectAttr "FKIndexFinger0_R_translateY.o" "modelRN.phl[494]";
connectAttr "FKIndexFinger0_R_translateZ.o" "modelRN.phl[495]";
connectAttr "FKIndexFinger0_R_rotateX.o" "modelRN.phl[496]";
connectAttr "FKIndexFinger0_R_rotateY.o" "modelRN.phl[497]";
connectAttr "FKIndexFinger0_R_rotateZ.o" "modelRN.phl[498]";
connectAttr "FKIndexFinger1_R_scaleX.o" "modelRN.phl[499]";
connectAttr "FKIndexFinger1_R_scaleY.o" "modelRN.phl[500]";
connectAttr "FKIndexFinger1_R_scaleZ.o" "modelRN.phl[501]";
connectAttr "FKIndexFinger1_R_translateX.o" "modelRN.phl[502]";
connectAttr "FKIndexFinger1_R_translateY.o" "modelRN.phl[503]";
connectAttr "FKIndexFinger1_R_translateZ.o" "modelRN.phl[504]";
connectAttr "FKIndexFinger1_R_rotateX.o" "modelRN.phl[505]";
connectAttr "FKIndexFinger1_R_rotateY.o" "modelRN.phl[506]";
connectAttr "FKIndexFinger1_R_rotateZ.o" "modelRN.phl[507]";
connectAttr "FKIndexFinger2_R_scaleX.o" "modelRN.phl[508]";
connectAttr "FKIndexFinger2_R_scaleY.o" "modelRN.phl[509]";
connectAttr "FKIndexFinger2_R_scaleZ.o" "modelRN.phl[510]";
connectAttr "FKIndexFinger2_R_translateX.o" "modelRN.phl[511]";
connectAttr "FKIndexFinger2_R_translateY.o" "modelRN.phl[512]";
connectAttr "FKIndexFinger2_R_translateZ.o" "modelRN.phl[513]";
connectAttr "FKIndexFinger2_R_rotateX.o" "modelRN.phl[514]";
connectAttr "FKIndexFinger2_R_rotateY.o" "modelRN.phl[515]";
connectAttr "FKIndexFinger2_R_rotateZ.o" "modelRN.phl[516]";
connectAttr "FKIndexFinger3_R_scaleX.o" "modelRN.phl[517]";
connectAttr "FKIndexFinger3_R_scaleY.o" "modelRN.phl[518]";
connectAttr "FKIndexFinger3_R_scaleZ.o" "modelRN.phl[519]";
connectAttr "FKIndexFinger3_R_translateX.o" "modelRN.phl[520]";
connectAttr "FKIndexFinger3_R_translateY.o" "modelRN.phl[521]";
connectAttr "FKIndexFinger3_R_translateZ.o" "modelRN.phl[522]";
connectAttr "FKIndexFinger3_R_rotateX.o" "modelRN.phl[523]";
connectAttr "FKIndexFinger3_R_rotateY.o" "modelRN.phl[524]";
connectAttr "FKIndexFinger3_R_rotateZ.o" "modelRN.phl[525]";
connectAttr "FKMiddleFinger0_R_scaleX.o" "modelRN.phl[526]";
connectAttr "FKMiddleFinger0_R_scaleY.o" "modelRN.phl[527]";
connectAttr "FKMiddleFinger0_R_scaleZ.o" "modelRN.phl[528]";
connectAttr "FKMiddleFinger0_R_translateX.o" "modelRN.phl[529]";
connectAttr "FKMiddleFinger0_R_translateY.o" "modelRN.phl[530]";
connectAttr "FKMiddleFinger0_R_translateZ.o" "modelRN.phl[531]";
connectAttr "FKMiddleFinger0_R_rotateX.o" "modelRN.phl[532]";
connectAttr "FKMiddleFinger0_R_rotateY.o" "modelRN.phl[533]";
connectAttr "FKMiddleFinger0_R_rotateZ.o" "modelRN.phl[534]";
connectAttr "FKMiddleFinger1_R_scaleX.o" "modelRN.phl[535]";
connectAttr "FKMiddleFinger1_R_scaleY.o" "modelRN.phl[536]";
connectAttr "FKMiddleFinger1_R_scaleZ.o" "modelRN.phl[537]";
connectAttr "FKMiddleFinger1_R_translateX.o" "modelRN.phl[538]";
connectAttr "FKMiddleFinger1_R_translateY.o" "modelRN.phl[539]";
connectAttr "FKMiddleFinger1_R_translateZ.o" "modelRN.phl[540]";
connectAttr "FKMiddleFinger1_R_rotateX.o" "modelRN.phl[541]";
connectAttr "FKMiddleFinger1_R_rotateY.o" "modelRN.phl[542]";
connectAttr "FKMiddleFinger1_R_rotateZ.o" "modelRN.phl[543]";
connectAttr "FKMiddleFinger2_R_scaleX.o" "modelRN.phl[544]";
connectAttr "FKMiddleFinger2_R_scaleY.o" "modelRN.phl[545]";
connectAttr "FKMiddleFinger2_R_scaleZ.o" "modelRN.phl[546]";
connectAttr "FKMiddleFinger2_R_translateX.o" "modelRN.phl[547]";
connectAttr "FKMiddleFinger2_R_translateY.o" "modelRN.phl[548]";
connectAttr "FKMiddleFinger2_R_translateZ.o" "modelRN.phl[549]";
connectAttr "FKMiddleFinger2_R_rotateX.o" "modelRN.phl[550]";
connectAttr "FKMiddleFinger2_R_rotateY.o" "modelRN.phl[551]";
connectAttr "FKMiddleFinger2_R_rotateZ.o" "modelRN.phl[552]";
connectAttr "FKMiddleFinger3_R_scaleX.o" "modelRN.phl[553]";
connectAttr "FKMiddleFinger3_R_scaleY.o" "modelRN.phl[554]";
connectAttr "FKMiddleFinger3_R_scaleZ.o" "modelRN.phl[555]";
connectAttr "FKMiddleFinger3_R_translateX.o" "modelRN.phl[556]";
connectAttr "FKMiddleFinger3_R_translateY.o" "modelRN.phl[557]";
connectAttr "FKMiddleFinger3_R_translateZ.o" "modelRN.phl[558]";
connectAttr "FKMiddleFinger3_R_rotateX.o" "modelRN.phl[559]";
connectAttr "FKMiddleFinger3_R_rotateY.o" "modelRN.phl[560]";
connectAttr "FKMiddleFinger3_R_rotateZ.o" "modelRN.phl[561]";
connectAttr "FKRingFinger0_R_scaleX.o" "modelRN.phl[562]";
connectAttr "FKRingFinger0_R_scaleY.o" "modelRN.phl[563]";
connectAttr "FKRingFinger0_R_scaleZ.o" "modelRN.phl[564]";
connectAttr "FKRingFinger0_R_translateX.o" "modelRN.phl[565]";
connectAttr "FKRingFinger0_R_translateY.o" "modelRN.phl[566]";
connectAttr "FKRingFinger0_R_translateZ.o" "modelRN.phl[567]";
connectAttr "FKRingFinger0_R_rotateX.o" "modelRN.phl[568]";
connectAttr "FKRingFinger0_R_rotateY.o" "modelRN.phl[569]";
connectAttr "FKRingFinger0_R_rotateZ.o" "modelRN.phl[570]";
connectAttr "FKRingFinger1_R_scaleX.o" "modelRN.phl[571]";
connectAttr "FKRingFinger1_R_scaleY.o" "modelRN.phl[572]";
connectAttr "FKRingFinger1_R_scaleZ.o" "modelRN.phl[573]";
connectAttr "FKRingFinger1_R_translateX.o" "modelRN.phl[574]";
connectAttr "FKRingFinger1_R_translateY.o" "modelRN.phl[575]";
connectAttr "FKRingFinger1_R_translateZ.o" "modelRN.phl[576]";
connectAttr "FKRingFinger1_R_rotateX.o" "modelRN.phl[577]";
connectAttr "FKRingFinger1_R_rotateY.o" "modelRN.phl[578]";
connectAttr "FKRingFinger1_R_rotateZ.o" "modelRN.phl[579]";
connectAttr "FKRingFinger2_R_scaleX.o" "modelRN.phl[580]";
connectAttr "FKRingFinger2_R_scaleY.o" "modelRN.phl[581]";
connectAttr "FKRingFinger2_R_scaleZ.o" "modelRN.phl[582]";
connectAttr "FKRingFinger2_R_translateX.o" "modelRN.phl[583]";
connectAttr "FKRingFinger2_R_translateY.o" "modelRN.phl[584]";
connectAttr "FKRingFinger2_R_translateZ.o" "modelRN.phl[585]";
connectAttr "FKRingFinger2_R_rotateX.o" "modelRN.phl[586]";
connectAttr "FKRingFinger2_R_rotateY.o" "modelRN.phl[587]";
connectAttr "FKRingFinger2_R_rotateZ.o" "modelRN.phl[588]";
connectAttr "FKRingFinger3_R_scaleX.o" "modelRN.phl[589]";
connectAttr "FKRingFinger3_R_scaleY.o" "modelRN.phl[590]";
connectAttr "FKRingFinger3_R_scaleZ.o" "modelRN.phl[591]";
connectAttr "FKRingFinger3_R_translateX.o" "modelRN.phl[592]";
connectAttr "FKRingFinger3_R_translateY.o" "modelRN.phl[593]";
connectAttr "FKRingFinger3_R_translateZ.o" "modelRN.phl[594]";
connectAttr "FKRingFinger3_R_rotateX.o" "modelRN.phl[595]";
connectAttr "FKRingFinger3_R_rotateY.o" "modelRN.phl[596]";
connectAttr "FKRingFinger3_R_rotateZ.o" "modelRN.phl[597]";
connectAttr "FKPinkyFinger0_R_scaleX.o" "modelRN.phl[598]";
connectAttr "FKPinkyFinger0_R_scaleY.o" "modelRN.phl[599]";
connectAttr "FKPinkyFinger0_R_scaleZ.o" "modelRN.phl[600]";
connectAttr "FKPinkyFinger0_R_translateX.o" "modelRN.phl[601]";
connectAttr "FKPinkyFinger0_R_translateY.o" "modelRN.phl[602]";
connectAttr "FKPinkyFinger0_R_translateZ.o" "modelRN.phl[603]";
connectAttr "FKPinkyFinger0_R_rotateX.o" "modelRN.phl[604]";
connectAttr "FKPinkyFinger0_R_rotateY.o" "modelRN.phl[605]";
connectAttr "FKPinkyFinger0_R_rotateZ.o" "modelRN.phl[606]";
connectAttr "FKPinkyFinger1_R_scaleX.o" "modelRN.phl[607]";
connectAttr "FKPinkyFinger1_R_scaleY.o" "modelRN.phl[608]";
connectAttr "FKPinkyFinger1_R_scaleZ.o" "modelRN.phl[609]";
connectAttr "FKPinkyFinger1_R_translateX.o" "modelRN.phl[610]";
connectAttr "FKPinkyFinger1_R_translateY.o" "modelRN.phl[611]";
connectAttr "FKPinkyFinger1_R_translateZ.o" "modelRN.phl[612]";
connectAttr "FKPinkyFinger1_R_rotateX.o" "modelRN.phl[613]";
connectAttr "FKPinkyFinger1_R_rotateY.o" "modelRN.phl[614]";
connectAttr "FKPinkyFinger1_R_rotateZ.o" "modelRN.phl[615]";
connectAttr "FKPinkyFinger2_R_scaleX.o" "modelRN.phl[616]";
connectAttr "FKPinkyFinger2_R_scaleY.o" "modelRN.phl[617]";
connectAttr "FKPinkyFinger2_R_scaleZ.o" "modelRN.phl[618]";
connectAttr "FKPinkyFinger2_R_translateX.o" "modelRN.phl[619]";
connectAttr "FKPinkyFinger2_R_translateY.o" "modelRN.phl[620]";
connectAttr "FKPinkyFinger2_R_translateZ.o" "modelRN.phl[621]";
connectAttr "FKPinkyFinger2_R_rotateX.o" "modelRN.phl[622]";
connectAttr "FKPinkyFinger2_R_rotateY.o" "modelRN.phl[623]";
connectAttr "FKPinkyFinger2_R_rotateZ.o" "modelRN.phl[624]";
connectAttr "FKPinkyFinger3_R_scaleX.o" "modelRN.phl[625]";
connectAttr "FKPinkyFinger3_R_scaleY.o" "modelRN.phl[626]";
connectAttr "FKPinkyFinger3_R_scaleZ.o" "modelRN.phl[627]";
connectAttr "FKPinkyFinger3_R_translateX.o" "modelRN.phl[628]";
connectAttr "FKPinkyFinger3_R_translateY.o" "modelRN.phl[629]";
connectAttr "FKPinkyFinger3_R_translateZ.o" "modelRN.phl[630]";
connectAttr "FKPinkyFinger3_R_rotateX.o" "modelRN.phl[631]";
connectAttr "FKPinkyFinger3_R_rotateY.o" "modelRN.phl[632]";
connectAttr "FKPinkyFinger3_R_rotateZ.o" "modelRN.phl[633]";
connectAttr "FKThumbFinger1_R_scaleX.o" "modelRN.phl[634]";
connectAttr "FKThumbFinger1_R_scaleY.o" "modelRN.phl[635]";
connectAttr "FKThumbFinger1_R_scaleZ.o" "modelRN.phl[636]";
connectAttr "FKThumbFinger1_R_translateX.o" "modelRN.phl[637]";
connectAttr "FKThumbFinger1_R_translateY.o" "modelRN.phl[638]";
connectAttr "FKThumbFinger1_R_translateZ.o" "modelRN.phl[639]";
connectAttr "FKThumbFinger1_R_rotateX.o" "modelRN.phl[640]";
connectAttr "FKThumbFinger1_R_rotateY.o" "modelRN.phl[641]";
connectAttr "FKThumbFinger1_R_rotateZ.o" "modelRN.phl[642]";
connectAttr "FKThumbFinger2_R_scaleX.o" "modelRN.phl[643]";
connectAttr "FKThumbFinger2_R_scaleY.o" "modelRN.phl[644]";
connectAttr "FKThumbFinger2_R_scaleZ.o" "modelRN.phl[645]";
connectAttr "FKThumbFinger2_R_translateX.o" "modelRN.phl[646]";
connectAttr "FKThumbFinger2_R_translateY.o" "modelRN.phl[647]";
connectAttr "FKThumbFinger2_R_translateZ.o" "modelRN.phl[648]";
connectAttr "FKThumbFinger2_R_rotateX.o" "modelRN.phl[649]";
connectAttr "FKThumbFinger2_R_rotateY.o" "modelRN.phl[650]";
connectAttr "FKThumbFinger2_R_rotateZ.o" "modelRN.phl[651]";
connectAttr "FKThumbFinger3_R_scaleX.o" "modelRN.phl[652]";
connectAttr "FKThumbFinger3_R_scaleY.o" "modelRN.phl[653]";
connectAttr "FKThumbFinger3_R_scaleZ.o" "modelRN.phl[654]";
connectAttr "FKThumbFinger3_R_translateX.o" "modelRN.phl[655]";
connectAttr "FKThumbFinger3_R_translateY.o" "modelRN.phl[656]";
connectAttr "FKThumbFinger3_R_translateZ.o" "modelRN.phl[657]";
connectAttr "FKThumbFinger3_R_rotateX.o" "modelRN.phl[658]";
connectAttr "FKThumbFinger3_R_rotateY.o" "modelRN.phl[659]";
connectAttr "FKThumbFinger3_R_rotateZ.o" "modelRN.phl[660]";
connectAttr "FKSkirtJntTop_M_scaleX.o" "modelRN.phl[661]";
connectAttr "FKSkirtJntTop_M_scaleY.o" "modelRN.phl[662]";
connectAttr "FKSkirtJntTop_M_scaleZ.o" "modelRN.phl[663]";
connectAttr "FKSkirtJntTop_M_rotateX.o" "modelRN.phl[664]";
connectAttr "FKSkirtJntTop_M_rotateY.o" "modelRN.phl[665]";
connectAttr "FKSkirtJntTop_M_rotateZ.o" "modelRN.phl[666]";
connectAttr "FKSkirtJntTop_M_translateX.o" "modelRN.phl[667]";
connectAttr "FKSkirtJntTop_M_translateY.o" "modelRN.phl[668]";
connectAttr "FKSkirtJntTop_M_translateZ.o" "modelRN.phl[669]";
connectAttr "FKSkirtJntMid1_M_scaleX.o" "modelRN.phl[670]";
connectAttr "FKSkirtJntMid1_M_scaleY.o" "modelRN.phl[671]";
connectAttr "FKSkirtJntMid1_M_scaleZ.o" "modelRN.phl[672]";
connectAttr "FKSkirtJntMid1_M_translateX.o" "modelRN.phl[673]";
connectAttr "FKSkirtJntMid1_M_translateY.o" "modelRN.phl[674]";
connectAttr "FKSkirtJntMid1_M_translateZ.o" "modelRN.phl[675]";
connectAttr "FKSkirtJntMid1_M_rotateX.o" "modelRN.phl[676]";
connectAttr "FKSkirtJntMid1_M_rotateY.o" "modelRN.phl[677]";
connectAttr "FKSkirtJntMid1_M_rotateZ.o" "modelRN.phl[678]";
connectAttr "FKSkirtJntMid2_M_scaleX.o" "modelRN.phl[679]";
connectAttr "FKSkirtJntMid2_M_scaleY.o" "modelRN.phl[680]";
connectAttr "FKSkirtJntMid2_M_scaleZ.o" "modelRN.phl[681]";
connectAttr "FKSkirtJntMid2_M_translateX.o" "modelRN.phl[682]";
connectAttr "FKSkirtJntMid2_M_translateY.o" "modelRN.phl[683]";
connectAttr "FKSkirtJntMid2_M_translateZ.o" "modelRN.phl[684]";
connectAttr "FKSkirtJntMid2_M_rotateX.o" "modelRN.phl[685]";
connectAttr "FKSkirtJntMid2_M_rotateY.o" "modelRN.phl[686]";
connectAttr "FKSkirtJntMid2_M_rotateZ.o" "modelRN.phl[687]";
connectAttr "FKSkirtJntMid3_M_scaleX.o" "modelRN.phl[688]";
connectAttr "FKSkirtJntMid3_M_scaleY.o" "modelRN.phl[689]";
connectAttr "FKSkirtJntMid3_M_scaleZ.o" "modelRN.phl[690]";
connectAttr "FKSkirtJntMid3_M_translateX.o" "modelRN.phl[691]";
connectAttr "FKSkirtJntMid3_M_translateY.o" "modelRN.phl[692]";
connectAttr "FKSkirtJntMid3_M_translateZ.o" "modelRN.phl[693]";
connectAttr "FKSkirtJntMid3_M_rotateX.o" "modelRN.phl[694]";
connectAttr "FKSkirtJntMid3_M_rotateY.o" "modelRN.phl[695]";
connectAttr "FKSkirtJntMid3_M_rotateZ.o" "modelRN.phl[696]";
connectAttr "FKSkirtJntMid4_M_scaleX.o" "modelRN.phl[697]";
connectAttr "FKSkirtJntMid4_M_scaleY.o" "modelRN.phl[698]";
connectAttr "FKSkirtJntMid4_M_scaleZ.o" "modelRN.phl[699]";
connectAttr "FKSkirtJntMid4_M_translateX.o" "modelRN.phl[700]";
connectAttr "FKSkirtJntMid4_M_translateY.o" "modelRN.phl[701]";
connectAttr "FKSkirtJntMid4_M_translateZ.o" "modelRN.phl[702]";
connectAttr "FKSkirtJntMid4_M_rotateX.o" "modelRN.phl[703]";
connectAttr "FKSkirtJntMid4_M_rotateY.o" "modelRN.phl[704]";
connectAttr "FKSkirtJntMid4_M_rotateZ.o" "modelRN.phl[705]";
connectAttr "FKRoot_M_scaleX.o" "modelRN.phl[706]";
connectAttr "FKRoot_M_scaleY.o" "modelRN.phl[707]";
connectAttr "FKRoot_M_scaleZ.o" "modelRN.phl[708]";
connectAttr "FKRoot_M_translateX.o" "modelRN.phl[709]";
connectAttr "FKRoot_M_translateY.o" "modelRN.phl[710]";
connectAttr "FKRoot_M_translateZ.o" "modelRN.phl[711]";
connectAttr "FKRoot_M_rotateX.o" "modelRN.phl[712]";
connectAttr "FKRoot_M_rotateY.o" "modelRN.phl[713]";
connectAttr "FKRoot_M_rotateZ.o" "modelRN.phl[714]";
connectAttr "FKSpine2_M_scaleX.o" "modelRN.phl[715]";
connectAttr "FKSpine2_M_scaleY.o" "modelRN.phl[716]";
connectAttr "FKSpine2_M_scaleZ.o" "modelRN.phl[717]";
connectAttr "FKSpine2_M_Global.o" "modelRN.phl[718]";
connectAttr "FKSpine2_M_translateX.o" "modelRN.phl[719]";
connectAttr "FKSpine2_M_translateY.o" "modelRN.phl[720]";
connectAttr "FKSpine2_M_translateZ.o" "modelRN.phl[721]";
connectAttr "FKSpine2_M_rotateX.o" "modelRN.phl[722]";
connectAttr "FKSpine2_M_rotateY.o" "modelRN.phl[723]";
connectAttr "FKSpine2_M_rotateZ.o" "modelRN.phl[724]";
connectAttr "FKChest_M_rotateZ.o" "modelRN.phl[725]";
connectAttr "FKChest_M_scaleX.o" "modelRN.phl[726]";
connectAttr "FKChest_M_scaleY.o" "modelRN.phl[727]";
connectAttr "FKChest_M_scaleZ.o" "modelRN.phl[728]";
connectAttr "FKChest_M_translateX.o" "modelRN.phl[729]";
connectAttr "FKChest_M_translateY.o" "modelRN.phl[730]";
connectAttr "FKChest_M_translateZ.o" "modelRN.phl[731]";
connectAttr "HipSwinger_M_rotateX.o" "modelRN.phl[732]";
connectAttr "HipSwinger_M_rotateY.o" "modelRN.phl[733]";
connectAttr "HipSwinger_M_rotateZ.o" "modelRN.phl[734]";
connectAttr "HipSwinger_M_visibility.o" "modelRN.phl[735]";
connectAttr "FKShoulderArmor_L_scaleX.o" "modelRN.phl[736]";
connectAttr "FKShoulderArmor_L_scaleY.o" "modelRN.phl[737]";
connectAttr "FKShoulderArmor_L_scaleZ.o" "modelRN.phl[738]";
connectAttr "FKShoulderArmor_L_Global.o" "modelRN.phl[739]";
connectAttr "modelRN.phl[740]" "pairBlend2.w";
connectAttr "FKShoulderArmor_L_blendFKShoulderL.o" "modelRN.phl[741]";
connectAttr "pairBlend2.orx" "modelRN.phl[742]";
connectAttr "pairBlend2.orz" "modelRN.phl[743]";
connectAttr "FKShoulderArmor_L_rotateY.o" "modelRN.phl[744]";
connectAttr "FKShoulderArmor_L_translateX.o" "modelRN.phl[745]";
connectAttr "FKShoulderArmor_L_translateY.o" "modelRN.phl[746]";
connectAttr "FKShoulderArmor_L_translateZ.o" "modelRN.phl[747]";
connectAttr "FKIndexFinger0_L_scaleX.o" "modelRN.phl[748]";
connectAttr "FKIndexFinger0_L_scaleY.o" "modelRN.phl[749]";
connectAttr "FKIndexFinger0_L_scaleZ.o" "modelRN.phl[750]";
connectAttr "FKIndexFinger0_L_translateX.o" "modelRN.phl[751]";
connectAttr "FKIndexFinger0_L_translateY.o" "modelRN.phl[752]";
connectAttr "FKIndexFinger0_L_translateZ.o" "modelRN.phl[753]";
connectAttr "FKIndexFinger0_L_rotateX.o" "modelRN.phl[754]";
connectAttr "FKIndexFinger0_L_rotateY.o" "modelRN.phl[755]";
connectAttr "FKIndexFinger0_L_rotateZ.o" "modelRN.phl[756]";
connectAttr "FKIndexFinger1_L_scaleX.o" "modelRN.phl[757]";
connectAttr "FKIndexFinger1_L_scaleY.o" "modelRN.phl[758]";
connectAttr "FKIndexFinger1_L_scaleZ.o" "modelRN.phl[759]";
connectAttr "FKIndexFinger1_L_translateX.o" "modelRN.phl[760]";
connectAttr "FKIndexFinger1_L_translateY.o" "modelRN.phl[761]";
connectAttr "FKIndexFinger1_L_translateZ.o" "modelRN.phl[762]";
connectAttr "FKIndexFinger1_L_rotateX.o" "modelRN.phl[763]";
connectAttr "FKIndexFinger1_L_rotateY.o" "modelRN.phl[764]";
connectAttr "FKIndexFinger1_L_rotateZ.o" "modelRN.phl[765]";
connectAttr "FKIndexFinger2_L_scaleX.o" "modelRN.phl[766]";
connectAttr "FKIndexFinger2_L_scaleY.o" "modelRN.phl[767]";
connectAttr "FKIndexFinger2_L_scaleZ.o" "modelRN.phl[768]";
connectAttr "FKIndexFinger2_L_translateX.o" "modelRN.phl[769]";
connectAttr "FKIndexFinger2_L_translateY.o" "modelRN.phl[770]";
connectAttr "FKIndexFinger2_L_translateZ.o" "modelRN.phl[771]";
connectAttr "FKIndexFinger2_L_rotateX.o" "modelRN.phl[772]";
connectAttr "FKIndexFinger2_L_rotateY.o" "modelRN.phl[773]";
connectAttr "FKIndexFinger2_L_rotateZ.o" "modelRN.phl[774]";
connectAttr "FKIndexFinger3_L_scaleX.o" "modelRN.phl[775]";
connectAttr "FKIndexFinger3_L_scaleY.o" "modelRN.phl[776]";
connectAttr "FKIndexFinger3_L_scaleZ.o" "modelRN.phl[777]";
connectAttr "FKIndexFinger3_L_translateX.o" "modelRN.phl[778]";
connectAttr "FKIndexFinger3_L_translateY.o" "modelRN.phl[779]";
connectAttr "FKIndexFinger3_L_translateZ.o" "modelRN.phl[780]";
connectAttr "FKIndexFinger3_L_rotateX.o" "modelRN.phl[781]";
connectAttr "FKIndexFinger3_L_rotateY.o" "modelRN.phl[782]";
connectAttr "FKIndexFinger3_L_rotateZ.o" "modelRN.phl[783]";
connectAttr "FKMiddleFinger0_L_scaleX.o" "modelRN.phl[784]";
connectAttr "FKMiddleFinger0_L_scaleY.o" "modelRN.phl[785]";
connectAttr "FKMiddleFinger0_L_scaleZ.o" "modelRN.phl[786]";
connectAttr "FKMiddleFinger0_L_translateX.o" "modelRN.phl[787]";
connectAttr "FKMiddleFinger0_L_translateY.o" "modelRN.phl[788]";
connectAttr "FKMiddleFinger0_L_translateZ.o" "modelRN.phl[789]";
connectAttr "FKMiddleFinger0_L_rotateX.o" "modelRN.phl[790]";
connectAttr "FKMiddleFinger0_L_rotateY.o" "modelRN.phl[791]";
connectAttr "FKMiddleFinger0_L_rotateZ.o" "modelRN.phl[792]";
connectAttr "FKMiddleFinger1_L_scaleX.o" "modelRN.phl[793]";
connectAttr "FKMiddleFinger1_L_scaleY.o" "modelRN.phl[794]";
connectAttr "FKMiddleFinger1_L_scaleZ.o" "modelRN.phl[795]";
connectAttr "FKMiddleFinger1_L_translateX.o" "modelRN.phl[796]";
connectAttr "FKMiddleFinger1_L_translateY.o" "modelRN.phl[797]";
connectAttr "FKMiddleFinger1_L_translateZ.o" "modelRN.phl[798]";
connectAttr "FKMiddleFinger1_L_rotateX.o" "modelRN.phl[799]";
connectAttr "FKMiddleFinger1_L_rotateY.o" "modelRN.phl[800]";
connectAttr "FKMiddleFinger1_L_rotateZ.o" "modelRN.phl[801]";
connectAttr "FKMiddleFinger2_L_scaleX.o" "modelRN.phl[802]";
connectAttr "FKMiddleFinger2_L_scaleY.o" "modelRN.phl[803]";
connectAttr "FKMiddleFinger2_L_scaleZ.o" "modelRN.phl[804]";
connectAttr "FKMiddleFinger2_L_translateX.o" "modelRN.phl[805]";
connectAttr "FKMiddleFinger2_L_translateY.o" "modelRN.phl[806]";
connectAttr "FKMiddleFinger2_L_translateZ.o" "modelRN.phl[807]";
connectAttr "FKMiddleFinger2_L_rotateX.o" "modelRN.phl[808]";
connectAttr "FKMiddleFinger2_L_rotateY.o" "modelRN.phl[809]";
connectAttr "FKMiddleFinger2_L_rotateZ.o" "modelRN.phl[810]";
connectAttr "FKMiddleFinger3_L_scaleX.o" "modelRN.phl[811]";
connectAttr "FKMiddleFinger3_L_scaleY.o" "modelRN.phl[812]";
connectAttr "FKMiddleFinger3_L_scaleZ.o" "modelRN.phl[813]";
connectAttr "FKMiddleFinger3_L_translateX.o" "modelRN.phl[814]";
connectAttr "FKMiddleFinger3_L_translateY.o" "modelRN.phl[815]";
connectAttr "FKMiddleFinger3_L_translateZ.o" "modelRN.phl[816]";
connectAttr "FKMiddleFinger3_L_rotateX.o" "modelRN.phl[817]";
connectAttr "FKMiddleFinger3_L_rotateY.o" "modelRN.phl[818]";
connectAttr "FKMiddleFinger3_L_rotateZ.o" "modelRN.phl[819]";
connectAttr "FKRingFinger0_L_scaleX.o" "modelRN.phl[820]";
connectAttr "FKRingFinger0_L_scaleY.o" "modelRN.phl[821]";
connectAttr "FKRingFinger0_L_scaleZ.o" "modelRN.phl[822]";
connectAttr "FKRingFinger0_L_translateX.o" "modelRN.phl[823]";
connectAttr "FKRingFinger0_L_translateY.o" "modelRN.phl[824]";
connectAttr "FKRingFinger0_L_translateZ.o" "modelRN.phl[825]";
connectAttr "FKRingFinger0_L_rotateX.o" "modelRN.phl[826]";
connectAttr "FKRingFinger0_L_rotateY.o" "modelRN.phl[827]";
connectAttr "FKRingFinger0_L_rotateZ.o" "modelRN.phl[828]";
connectAttr "FKRingFinger1_L_scaleX.o" "modelRN.phl[829]";
connectAttr "FKRingFinger1_L_scaleY.o" "modelRN.phl[830]";
connectAttr "FKRingFinger1_L_scaleZ.o" "modelRN.phl[831]";
connectAttr "FKRingFinger1_L_translateX.o" "modelRN.phl[832]";
connectAttr "FKRingFinger1_L_translateY.o" "modelRN.phl[833]";
connectAttr "FKRingFinger1_L_translateZ.o" "modelRN.phl[834]";
connectAttr "FKRingFinger1_L_rotateX.o" "modelRN.phl[835]";
connectAttr "FKRingFinger1_L_rotateY.o" "modelRN.phl[836]";
connectAttr "FKRingFinger1_L_rotateZ.o" "modelRN.phl[837]";
connectAttr "FKRingFinger2_L_scaleX.o" "modelRN.phl[838]";
connectAttr "FKRingFinger2_L_scaleY.o" "modelRN.phl[839]";
connectAttr "FKRingFinger2_L_scaleZ.o" "modelRN.phl[840]";
connectAttr "FKRingFinger2_L_translateX.o" "modelRN.phl[841]";
connectAttr "FKRingFinger2_L_translateY.o" "modelRN.phl[842]";
connectAttr "FKRingFinger2_L_translateZ.o" "modelRN.phl[843]";
connectAttr "FKRingFinger2_L_rotateX.o" "modelRN.phl[844]";
connectAttr "FKRingFinger2_L_rotateY.o" "modelRN.phl[845]";
connectAttr "FKRingFinger2_L_rotateZ.o" "modelRN.phl[846]";
connectAttr "FKRingFinger3_L_scaleX.o" "modelRN.phl[847]";
connectAttr "FKRingFinger3_L_scaleY.o" "modelRN.phl[848]";
connectAttr "FKRingFinger3_L_scaleZ.o" "modelRN.phl[849]";
connectAttr "FKRingFinger3_L_translateX.o" "modelRN.phl[850]";
connectAttr "FKRingFinger3_L_translateY.o" "modelRN.phl[851]";
connectAttr "FKRingFinger3_L_translateZ.o" "modelRN.phl[852]";
connectAttr "FKRingFinger3_L_rotateX.o" "modelRN.phl[853]";
connectAttr "FKRingFinger3_L_rotateY.o" "modelRN.phl[854]";
connectAttr "FKRingFinger3_L_rotateZ.o" "modelRN.phl[855]";
connectAttr "FKPinkyFinger0_L_scaleX.o" "modelRN.phl[856]";
connectAttr "FKPinkyFinger0_L_scaleY.o" "modelRN.phl[857]";
connectAttr "FKPinkyFinger0_L_scaleZ.o" "modelRN.phl[858]";
connectAttr "FKPinkyFinger0_L_translateX.o" "modelRN.phl[859]";
connectAttr "FKPinkyFinger0_L_translateY.o" "modelRN.phl[860]";
connectAttr "FKPinkyFinger0_L_translateZ.o" "modelRN.phl[861]";
connectAttr "FKPinkyFinger0_L_rotateX.o" "modelRN.phl[862]";
connectAttr "FKPinkyFinger0_L_rotateY.o" "modelRN.phl[863]";
connectAttr "FKPinkyFinger0_L_rotateZ.o" "modelRN.phl[864]";
connectAttr "FKPinkyFinger1_L_scaleX.o" "modelRN.phl[865]";
connectAttr "FKPinkyFinger1_L_scaleY.o" "modelRN.phl[866]";
connectAttr "FKPinkyFinger1_L_scaleZ.o" "modelRN.phl[867]";
connectAttr "FKPinkyFinger1_L_translateX.o" "modelRN.phl[868]";
connectAttr "FKPinkyFinger1_L_translateY.o" "modelRN.phl[869]";
connectAttr "FKPinkyFinger1_L_translateZ.o" "modelRN.phl[870]";
connectAttr "FKPinkyFinger1_L_rotateX.o" "modelRN.phl[871]";
connectAttr "FKPinkyFinger1_L_rotateY.o" "modelRN.phl[872]";
connectAttr "FKPinkyFinger1_L_rotateZ.o" "modelRN.phl[873]";
connectAttr "FKPinkyFinger2_L_scaleX.o" "modelRN.phl[874]";
connectAttr "FKPinkyFinger2_L_scaleY.o" "modelRN.phl[875]";
connectAttr "FKPinkyFinger2_L_scaleZ.o" "modelRN.phl[876]";
connectAttr "FKPinkyFinger2_L_translateX.o" "modelRN.phl[877]";
connectAttr "FKPinkyFinger2_L_translateY.o" "modelRN.phl[878]";
connectAttr "FKPinkyFinger2_L_translateZ.o" "modelRN.phl[879]";
connectAttr "FKPinkyFinger2_L_rotateX.o" "modelRN.phl[880]";
connectAttr "FKPinkyFinger2_L_rotateY.o" "modelRN.phl[881]";
connectAttr "FKPinkyFinger2_L_rotateZ.o" "modelRN.phl[882]";
connectAttr "FKPinkyFinger3_L_scaleX.o" "modelRN.phl[883]";
connectAttr "FKPinkyFinger3_L_scaleY.o" "modelRN.phl[884]";
connectAttr "FKPinkyFinger3_L_scaleZ.o" "modelRN.phl[885]";
connectAttr "FKPinkyFinger3_L_translateX.o" "modelRN.phl[886]";
connectAttr "FKPinkyFinger3_L_translateY.o" "modelRN.phl[887]";
connectAttr "FKPinkyFinger3_L_translateZ.o" "modelRN.phl[888]";
connectAttr "FKPinkyFinger3_L_rotateX.o" "modelRN.phl[889]";
connectAttr "FKPinkyFinger3_L_rotateY.o" "modelRN.phl[890]";
connectAttr "FKPinkyFinger3_L_rotateZ.o" "modelRN.phl[891]";
connectAttr "FKThumbFinger1_L_scaleX.o" "modelRN.phl[892]";
connectAttr "FKThumbFinger1_L_scaleY.o" "modelRN.phl[893]";
connectAttr "FKThumbFinger1_L_scaleZ.o" "modelRN.phl[894]";
connectAttr "FKThumbFinger1_L_translateX.o" "modelRN.phl[895]";
connectAttr "FKThumbFinger1_L_translateY.o" "modelRN.phl[896]";
connectAttr "FKThumbFinger1_L_translateZ.o" "modelRN.phl[897]";
connectAttr "FKThumbFinger1_L_rotateX.o" "modelRN.phl[898]";
connectAttr "FKThumbFinger1_L_rotateY.o" "modelRN.phl[899]";
connectAttr "FKThumbFinger1_L_rotateZ.o" "modelRN.phl[900]";
connectAttr "FKThumbFinger2_L_scaleX.o" "modelRN.phl[901]";
connectAttr "FKThumbFinger2_L_scaleY.o" "modelRN.phl[902]";
connectAttr "FKThumbFinger2_L_scaleZ.o" "modelRN.phl[903]";
connectAttr "FKThumbFinger2_L_translateX.o" "modelRN.phl[904]";
connectAttr "FKThumbFinger2_L_translateY.o" "modelRN.phl[905]";
connectAttr "FKThumbFinger2_L_translateZ.o" "modelRN.phl[906]";
connectAttr "FKThumbFinger2_L_rotateX.o" "modelRN.phl[907]";
connectAttr "FKThumbFinger2_L_rotateY.o" "modelRN.phl[908]";
connectAttr "FKThumbFinger2_L_rotateZ.o" "modelRN.phl[909]";
connectAttr "FKThumbFinger3_L_scaleX.o" "modelRN.phl[910]";
connectAttr "FKThumbFinger3_L_scaleY.o" "modelRN.phl[911]";
connectAttr "FKThumbFinger3_L_scaleZ.o" "modelRN.phl[912]";
connectAttr "FKThumbFinger3_L_translateX.o" "modelRN.phl[913]";
connectAttr "FKThumbFinger3_L_translateY.o" "modelRN.phl[914]";
connectAttr "FKThumbFinger3_L_translateZ.o" "modelRN.phl[915]";
connectAttr "FKThumbFinger3_L_rotateX.o" "modelRN.phl[916]";
connectAttr "FKThumbFinger3_L_rotateY.o" "modelRN.phl[917]";
connectAttr "FKThumbFinger3_L_rotateZ.o" "modelRN.phl[918]";
connectAttr "IKArm_R_scaleX.o" "modelRN.phl[919]";
connectAttr "IKArm_R_scaleY.o" "modelRN.phl[920]";
connectAttr "IKArm_R_scaleZ.o" "modelRN.phl[921]";
connectAttr "IKArm_R_followMain.o" "modelRN.phl[922]";
connectAttr "IKArm_R_followRoot.o" "modelRN.phl[923]";
connectAttr "IKArm_R_followChest.o" "modelRN.phl[924]";
connectAttr "IKArm_R_stretchy.o" "modelRN.phl[925]";
connectAttr "IKArm_R_antiPop.o" "modelRN.phl[926]";
connectAttr "IKArm_R_Lenght1.o" "modelRN.phl[927]";
connectAttr "IKArm_R_Lenght2.o" "modelRN.phl[928]";
connectAttr "IKArm_R_Fatness1.o" "modelRN.phl[929]";
connectAttr "IKArm_R_Fatness2.o" "modelRN.phl[930]";
connectAttr "IKArm_R_volume.o" "modelRN.phl[931]";
connectAttr "IKArm_R_translateX.o" "modelRN.phl[932]";
connectAttr "IKArm_R_translateZ.o" "modelRN.phl[933]";
connectAttr "IKArm_R_translateY.o" "modelRN.phl[934]";
connectAttr "IKArm_R_rotateY.o" "modelRN.phl[935]";
connectAttr "IKArm_R_rotateX.o" "modelRN.phl[936]";
connectAttr "IKArm_R_rotateZ.o" "modelRN.phl[937]";
connectAttr "IKLeg_R_scaleX.o" "modelRN.phl[938]";
connectAttr "IKLeg_R_scaleY.o" "modelRN.phl[939]";
connectAttr "IKLeg_R_scaleZ.o" "modelRN.phl[940]";
connectAttr "IKLeg_R_followMain.o" "modelRN.phl[941]";
connectAttr "IKLeg_R_followRoot.o" "modelRN.phl[942]";
connectAttr "IKLeg_R_swivel.o" "modelRN.phl[943]";
connectAttr "IKLeg_R_rock.o" "modelRN.phl[944]";
connectAttr "IKLeg_R_roll.o" "modelRN.phl[945]";
connectAttr "IKLeg_R_rollStartAngle.o" "modelRN.phl[946]";
connectAttr "IKLeg_R_rollEndAngle.o" "modelRN.phl[947]";
connectAttr "IKLeg_R_stretchy.o" "modelRN.phl[948]";
connectAttr "IKLeg_R_antiPop.o" "modelRN.phl[949]";
connectAttr "IKLeg_R_Lenght1.o" "modelRN.phl[950]";
connectAttr "IKLeg_R_Lenght2.o" "modelRN.phl[951]";
connectAttr "IKLeg_R_Fatness1.o" "modelRN.phl[952]";
connectAttr "IKLeg_R_Fatness2.o" "modelRN.phl[953]";
connectAttr "IKLeg_R_volume.o" "modelRN.phl[954]";
connectAttr "IKLeg_R_translateX.o" "modelRN.phl[955]";
connectAttr "IKLeg_R_translateY.o" "modelRN.phl[956]";
connectAttr "IKLeg_R_translateZ.o" "modelRN.phl[957]";
connectAttr "IKLeg_R_rotateX.o" "modelRN.phl[958]";
connectAttr "IKLeg_R_rotateY.o" "modelRN.phl[959]";
connectAttr "IKLeg_R_rotateZ.o" "modelRN.phl[960]";
connectAttr "RollHeel_R_translateX.o" "modelRN.phl[961]";
connectAttr "RollHeel_R_translateY.o" "modelRN.phl[962]";
connectAttr "RollHeel_R_translateZ.o" "modelRN.phl[963]";
connectAttr "RollHeel_R_rotateX.o" "modelRN.phl[964]";
connectAttr "RollHeel_R_rotateY.o" "modelRN.phl[965]";
connectAttr "RollHeel_R_rotateZ.o" "modelRN.phl[966]";
connectAttr "RollHeel_R_scaleX.o" "modelRN.phl[967]";
connectAttr "RollHeel_R_scaleY.o" "modelRN.phl[968]";
connectAttr "RollHeel_R_scaleZ.o" "modelRN.phl[969]";
connectAttr "RollToesEnd_R_translateX.o" "modelRN.phl[970]";
connectAttr "RollToesEnd_R_translateY.o" "modelRN.phl[971]";
connectAttr "RollToesEnd_R_translateZ.o" "modelRN.phl[972]";
connectAttr "RollToesEnd_R_rotateX.o" "modelRN.phl[973]";
connectAttr "RollToesEnd_R_rotateY.o" "modelRN.phl[974]";
connectAttr "RollToesEnd_R_rotateZ.o" "modelRN.phl[975]";
connectAttr "RollToesEnd_R_scaleX.o" "modelRN.phl[976]";
connectAttr "RollToesEnd_R_scaleY.o" "modelRN.phl[977]";
connectAttr "RollToesEnd_R_scaleZ.o" "modelRN.phl[978]";
connectAttr "RollToes_R_translateX.o" "modelRN.phl[979]";
connectAttr "RollToes_R_translateY.o" "modelRN.phl[980]";
connectAttr "RollToes_R_translateZ.o" "modelRN.phl[981]";
connectAttr "RollToes_R_rotateX.o" "modelRN.phl[982]";
connectAttr "RollToes_R_rotateY.o" "modelRN.phl[983]";
connectAttr "RollToes_R_rotateZ.o" "modelRN.phl[984]";
connectAttr "RollToes_R_scaleX.o" "modelRN.phl[985]";
connectAttr "RollToes_R_scaleY.o" "modelRN.phl[986]";
connectAttr "RollToes_R_scaleZ.o" "modelRN.phl[987]";
connectAttr "IKToes_R_translateX.o" "modelRN.phl[988]";
connectAttr "IKToes_R_translateY.o" "modelRN.phl[989]";
connectAttr "IKToes_R_translateZ.o" "modelRN.phl[990]";
connectAttr "IKToes_R_rotateX.o" "modelRN.phl[991]";
connectAttr "IKToes_R_rotateY.o" "modelRN.phl[992]";
connectAttr "IKToes_R_rotateZ.o" "modelRN.phl[993]";
connectAttr "IKToes_R_scaleX.o" "modelRN.phl[994]";
connectAttr "IKToes_R_scaleY.o" "modelRN.phl[995]";
connectAttr "IKToes_R_scaleZ.o" "modelRN.phl[996]";
connectAttr "IKArm_L_parentConstraint1.ctx" "modelRN.phl[997]";
connectAttr "IKArm_L_parentConstraint1.ctz" "modelRN.phl[998]";
connectAttr "IKArm_L_parentConstraint1.cty" "modelRN.phl[999]";
connectAttr "IKArm_L_parentConstraint1.crx" "modelRN.phl[1000]";
connectAttr "IKArm_L_parentConstraint1.cry" "modelRN.phl[1001]";
connectAttr "IKArm_L_parentConstraint1.crz" "modelRN.phl[1002]";
connectAttr "modelRN.phl[1003]" "IKArm_L_parentConstraint1.cro";
connectAttr "modelRN.phl[1004]" "IKArm_L_parentConstraint1.cpim";
connectAttr "modelRN.phl[1005]" "IKArm_L_parentConstraint1.crp";
connectAttr "modelRN.phl[1006]" "IKArm_L_parentConstraint1.crt";
connectAttr "IKLeg_L_scaleX.o" "modelRN.phl[1007]";
connectAttr "IKLeg_L_scaleY.o" "modelRN.phl[1008]";
connectAttr "IKLeg_L_scaleZ.o" "modelRN.phl[1009]";
connectAttr "IKLeg_L_followMain.o" "modelRN.phl[1010]";
connectAttr "IKLeg_L_followRoot.o" "modelRN.phl[1011]";
connectAttr "IKLeg_L_swivel.o" "modelRN.phl[1012]";
connectAttr "IKLeg_L_rock.o" "modelRN.phl[1013]";
connectAttr "IKLeg_L_roll.o" "modelRN.phl[1014]";
connectAttr "IKLeg_L_rollStartAngle.o" "modelRN.phl[1015]";
connectAttr "IKLeg_L_rollEndAngle.o" "modelRN.phl[1016]";
connectAttr "IKLeg_L_stretchy.o" "modelRN.phl[1017]";
connectAttr "IKLeg_L_antiPop.o" "modelRN.phl[1018]";
connectAttr "IKLeg_L_Lenght1.o" "modelRN.phl[1019]";
connectAttr "IKLeg_L_Lenght2.o" "modelRN.phl[1020]";
connectAttr "IKLeg_L_Fatness1.o" "modelRN.phl[1021]";
connectAttr "IKLeg_L_Fatness2.o" "modelRN.phl[1022]";
connectAttr "IKLeg_L_volume.o" "modelRN.phl[1023]";
connectAttr "IKLeg_L_translateX.o" "modelRN.phl[1024]";
connectAttr "IKLeg_L_translateY.o" "modelRN.phl[1025]";
connectAttr "IKLeg_L_translateZ.o" "modelRN.phl[1026]";
connectAttr "IKLeg_L_rotateX.o" "modelRN.phl[1027]";
connectAttr "IKLeg_L_rotateY.o" "modelRN.phl[1028]";
connectAttr "IKLeg_L_rotateZ.o" "modelRN.phl[1029]";
connectAttr "RollHeel_L_translateX.o" "modelRN.phl[1030]";
connectAttr "RollHeel_L_translateY.o" "modelRN.phl[1031]";
connectAttr "RollHeel_L_translateZ.o" "modelRN.phl[1032]";
connectAttr "RollHeel_L_rotateX.o" "modelRN.phl[1033]";
connectAttr "RollHeel_L_rotateY.o" "modelRN.phl[1034]";
connectAttr "RollHeel_L_rotateZ.o" "modelRN.phl[1035]";
connectAttr "RollHeel_L_scaleX.o" "modelRN.phl[1036]";
connectAttr "RollHeel_L_scaleY.o" "modelRN.phl[1037]";
connectAttr "RollHeel_L_scaleZ.o" "modelRN.phl[1038]";
connectAttr "RollToesEnd_L_translateX.o" "modelRN.phl[1039]";
connectAttr "RollToesEnd_L_translateY.o" "modelRN.phl[1040]";
connectAttr "RollToesEnd_L_translateZ.o" "modelRN.phl[1041]";
connectAttr "RollToesEnd_L_rotateX.o" "modelRN.phl[1042]";
connectAttr "RollToesEnd_L_rotateY.o" "modelRN.phl[1043]";
connectAttr "RollToesEnd_L_rotateZ.o" "modelRN.phl[1044]";
connectAttr "RollToesEnd_L_scaleX.o" "modelRN.phl[1045]";
connectAttr "RollToesEnd_L_scaleY.o" "modelRN.phl[1046]";
connectAttr "RollToesEnd_L_scaleZ.o" "modelRN.phl[1047]";
connectAttr "RollToes_L_translateX.o" "modelRN.phl[1048]";
connectAttr "RollToes_L_translateY.o" "modelRN.phl[1049]";
connectAttr "RollToes_L_translateZ.o" "modelRN.phl[1050]";
connectAttr "RollToes_L_rotateX.o" "modelRN.phl[1051]";
connectAttr "RollToes_L_rotateY.o" "modelRN.phl[1052]";
connectAttr "RollToes_L_rotateZ.o" "modelRN.phl[1053]";
connectAttr "RollToes_L_scaleX.o" "modelRN.phl[1054]";
connectAttr "RollToes_L_scaleY.o" "modelRN.phl[1055]";
connectAttr "RollToes_L_scaleZ.o" "modelRN.phl[1056]";
connectAttr "IKToes_L_translateX.o" "modelRN.phl[1057]";
connectAttr "IKToes_L_translateY.o" "modelRN.phl[1058]";
connectAttr "IKToes_L_translateZ.o" "modelRN.phl[1059]";
connectAttr "IKToes_L_rotateX.o" "modelRN.phl[1060]";
connectAttr "IKToes_L_rotateY.o" "modelRN.phl[1061]";
connectAttr "IKToes_L_rotateZ.o" "modelRN.phl[1062]";
connectAttr "IKToes_L_scaleX.o" "modelRN.phl[1063]";
connectAttr "IKToes_L_scaleY.o" "modelRN.phl[1064]";
connectAttr "IKToes_L_scaleZ.o" "modelRN.phl[1065]";
connectAttr "PoleLeg_R_translateX.o" "modelRN.phl[1066]";
connectAttr "PoleLeg_R_translateY.o" "modelRN.phl[1067]";
connectAttr "PoleLeg_R_translateZ.o" "modelRN.phl[1068]";
connectAttr "PoleLeg_R_follow.o" "modelRN.phl[1069]";
connectAttr "PoleLeg_R_lock.o" "modelRN.phl[1070]";
connectAttr "PoleArm_L_translateY.o" "modelRN.phl[1071]";
connectAttr "PoleArm_L_translateZ.o" "modelRN.phl[1072]";
connectAttr "PoleArm_L_translateX.o" "modelRN.phl[1073]";
connectAttr "PoleArm_L_follow.o" "modelRN.phl[1074]";
connectAttr "PoleArm_L_lock.o" "modelRN.phl[1075]";
connectAttr "PoleLeg_L_translateX.o" "modelRN.phl[1076]";
connectAttr "PoleLeg_L_translateY.o" "modelRN.phl[1077]";
connectAttr "PoleLeg_L_translateZ.o" "modelRN.phl[1078]";
connectAttr "PoleLeg_L_follow.o" "modelRN.phl[1079]";
connectAttr "PoleLeg_L_lock.o" "modelRN.phl[1080]";
connectAttr "FKIKArm_R_FKIKBlend.o" "modelRN.phl[1081]";
connectAttr "FKIKArm_R_IKVis.o" "modelRN.phl[1082]";
connectAttr "FKIKArm_R_FKVis.o" "modelRN.phl[1083]";
connectAttr "FKIKLeg_R_FKIKBlend.o" "modelRN.phl[1084]";
connectAttr "FKIKLeg_R_IKVis.o" "modelRN.phl[1085]";
connectAttr "FKIKLeg_R_FKVis.o" "modelRN.phl[1086]";
connectAttr "FKIKSpine_M_FKIKBlend.o" "modelRN.phl[1087]";
connectAttr "FKIKSpine_M_IKVis.o" "modelRN.phl[1088]";
connectAttr "FKIKSpine_M_FKVis.o" "modelRN.phl[1089]";
connectAttr "FKIKArm_L_FKIKBlend.o" "modelRN.phl[1090]";
connectAttr "FKIKArm_L_IKVis.o" "modelRN.phl[1091]";
connectAttr "FKIKArm_L_FKVis.o" "modelRN.phl[1092]";
connectAttr "FKIKLeg_L_FKIKBlend.o" "modelRN.phl[1093]";
connectAttr "FKIKLeg_L_IKVis.o" "modelRN.phl[1094]";
connectAttr "FKIKLeg_L_FKVis.o" "modelRN.phl[1095]";
connectAttr "RootX_M_translateX.o" "modelRN.phl[1096]";
connectAttr "RootX_M_translateY.o" "modelRN.phl[1097]";
connectAttr "RootX_M_translateZ.o" "modelRN.phl[1098]";
connectAttr "RootX_M_visibility.o" "modelRN.phl[1099]";
connectAttr "RootX_M_rotateX.o" "modelRN.phl[1100]";
connectAttr "RootX_M_rotateY.o" "modelRN.phl[1101]";
connectAttr "RootX_M_rotateZ.o" "modelRN.phl[1102]";
connectAttr "Fingers_L_spread.o" "modelRN.phl[1103]";
connectAttr "Fingers_L_indexCurl.o" "modelRN.phl[1104]";
connectAttr "Fingers_L_middleCurl.o" "modelRN.phl[1105]";
connectAttr "Fingers_L_ringCurl.o" "modelRN.phl[1106]";
connectAttr "Fingers_L_pinkyCurl.o" "modelRN.phl[1107]";
connectAttr "Fingers_L_thumbCurl.o" "modelRN.phl[1108]";
connectAttr "modelRN.phl[1109]" "Main_parentConstraint1.tg[0].tt";
connectAttr "modelRN.phl[1110]" "Main_parentConstraint1.tg[0].tr";
connectAttr "modelRN.phl[1111]" "Main_parentConstraint1.tg[0].ts";
connectAttr "Fingers_R_spread.o" "modelRN.phl[1112]";
connectAttr "Fingers_R_indexCurl.o" "modelRN.phl[1113]";
connectAttr "Fingers_R_middleCurl.o" "modelRN.phl[1114]";
connectAttr "Fingers_R_ringCurl.o" "modelRN.phl[1115]";
connectAttr "Fingers_R_pinkyCurl.o" "modelRN.phl[1116]";
connectAttr "Fingers_R_thumbCurl.o" "modelRN.phl[1117]";
connectAttr "modelRN.phl[1118]" "Main_parentConstraint1.tg[0].trp";
connectAttr "modelRN.phl[1119]" "Main_parentConstraint1.tg[0].trt";
connectAttr "modelRN.phl[1120]" "Main_parentConstraint1.tg[0].tro";
connectAttr "modelRN.phl[1121]" "Main_parentConstraint1.tg[0].tpm";
connectAttr "Shoulder2_R_scaleX.o" "modelRN.phl[1122]";
connectAttr "Shoulder2_R_scaleY.o" "modelRN.phl[1123]";
connectAttr "Shoulder2_R_scaleZ.o" "modelRN.phl[1124]";
connectAttr "Shoulder2_R_translateX.o" "modelRN.phl[1125]";
connectAttr "Shoulder2_R_translateY.o" "modelRN.phl[1126]";
connectAttr "Shoulder2_R_translateZ.o" "modelRN.phl[1127]";
connectAttr "Shoulder2_R_visibility.o" "modelRN.phl[1128]";
connectAttr "Shoulder2_R_rotateX.o" "modelRN.phl[1129]";
connectAttr "Shoulder2_R_rotateY.o" "modelRN.phl[1130]";
connectAttr "Shoulder2_R_rotateZ.o" "modelRN.phl[1131]";
connectAttr "bat_ctrl.di" "modelRN1.phl[1]";
connectAttr "Main_parentConstraint1.ctx" "modelRN1.phl[2]";
connectAttr "Main_parentConstraint1.cty" "modelRN1.phl[3]";
connectAttr "Main_parentConstraint1.ctz" "modelRN1.phl[4]";
connectAttr "modelRN1.phl[5]" "Main_parentConstraint1.crp";
connectAttr "modelRN1.phl[6]" "Main_parentConstraint1.crt";
connectAttr "Main_parentConstraint1.crx" "modelRN1.phl[7]";
connectAttr "Main_parentConstraint1.cry" "modelRN1.phl[8]";
connectAttr "Main_parentConstraint1.crz" "modelRN1.phl[9]";
connectAttr "modelRN1.phl[10]" "Main_parentConstraint1.cro";
connectAttr "modelRN1.phl[11]" "Main_parentConstraint1.cpim";
connectAttr "modelRN1.phl[12]" "IKArm_L_parentConstraint1.tg[0].ts";
connectAttr "modelRN1.phl[13]" "IKArm_L_parentConstraint1.tg[0].tpm";
connectAttr "modelRN1.phl[14]" "IKArm_L_parentConstraint1.tg[0].tt";
connectAttr "modelRN1.phl[15]" "IKArm_L_parentConstraint1.tg[0].trp";
connectAttr "modelRN1.phl[16]" "IKArm_L_parentConstraint1.tg[0].trt";
connectAttr "modelRN1.phl[17]" "IKArm_L_parentConstraint1.tg[0].tr";
connectAttr "modelRN1.phl[18]" "IKArm_L_parentConstraint1.tg[0].tro";
connectAttr "front1_rotateX.o" "modelRN1.phl[19]";
connectAttr "front1_rotateY.o" "modelRN1.phl[20]";
connectAttr "front1_rotateZ.o" "modelRN1.phl[21]";
connectAttr "front1_visibility.o" "modelRN1.phl[22]";
connectAttr "front1_translateX.o" "modelRN1.phl[23]";
connectAttr "front1_translateY.o" "modelRN1.phl[24]";
connectAttr "front1_translateZ.o" "modelRN1.phl[25]";
connectAttr "front1_scaleX.o" "modelRN1.phl[26]";
connectAttr "front1_scaleY.o" "modelRN1.phl[27]";
connectAttr "front1_scaleZ.o" "modelRN1.phl[28]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "model2:SDKFKIndexFinger1_L_rotateZ.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger1_L_rotateZ.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger1_L_rotateZ.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger2_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger1_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger3_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKMiddleFinger3_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKMiddleFinger2_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKMiddleFinger1_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger2_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger3_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger1_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger1_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger3_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger2_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKThumbFinger2_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKThumbFinger3_L_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger1_R_rotateZ.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger1_R_rotateZ.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger1_R_rotateZ.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger3_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger1_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKIndexFinger2_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKMiddleFinger1_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKMiddleFinger3_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKMiddleFinger2_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger1_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger2_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKRingFinger3_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger2_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger1_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKPinkyFinger3_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKThumbFinger3_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:SDKFKThumbFinger2_R_rotateY.drivingSystemOut" "model2:FitSkeleton.drivingSystem"
		 -na;
connectAttr "model2:RootFat.oy" "model2:Root.fatFrontAbs";
connectAttr "model2:RootFat.oz" "model2:Root.fatWidthAbs";
connectAttr "model2:Root.s" "model2:Spine1.is";
connectAttr "model2:Spine1Fat.oy" "model2:Spine1.fatFrontAbs";
connectAttr "model2:Spine1Fat.oz" "model2:Spine1.fatWidthAbs";
connectAttr "model2:Spine1.s" "model2:Spine2.is";
connectAttr "model2:Spine2Fat.oy" "model2:Spine2.fatFrontAbs";
connectAttr "model2:Spine2Fat.oz" "model2:Spine2.fatWidthAbs";
connectAttr "model2:Spine2.s" "model2:Chest.is";
connectAttr "model2:ChestFat.oy" "model2:Chest.fatFrontAbs";
connectAttr "model2:ChestFat.oz" "model2:Chest.fatWidthAbs";
connectAttr "model2:Chest.s" "model2:Neck.is";
connectAttr "model2:NeckFat.oy" "model2:Neck.fatFrontAbs";
connectAttr "model2:NeckFat.oz" "model2:Neck.fatWidthAbs";
connectAttr "model2:Neck.s" "model2:Head.is";
connectAttr "model2:HeadFat.oy" "model2:Head.fatFrontAbs";
connectAttr "model2:HeadFat.oz" "model2:Head.fatWidthAbs";
connectAttr "model2:Head.s" "model2:HeadEnd.is";
connectAttr "model2:HeadEndFat.oy" "model2:HeadEnd.fatFrontAbs";
connectAttr "model2:HeadEndFat.oz" "model2:HeadEnd.fatWidthAbs";
connectAttr "model2:Head.s" "model2:Jaw.is";
connectAttr "model2:JawFat.oy" "model2:Jaw.fatFrontAbs";
connectAttr "model2:JawFat.oz" "model2:Jaw.fatWidthAbs";
connectAttr "model2:Jaw.s" "model2:JawEnd.is";
connectAttr "model2:JawEndFat.oy" "model2:JawEnd.fatFrontAbs";
connectAttr "model2:JawEndFat.oz" "model2:JawEnd.fatWidthAbs";
connectAttr "model2:Chest.s" "model2:Scapula.is";
connectAttr "model2:ScapulaFat.oy" "model2:Scapula.fatFrontAbs";
connectAttr "model2:ScapulaFat.oz" "model2:Scapula.fatWidthAbs";
connectAttr "model2:Scapula.s" "model2:Shoulder.is";
connectAttr "model2:ShoulderFat.oy" "model2:Shoulder.fatFrontAbs";
connectAttr "model2:ShoulderFat.oz" "model2:Shoulder.fatWidthAbs";
connectAttr "model2:Shoulder.s" "model2:ShoulderArmor.is";
connectAttr "model2:ShoulderArmorFat.oy" "model2:ShoulderArmor.fatFrontAbs";
connectAttr "model2:ShoulderArmorFat.oz" "model2:ShoulderArmor.fatWidthAbs";
connectAttr "model2:Shoulder.s" "model2:Elbow.is";
connectAttr "model2:ElbowFat.oy" "model2:Elbow.fatFrontAbs";
connectAttr "model2:ElbowFat.oz" "model2:Elbow.fatWidthAbs";
connectAttr "model2:Elbow.s" "model2:Wrist.is";
connectAttr "model2:WristFat.oy" "model2:Wrist.fatFrontAbs";
connectAttr "model2:WristFat.oz" "model2:Wrist.fatWidthAbs";
connectAttr "model2:Wrist.s" "model2:IndexFinger0.is";
connectAttr "model2:IndexFinger0Fat.oy" "model2:IndexFinger0.fatFrontAbs";
connectAttr "model2:IndexFinger0Fat.oz" "model2:IndexFinger0.fatWidthAbs";
connectAttr "model2:IndexFinger0.s" "model2:IndexFinger1.is";
connectAttr "model2:IndexFinger1Fat.oy" "model2:IndexFinger1.fatFrontAbs";
connectAttr "model2:IndexFinger1Fat.oz" "model2:IndexFinger1.fatWidthAbs";
connectAttr "model2:IndexFinger1.s" "model2:IndexFinger2.is";
connectAttr "model2:IndexFinger2Fat.oy" "model2:IndexFinger2.fatFrontAbs";
connectAttr "model2:IndexFinger2Fat.oz" "model2:IndexFinger2.fatWidthAbs";
connectAttr "model2:IndexFinger2.s" "model2:IndexFinger3.is";
connectAttr "model2:IndexFinger3Fat.oy" "model2:IndexFinger3.fatFrontAbs";
connectAttr "model2:IndexFinger3Fat.oz" "model2:IndexFinger3.fatWidthAbs";
connectAttr "model2:IndexFinger3.s" "model2:IndexFinger4.is";
connectAttr "model2:IndexFinger4Fat.oy" "model2:IndexFinger4.fatFrontAbs";
connectAttr "model2:IndexFinger4Fat.oz" "model2:IndexFinger4.fatWidthAbs";
connectAttr "model2:Wrist.s" "model2:MiddleFinger0.is";
connectAttr "model2:MiddleFinger0Fat.oy" "model2:MiddleFinger0.fatFrontAbs";
connectAttr "model2:MiddleFinger0Fat.oz" "model2:MiddleFinger0.fatWidthAbs";
connectAttr "model2:MiddleFinger0.s" "model2:MiddleFinger1.is";
connectAttr "model2:MiddleFinger1Fat.oy" "model2:MiddleFinger1.fatFrontAbs";
connectAttr "model2:MiddleFinger1Fat.oz" "model2:MiddleFinger1.fatWidthAbs";
connectAttr "model2:MiddleFinger1.s" "model2:MiddleFinger2.is";
connectAttr "model2:MiddleFinger2Fat.oy" "model2:MiddleFinger2.fatFrontAbs";
connectAttr "model2:MiddleFinger2Fat.oz" "model2:MiddleFinger2.fatWidthAbs";
connectAttr "model2:MiddleFinger2.s" "model2:MiddleFinger3.is";
connectAttr "model2:MiddleFinger3Fat.oy" "model2:MiddleFinger3.fatFrontAbs";
connectAttr "model2:MiddleFinger3Fat.oz" "model2:MiddleFinger3.fatWidthAbs";
connectAttr "model2:MiddleFinger3.s" "model2:MiddleFinger4.is";
connectAttr "model2:MiddleFinger4Fat.oy" "model2:MiddleFinger4.fatFrontAbs";
connectAttr "model2:MiddleFinger4Fat.oz" "model2:MiddleFinger4.fatWidthAbs";
connectAttr "model2:Wrist.s" "model2:RingFinger0.is";
connectAttr "model2:RingFinger0Fat.oy" "model2:RingFinger0.fatFrontAbs";
connectAttr "model2:RingFinger0Fat.oz" "model2:RingFinger0.fatWidthAbs";
connectAttr "model2:RingFinger0.s" "model2:RingFinger1.is";
connectAttr "model2:RingFinger1Fat.oy" "model2:RingFinger1.fatFrontAbs";
connectAttr "model2:RingFinger1Fat.oz" "model2:RingFinger1.fatWidthAbs";
connectAttr "model2:RingFinger1.s" "model2:RingFinger2.is";
connectAttr "model2:RingFinger2Fat.oy" "model2:RingFinger2.fatFrontAbs";
connectAttr "model2:RingFinger2Fat.oz" "model2:RingFinger2.fatWidthAbs";
connectAttr "model2:RingFinger2.s" "model2:RingFinger3.is";
connectAttr "model2:RingFinger3Fat.oy" "model2:RingFinger3.fatFrontAbs";
connectAttr "model2:RingFinger3Fat.oz" "model2:RingFinger3.fatWidthAbs";
connectAttr "model2:RingFinger3.s" "model2:RingFinger4.is";
connectAttr "model2:RingFinger4Fat.oy" "model2:RingFinger4.fatFrontAbs";
connectAttr "model2:RingFinger4Fat.oz" "model2:RingFinger4.fatWidthAbs";
connectAttr "model2:Wrist.s" "model2:PinkyFinger0.is";
connectAttr "model2:PinkyFinger0Fat.oy" "model2:PinkyFinger0.fatFrontAbs";
connectAttr "model2:PinkyFinger0Fat.oz" "model2:PinkyFinger0.fatWidthAbs";
connectAttr "model2:PinkyFinger0.s" "model2:PinkyFinger1.is";
connectAttr "model2:PinkyFinger1Fat.oy" "model2:PinkyFinger1.fatFrontAbs";
connectAttr "model2:PinkyFinger1Fat.oz" "model2:PinkyFinger1.fatWidthAbs";
connectAttr "model2:PinkyFinger1.s" "model2:PinkyFinger2.is";
connectAttr "model2:PinkyFinger2Fat.oy" "model2:PinkyFinger2.fatFrontAbs";
connectAttr "model2:PinkyFinger2Fat.oz" "model2:PinkyFinger2.fatWidthAbs";
connectAttr "model2:PinkyFinger2.s" "model2:PinkyFinger3.is";
connectAttr "model2:PinkyFinger3Fat.oy" "model2:PinkyFinger3.fatFrontAbs";
connectAttr "model2:PinkyFinger3Fat.oz" "model2:PinkyFinger3.fatWidthAbs";
connectAttr "model2:PinkyFinger3.s" "model2:PinkyFinger4.is";
connectAttr "model2:PinkyFinger4Fat.oy" "model2:PinkyFinger4.fatFrontAbs";
connectAttr "model2:PinkyFinger4Fat.oz" "model2:PinkyFinger4.fatWidthAbs";
connectAttr "model2:Wrist.s" "model2:ThumbFinger1.is";
connectAttr "model2:ThumbFinger1Fat.oy" "model2:ThumbFinger1.fatFrontAbs";
connectAttr "model2:ThumbFinger1Fat.oz" "model2:ThumbFinger1.fatWidthAbs";
connectAttr "model2:ThumbFinger1.s" "model2:ThumbFinger2.is";
connectAttr "model2:ThumbFinger2Fat.oy" "model2:ThumbFinger2.fatFrontAbs";
connectAttr "model2:ThumbFinger2Fat.oz" "model2:ThumbFinger2.fatWidthAbs";
connectAttr "model2:ThumbFinger2.s" "model2:ThumbFinger3.is";
connectAttr "model2:ThumbFinger3Fat.oy" "model2:ThumbFinger3.fatFrontAbs";
connectAttr "model2:ThumbFinger3Fat.oz" "model2:ThumbFinger3.fatWidthAbs";
connectAttr "model2:ThumbFinger3.s" "model2:ThumbFinger4.is";
connectAttr "model2:ThumbFinger4Fat.oy" "model2:ThumbFinger4.fatFrontAbs";
connectAttr "model2:ThumbFinger4Fat.oz" "model2:ThumbFinger4.fatWidthAbs";
connectAttr "model2:Spine1.s" "model2:SkirtJntTop.is";
connectAttr "model2:SkirtJntTopFat.oy" "model2:SkirtJntTop.fatFrontAbs";
connectAttr "model2:SkirtJntTopFat.oz" "model2:SkirtJntTop.fatWidthAbs";
connectAttr "model2:SkirtJntTop.s" "model2:SkirtJntMid1.is";
connectAttr "model2:SkirtJntMid1Fat.oy" "model2:SkirtJntMid1.fatFrontAbs";
connectAttr "model2:SkirtJntMid1Fat.oz" "model2:SkirtJntMid1.fatWidthAbs";
connectAttr "model2:SkirtJntMid1.s" "model2:SkirtJntMid2.is";
connectAttr "model2:SkirtJntMid2Fat.oy" "model2:SkirtJntMid2.fatFrontAbs";
connectAttr "model2:SkirtJntMid2Fat.oz" "model2:SkirtJntMid2.fatWidthAbs";
connectAttr "model2:SkirtJntMid2.s" "model2:SkirtJntMid3.is";
connectAttr "model2:SkirtJntMid3Fat.oy" "model2:SkirtJntMid3.fatFrontAbs";
connectAttr "model2:SkirtJntMid3Fat.oz" "model2:SkirtJntMid3.fatWidthAbs";
connectAttr "model2:SkirtJntMid3.s" "model2:SkirtJntMid4.is";
connectAttr "model2:SkirtJntMid4Fat.oy" "model2:SkirtJntMid4.fatFrontAbs";
connectAttr "model2:SkirtJntMid4Fat.oz" "model2:SkirtJntMid4.fatWidthAbs";
connectAttr "model2:SkirtJntMid4.s" "model2:SkirtJntEnd.is";
connectAttr "model2:SkirtJntEndFat.oy" "model2:SkirtJntEnd.fatFrontAbs";
connectAttr "model2:SkirtJntEndFat.oz" "model2:SkirtJntEnd.fatWidthAbs";
connectAttr "model2:Root.s" "model2:Hip.is";
connectAttr "model2:HipFat.oy" "model2:Hip.fatFrontAbs";
connectAttr "model2:HipFat.oz" "model2:Hip.fatWidthAbs";
connectAttr "model2:Hip.s" "model2:Knee.is";
connectAttr "model2:KneeFat.oy" "model2:Knee.fatFrontAbs";
connectAttr "model2:KneeFat.oz" "model2:Knee.fatWidthAbs";
connectAttr "model2:Knee.s" "model2:Ankle.is";
connectAttr "model2:AnkleFat.oy" "model2:Ankle.fatFrontAbs";
connectAttr "model2:AnkleFat.oz" "model2:Ankle.fatWidthAbs";
connectAttr "model2:Ankle.s" "model2:Heel.is";
connectAttr "model2:HeelFat.oy" "model2:Heel.fatFrontAbs";
connectAttr "model2:HeelFat.oz" "model2:Heel.fatWidthAbs";
connectAttr "model2:Ankle.s" "model2:Toes.is";
connectAttr "model2:ToesFat.oy" "model2:Toes.fatFrontAbs";
connectAttr "model2:ToesFat.oz" "model2:Toes.fatWidthAbs";
connectAttr "model2:Toes.s" "model2:FootSideInner.is";
connectAttr "model2:FootSideInnerFat.oy" "model2:FootSideInner.fatFrontAbs";
connectAttr "model2:FootSideInnerFat.oz" "model2:FootSideInner.fatWidthAbs";
connectAttr "model2:Toes.s" "model2:FootSideOuter.is";
connectAttr "model2:FootSideOuterFat.oy" "model2:FootSideOuter.fatFrontAbs";
connectAttr "model2:FootSideOuterFat.oz" "model2:FootSideOuter.fatWidthAbs";
connectAttr "model2:Toes.s" "model2:ToesEnd.is";
connectAttr "model2:ToesEndFat.oy" "model2:ToesEnd.fatFrontAbs";
connectAttr "model2:ToesEndFat.oz" "model2:ToesEnd.fatWidthAbs";
connectAttr "model2:RootMM_M.o" "model2:Root_M.opm";
connectAttr "model2:Root_M.s" "model2:Spine1_M.is";
connectAttr "model2:Spine1MM_M.o" "model2:Spine1_M.opm";
connectAttr "model2:Spine1_M.s" "model2:Spine2_M.is";
connectAttr "model2:Spine2MM_M.o" "model2:Spine2_M.opm";
connectAttr "model2:Spine2_M.s" "model2:Chest_M.is";
connectAttr "model2:ChestMM_M.o" "model2:Chest_M.opm";
connectAttr "model2:Chest_M.s" "model2:Neck_M.is";
connectAttr "model2:NeckMM_M.o" "model2:Neck_M.opm";
connectAttr "model2:Neck_M.s" "model2:Head_M.is";
connectAttr "model2:HeadMM_M.o" "model2:Head_M.opm";
connectAttr "model2:Head_M.s" "model2:HeadEnd_M.is";
connectAttr "model2:Head_M.s" "model2:Jaw_M.is";
connectAttr "model2:JawMM_M.o" "model2:Jaw_M.opm";
connectAttr "model2:Jaw_M.s" "model2:JawEnd_M.is";
connectAttr "model2:Chest_M.s" "model2:Scapula_R.is";
connectAttr "model2:ScapulaMM_R.o" "model2:Scapula_R.opm";
connectAttr "model2:Scapula_R.s" "model2:Shoulder_R.is";
connectAttr "model2:ShoulderMM_R.o" "model2:Shoulder_R.opm";
connectAttr "model2:Shoulder_R.s" "model2:ShoulderArmor_R.is";
connectAttr "model2:ShoulderArmorMM_R.o" "model2:ShoulderArmor_R.opm";
connectAttr "model2:Shoulder_R.s" "model2:Shoulder2_R.is";
connectAttr "model2:ElbowMM_R.o" "model2:Shoulder2_R.opm";
connectAttr "pasted__Shoulder2_R_scaleX.o" "model2:Shoulder2_R.sx";
connectAttr "pasted__Shoulder2_R_scaleY.o" "model2:Shoulder2_R.sy";
connectAttr "pasted__Shoulder2_R_scaleZ.o" "model2:Shoulder2_R.sz";
connectAttr "pasted__Shoulder2_R_translateX.o" "model2:Shoulder2_R.tx";
connectAttr "pasted__Shoulder2_R_translateY.o" "model2:Shoulder2_R.ty";
connectAttr "pasted__Shoulder2_R_translateZ.o" "model2:Shoulder2_R.tz";
connectAttr "pasted__Shoulder2_R_visibility.o" "model2:Shoulder2_R.v";
connectAttr "pasted__Shoulder2_R_rotateX.o" "model2:Shoulder2_R.rx";
connectAttr "pasted__Shoulder2_R_rotateY.o" "model2:Shoulder2_R.ry";
connectAttr "pasted__Shoulder2_R_rotateZ.o" "model2:Shoulder2_R.rz";
connectAttr "model2:Shoulder2_R.s" "model2:Wrist_R.is";
connectAttr "model2:WristMM_R.o" "model2:Wrist_R.opm";
connectAttr "model2:Wrist_R.s" "model2:IndexFinger0_R.is";
connectAttr "model2:IndexFinger0MM_R.o" "model2:IndexFinger0_R.opm";
connectAttr "model2:IndexFinger0_R.s" "model2:IndexFinger1_R.is";
connectAttr "model2:IndexFinger1MM_R.o" "model2:IndexFinger1_R.opm";
connectAttr "model2:IndexFinger1_R.s" "model2:IndexFinger2_R.is";
connectAttr "model2:IndexFinger2MM_R.o" "model2:IndexFinger2_R.opm";
connectAttr "model2:IndexFinger2_R.s" "model2:IndexFinger3_R.is";
connectAttr "model2:IndexFinger3MM_R.o" "model2:IndexFinger3_R.opm";
connectAttr "model2:IndexFinger3_R.s" "model2:IndexFinger4_R.is";
connectAttr "model2:Wrist_R.s" "model2:MiddleFinger0_R.is";
connectAttr "model2:MiddleFinger0MM_R.o" "model2:MiddleFinger0_R.opm";
connectAttr "model2:MiddleFinger0_R.s" "model2:MiddleFinger1_R.is";
connectAttr "model2:MiddleFinger1MM_R.o" "model2:MiddleFinger1_R.opm";
connectAttr "model2:MiddleFinger1_R.s" "model2:MiddleFinger2_R.is";
connectAttr "model2:MiddleFinger2MM_R.o" "model2:MiddleFinger2_R.opm";
connectAttr "model2:MiddleFinger2_R.s" "model2:MiddleFinger3_R.is";
connectAttr "model2:MiddleFinger3MM_R.o" "model2:MiddleFinger3_R.opm";
connectAttr "model2:MiddleFinger3_R.s" "model2:MiddleFinger4_R.is";
connectAttr "model2:Wrist_R.s" "model2:RingFinger0_R.is";
connectAttr "model2:RingFinger0MM_R.o" "model2:RingFinger0_R.opm";
connectAttr "model2:RingFinger0_R.s" "model2:RingFinger1_R.is";
connectAttr "model2:RingFinger1MM_R.o" "model2:RingFinger1_R.opm";
connectAttr "model2:RingFinger1_R.s" "model2:RingFinger2_R.is";
connectAttr "model2:RingFinger2MM_R.o" "model2:RingFinger2_R.opm";
connectAttr "model2:RingFinger2_R.s" "model2:RingFinger3_R.is";
connectAttr "model2:RingFinger3MM_R.o" "model2:RingFinger3_R.opm";
connectAttr "model2:RingFinger3_R.s" "model2:RingFinger4_R.is";
connectAttr "model2:Wrist_R.s" "model2:PinkyFinger0_R.is";
connectAttr "model2:PinkyFinger0MM_R.o" "model2:PinkyFinger0_R.opm";
connectAttr "model2:PinkyFinger0_R.s" "model2:PinkyFinger1_R.is";
connectAttr "model2:PinkyFinger1MM_R.o" "model2:PinkyFinger1_R.opm";
connectAttr "model2:PinkyFinger1_R.s" "model2:PinkyFinger2_R.is";
connectAttr "model2:PinkyFinger2MM_R.o" "model2:PinkyFinger2_R.opm";
connectAttr "model2:PinkyFinger2_R.s" "model2:PinkyFinger3_R.is";
connectAttr "model2:PinkyFinger3MM_R.o" "model2:PinkyFinger3_R.opm";
connectAttr "model2:PinkyFinger3_R.s" "model2:PinkyFinger4_R.is";
connectAttr "model2:Wrist_R.s" "model2:ThumbFinger1_R.is";
connectAttr "model2:ThumbFinger1MM_R.o" "model2:ThumbFinger1_R.opm";
connectAttr "model2:ThumbFinger1_R.s" "model2:ThumbFinger2_R.is";
connectAttr "model2:ThumbFinger2MM_R.o" "model2:ThumbFinger2_R.opm";
connectAttr "model2:ThumbFinger2_R.s" "model2:ThumbFinger3_R.is";
connectAttr "model2:ThumbFinger3MM_R.o" "model2:ThumbFinger3_R.opm";
connectAttr "model2:ThumbFinger3_R.s" "model2:ThumbFinger4_R.is";
connectAttr "model2:Shoulder_R.s" "model2:Shoulder2Partial_R.is";
connectAttr "model2:ElbowPartialBM_R.omat" "model2:Shoulder2Partial_R.opm";
connectAttr "model2:Chest_M.s" "model2:Scapula_L.is";
connectAttr "model2:ScapulaMM_L.o" "model2:Scapula_L.opm";
connectAttr "model2:Scapula_L.s" "model2:Shoulder_L.is";
connectAttr "model2:ShoulderMM_L.o" "model2:Shoulder_L.opm";
connectAttr "model2:Shoulder_L.s" "model2:ShoulderArmor_L.is";
connectAttr "model2:ShoulderArmorMM_L.o" "model2:ShoulderArmor_L.opm";
connectAttr "model2:Shoulder_L.s" "model2:Shoulder2_L.is";
connectAttr "model2:ElbowMM_L.o" "model2:Shoulder2_L.opm";
connectAttr "model2:Shoulder2_L.s" "model2:Wrist_L.is";
connectAttr "model2:WristMM_L.o" "model2:Wrist_L.opm";
connectAttr "model2:Wrist_L.s" "model2:IndexFinger0_L.is";
connectAttr "model2:IndexFinger0MM_L.o" "model2:IndexFinger0_L.opm";
connectAttr "model2:IndexFinger0_L.s" "model2:IndexFinger1_L.is";
connectAttr "model2:IndexFinger1MM_L.o" "model2:IndexFinger1_L.opm";
connectAttr "model2:IndexFinger1_L.s" "model2:IndexFinger2_L.is";
connectAttr "model2:IndexFinger2MM_L.o" "model2:IndexFinger2_L.opm";
connectAttr "model2:IndexFinger2_L.s" "model2:IndexFinger3_L.is";
connectAttr "model2:IndexFinger3MM_L.o" "model2:IndexFinger3_L.opm";
connectAttr "model2:IndexFinger3_L.s" "model2:IndexFinger4_L.is";
connectAttr "model2:Wrist_L.s" "model2:MiddleFinger0_L.is";
connectAttr "model2:MiddleFinger0MM_L.o" "model2:MiddleFinger0_L.opm";
connectAttr "model2:MiddleFinger0_L.s" "model2:MiddleFinger1_L.is";
connectAttr "model2:MiddleFinger1MM_L.o" "model2:MiddleFinger1_L.opm";
connectAttr "model2:MiddleFinger1_L.s" "model2:MiddleFinger2_L.is";
connectAttr "model2:MiddleFinger2MM_L.o" "model2:MiddleFinger2_L.opm";
connectAttr "model2:MiddleFinger2_L.s" "model2:MiddleFinger3_L.is";
connectAttr "model2:MiddleFinger3MM_L.o" "model2:MiddleFinger3_L.opm";
connectAttr "model2:MiddleFinger3_L.s" "model2:MiddleFinger4_L.is";
connectAttr "model2:Wrist_L.s" "model2:RingFinger0_L.is";
connectAttr "model2:RingFinger0MM_L.o" "model2:RingFinger0_L.opm";
connectAttr "model2:RingFinger0_L.s" "model2:RingFinger1_L.is";
connectAttr "model2:RingFinger1MM_L.o" "model2:RingFinger1_L.opm";
connectAttr "model2:RingFinger1_L.s" "model2:RingFinger2_L.is";
connectAttr "model2:RingFinger2MM_L.o" "model2:RingFinger2_L.opm";
connectAttr "model2:RingFinger2_L.s" "model2:RingFinger3_L.is";
connectAttr "model2:RingFinger3MM_L.o" "model2:RingFinger3_L.opm";
connectAttr "model2:RingFinger3_L.s" "model2:RingFinger4_L.is";
connectAttr "model2:Wrist_L.s" "model2:PinkyFinger0_L.is";
connectAttr "model2:PinkyFinger0MM_L.o" "model2:PinkyFinger0_L.opm";
connectAttr "model2:PinkyFinger0_L.s" "model2:PinkyFinger1_L.is";
connectAttr "model2:PinkyFinger1MM_L.o" "model2:PinkyFinger1_L.opm";
connectAttr "model2:PinkyFinger1_L.s" "model2:PinkyFinger2_L.is";
connectAttr "model2:PinkyFinger2MM_L.o" "model2:PinkyFinger2_L.opm";
connectAttr "model2:PinkyFinger2_L.s" "model2:PinkyFinger3_L.is";
connectAttr "model2:PinkyFinger3MM_L.o" "model2:PinkyFinger3_L.opm";
connectAttr "model2:PinkyFinger3_L.s" "model2:PinkyFinger4_L.is";
connectAttr "model2:Wrist_L.s" "model2:ThumbFinger1_L.is";
connectAttr "model2:ThumbFinger1MM_L.o" "model2:ThumbFinger1_L.opm";
connectAttr "model2:ThumbFinger1_L.s" "model2:ThumbFinger2_L.is";
connectAttr "model2:ThumbFinger2MM_L.o" "model2:ThumbFinger2_L.opm";
connectAttr "model2:ThumbFinger2_L.s" "model2:ThumbFinger3_L.is";
connectAttr "model2:ThumbFinger3MM_L.o" "model2:ThumbFinger3_L.opm";
connectAttr "model2:ThumbFinger3_L.s" "model2:ThumbFinger4_L.is";
connectAttr "model2:Shoulder_L.s" "model2:Shoulder2Partial_L.is";
connectAttr "model2:ElbowPartialBM_L.omat" "model2:Shoulder2Partial_L.opm";
connectAttr "model2:Spine1_M.s" "model2:SkirtJntTop_M.is";
connectAttr "model2:SkirtJntTopMM_M.o" "model2:SkirtJntTop_M.opm";
connectAttr "model2:SkirtJntTop_M.s" "model2:SkirtJntMid1_M.is";
connectAttr "model2:SkirtJntMid1MM_M.o" "model2:SkirtJntMid1_M.opm";
connectAttr "model2:SkirtJntMid1_M.s" "model2:SkirtJntMid2_M.is";
connectAttr "model2:SkirtJntMid2MM_M.o" "model2:SkirtJntMid2_M.opm";
connectAttr "model2:SkirtJntMid2_M.s" "model2:SkirtJntMid3_M.is";
connectAttr "model2:SkirtJntMid3MM_M.o" "model2:SkirtJntMid3_M.opm";
connectAttr "model2:SkirtJntMid3_M.s" "model2:SkirtJntMid4_M.is";
connectAttr "model2:SkirtJntMid4MM_M.o" "model2:SkirtJntMid4_M.opm";
connectAttr "model2:SkirtJntMid4_M.s" "model2:SkirtJntEnd_M.is";
connectAttr "model2:Root_M.s" "model2:Hip_R.is";
connectAttr "model2:HipMM_R.o" "model2:Hip_R.opm";
connectAttr "model2:Hip_R.s" "model2:Knee_R.is";
connectAttr "model2:KneeMM_R.o" "model2:Knee_R.opm";
connectAttr "model2:Knee_R.s" "model2:Ankle_R.is";
connectAttr "model2:AnkleMM_R.o" "model2:Ankle_R.opm";
connectAttr "model2:Ankle_R.s" "model2:Toes_R.is";
connectAttr "model2:ToesMM_R.o" "model2:Toes_R.opm";
connectAttr "model2:Toes_R.s" "model2:ToesEnd_R.is";
connectAttr "model2:Hip_R.s" "model2:KneePartial_R.is";
connectAttr "model2:KneePartialBM_R.omat" "model2:KneePartial_R.opm";
connectAttr "model2:Root_M.s" "model2:Hip_L.is";
connectAttr "model2:HipMM_L.o" "model2:Hip_L.opm";
connectAttr "model2:Hip_L.s" "model2:Knee_L.is";
connectAttr "model2:KneeMM_L.o" "model2:Knee_L.opm";
connectAttr "model2:Knee_L.s" "model2:Ankle_L.is";
connectAttr "model2:AnkleMM_L.o" "model2:Ankle_L.opm";
connectAttr "model2:Ankle_L.s" "model2:Toes_L.is";
connectAttr "model2:ToesMM_L.o" "model2:Toes_L.opm";
connectAttr "model2:Toes_L.s" "model2:ToesEnd_L.is";
connectAttr "model2:Hip_L.s" "model2:KneePartial_L.is";
connectAttr "model2:KneePartialBM_L.omat" "model2:KneePartial_L.opm";
connectAttr "pasted__bat_ctrl.di" "model3:MotionSystem.do";
connectAttr "model3:MotionSystem.v" "model3:MainShape.v";
connectAttr "model3:MainScaleMultiplyDivide.o" "model3:FKSystem.s";
connectAttr "model3:Main.fkVis" "model3:FKSystem.v";
connectAttr "model3:FKOffsetRootDM_M.otx" "model3:FKOffsetRoot_M.tx";
connectAttr "model3:FKOffsetRootDM_M.oty" "model3:FKOffsetRoot_M.ty";
connectAttr "model3:FKOffsetRootDM_M.otz" "model3:FKOffsetRoot_M.tz";
connectAttr "model3:FKOffsetRootDM_M.orx" "model3:FKOffsetRoot_M.rx";
connectAttr "model3:FKOffsetRootDM_M.ory" "model3:FKOffsetRoot_M.ry";
connectAttr "model3:FKOffsetRootDM_M.orz" "model3:FKOffsetRoot_M.rz";
connectAttr "model3:FKOffsetRootDM_M.osx" "model3:FKOffsetRoot_M.sx";
connectAttr "model3:FKOffsetRootDM_M.osy" "model3:FKOffsetRoot_M.sy";
connectAttr "model3:FKOffsetRootDM_M.osz" "model3:FKOffsetRoot_M.sz";
connectAttr "model3:FKOffsetRootDM_M.oshx" "model3:FKOffsetRoot_M.shxy";
connectAttr "model3:FKOffsetRootDM_M.oshy" "model3:FKOffsetRoot_M.shxz";
connectAttr "model3:FKOffsetRootDM_M.oshz" "model3:FKOffsetRoot_M.shyz";
connectAttr "model3:FKRoot_M.s" "model3:FKXRoot_M.is";
connectAttr "model3:FKOffsetjoint2_M_pointConstraint1.ctx" "model3:FKOffsetjoint2_M.tx"
		;
connectAttr "model3:FKOffsetjoint2_M_pointConstraint1.cty" "model3:FKOffsetjoint2_M.ty"
		;
connectAttr "model3:FKOffsetjoint2_M_pointConstraint1.ctz" "model3:FKOffsetjoint2_M.tz"
		;
connectAttr "model3:FKjoint2_M.s" "model3:FKXjoint2_M.is";
connectAttr "model3:FKOffsetjoint3_M_pointConstraint1.ctx" "model3:FKOffsetjoint3_M.tx"
		;
connectAttr "model3:FKOffsetjoint3_M_pointConstraint1.cty" "model3:FKOffsetjoint3_M.ty"
		;
connectAttr "model3:FKOffsetjoint3_M_pointConstraint1.ctz" "model3:FKOffsetjoint3_M.tz"
		;
connectAttr "model3:FKjoint3_M.s" "model3:FKXjoint3_M.is";
connectAttr "model3:FKOffsetjoint4_M_pointConstraint1.ctx" "model3:FKOffsetjoint4_M.tx"
		;
connectAttr "model3:FKOffsetjoint4_M_pointConstraint1.cty" "model3:FKOffsetjoint4_M.ty"
		;
connectAttr "model3:FKOffsetjoint4_M_pointConstraint1.ctz" "model3:FKOffsetjoint4_M.tz"
		;
connectAttr "model3:FKjoint4_M.s" "model3:FKXjoint4_M.is";
connectAttr "model3:FKOffsetjoint5_M_pointConstraint1.ctx" "model3:FKOffsetjoint5_M.tx"
		;
connectAttr "model3:FKOffsetjoint5_M_pointConstraint1.cty" "model3:FKOffsetjoint5_M.ty"
		;
connectAttr "model3:FKOffsetjoint5_M_pointConstraint1.ctz" "model3:FKOffsetjoint5_M.tz"
		;
connectAttr "model3:FKjoint5_M.s" "model3:FKXjoint5_M.is";
connectAttr "model3:FKOffsetjoint6_M_pointConstraint1.ctx" "model3:FKOffsetjoint6_M.tx"
		;
connectAttr "model3:FKOffsetjoint6_M_pointConstraint1.cty" "model3:FKOffsetjoint6_M.ty"
		;
connectAttr "model3:FKOffsetjoint6_M_pointConstraint1.ctz" "model3:FKOffsetjoint6_M.tz"
		;
connectAttr "model3:FKjoint6_M.s" "model3:FKXjoint6_M.is";
connectAttr "model3:FKOffsetjoint7_M_pointConstraint1.ctx" "model3:FKOffsetjoint7_M.tx"
		;
connectAttr "model3:FKOffsetjoint7_M_pointConstraint1.cty" "model3:FKOffsetjoint7_M.ty"
		;
connectAttr "model3:FKOffsetjoint7_M_pointConstraint1.ctz" "model3:FKOffsetjoint7_M.tz"
		;
connectAttr "model3:FKjoint7_M.s" "model3:FKXjoint7_M.is";
connectAttr "model3:FKOffsetjoint8_M_pointConstraint1.ctx" "model3:FKOffsetjoint8_M.tx"
		;
connectAttr "model3:FKOffsetjoint8_M_pointConstraint1.cty" "model3:FKOffsetjoint8_M.ty"
		;
connectAttr "model3:FKOffsetjoint8_M_pointConstraint1.ctz" "model3:FKOffsetjoint8_M.tz"
		;
connectAttr "model3:FKjoint8_M.s" "model3:FKXjoint8_M.is";
connectAttr "model3:FKOffsetjoint8_M.pim" "model3:FKOffsetjoint8_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint8_M.rp" "model3:FKOffsetjoint8_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint8_M.rpt" "model3:FKOffsetjoint8_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint8_M.t" "model3:FKOffsetjoint8_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint8_M.rp" "model3:FKOffsetjoint8_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint8_M.rpt" "model3:FKOffsetjoint8_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint8_M.pm" "model3:FKOffsetjoint8_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint8_M_pointConstraint1.w0" "model3:FKOffsetjoint8_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint8_M_scaleConstraint1.csx" "model3:FKPS1joint8_M.sx"
		;
connectAttr "model3:FKPS1joint8_M_scaleConstraint1.csy" "model3:FKPS1joint8_M.sy"
		;
connectAttr "model3:FKPS1joint8_M_scaleConstraint1.csz" "model3:FKPS1joint8_M.sz"
		;
connectAttr "model3:FKPS1joint8_M.pim" "model3:FKPS1joint8_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKjoint7_M.s" "model3:FKPS1joint8_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKjoint7_M.pm" "model3:FKPS1joint8_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint8_M_scaleConstraint1.w0" "model3:FKPS1joint8_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:FKOffsetjoint7_M.pim" "model3:FKOffsetjoint7_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint7_M.rp" "model3:FKOffsetjoint7_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint7_M.rpt" "model3:FKOffsetjoint7_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint7_M.t" "model3:FKOffsetjoint7_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint7_M.rp" "model3:FKOffsetjoint7_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint7_M.rpt" "model3:FKOffsetjoint7_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint7_M.pm" "model3:FKOffsetjoint7_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint7_M_pointConstraint1.w0" "model3:FKOffsetjoint7_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint7_M_scaleConstraint1.csx" "model3:FKPS1joint7_M.sx"
		;
connectAttr "model3:FKPS1joint7_M_scaleConstraint1.csy" "model3:FKPS1joint7_M.sy"
		;
connectAttr "model3:FKPS1joint7_M_scaleConstraint1.csz" "model3:FKPS1joint7_M.sz"
		;
connectAttr "model3:FKPS1joint7_M.pim" "model3:FKPS1joint7_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKjoint6_M.s" "model3:FKPS1joint7_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKjoint6_M.pm" "model3:FKPS1joint7_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint7_M_scaleConstraint1.w0" "model3:FKPS1joint7_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:FKOffsetjoint6_M.pim" "model3:FKOffsetjoint6_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint6_M.rp" "model3:FKOffsetjoint6_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint6_M.rpt" "model3:FKOffsetjoint6_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint6_M.t" "model3:FKOffsetjoint6_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint6_M.rp" "model3:FKOffsetjoint6_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint6_M.rpt" "model3:FKOffsetjoint6_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint6_M.pm" "model3:FKOffsetjoint6_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint6_M_pointConstraint1.w0" "model3:FKOffsetjoint6_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint6_M_scaleConstraint1.csx" "model3:FKPS1joint6_M.sx"
		;
connectAttr "model3:FKPS1joint6_M_scaleConstraint1.csy" "model3:FKPS1joint6_M.sy"
		;
connectAttr "model3:FKPS1joint6_M_scaleConstraint1.csz" "model3:FKPS1joint6_M.sz"
		;
connectAttr "model3:FKPS1joint6_M.pim" "model3:FKPS1joint6_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKjoint5_M.s" "model3:FKPS1joint6_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKjoint5_M.pm" "model3:FKPS1joint6_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint6_M_scaleConstraint1.w0" "model3:FKPS1joint6_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:FKOffsetjoint5_M.pim" "model3:FKOffsetjoint5_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint5_M.rp" "model3:FKOffsetjoint5_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint5_M.rpt" "model3:FKOffsetjoint5_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint5_M.t" "model3:FKOffsetjoint5_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint5_M.rp" "model3:FKOffsetjoint5_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint5_M.rpt" "model3:FKOffsetjoint5_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint5_M.pm" "model3:FKOffsetjoint5_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint5_M_pointConstraint1.w0" "model3:FKOffsetjoint5_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint5_M_scaleConstraint1.csx" "model3:FKPS1joint5_M.sx"
		;
connectAttr "model3:FKPS1joint5_M_scaleConstraint1.csy" "model3:FKPS1joint5_M.sy"
		;
connectAttr "model3:FKPS1joint5_M_scaleConstraint1.csz" "model3:FKPS1joint5_M.sz"
		;
connectAttr "model3:FKPS1joint5_M.pim" "model3:FKPS1joint5_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKjoint4_M.s" "model3:FKPS1joint5_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKjoint4_M.pm" "model3:FKPS1joint5_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint5_M_scaleConstraint1.w0" "model3:FKPS1joint5_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:FKOffsetjoint4_M.pim" "model3:FKOffsetjoint4_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint4_M.rp" "model3:FKOffsetjoint4_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint4_M.rpt" "model3:FKOffsetjoint4_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint4_M.t" "model3:FKOffsetjoint4_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint4_M.rp" "model3:FKOffsetjoint4_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint4_M.rpt" "model3:FKOffsetjoint4_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint4_M.pm" "model3:FKOffsetjoint4_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint4_M_pointConstraint1.w0" "model3:FKOffsetjoint4_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint4_M_scaleConstraint1.csx" "model3:FKPS1joint4_M.sx"
		;
connectAttr "model3:FKPS1joint4_M_scaleConstraint1.csy" "model3:FKPS1joint4_M.sy"
		;
connectAttr "model3:FKPS1joint4_M_scaleConstraint1.csz" "model3:FKPS1joint4_M.sz"
		;
connectAttr "model3:FKPS1joint4_M.pim" "model3:FKPS1joint4_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKjoint3_M.s" "model3:FKPS1joint4_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKjoint3_M.pm" "model3:FKPS1joint4_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint4_M_scaleConstraint1.w0" "model3:FKPS1joint4_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:FKOffsetjoint3_M.pim" "model3:FKOffsetjoint3_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint3_M.rp" "model3:FKOffsetjoint3_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint3_M.rpt" "model3:FKOffsetjoint3_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint3_M.t" "model3:FKOffsetjoint3_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint3_M.rp" "model3:FKOffsetjoint3_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint3_M.rpt" "model3:FKOffsetjoint3_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint3_M.pm" "model3:FKOffsetjoint3_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint3_M_pointConstraint1.w0" "model3:FKOffsetjoint3_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint3_M_scaleConstraint1.csx" "model3:FKPS1joint3_M.sx"
		;
connectAttr "model3:FKPS1joint3_M_scaleConstraint1.csy" "model3:FKPS1joint3_M.sy"
		;
connectAttr "model3:FKPS1joint3_M_scaleConstraint1.csz" "model3:FKPS1joint3_M.sz"
		;
connectAttr "model3:FKPS1joint3_M.pim" "model3:FKPS1joint3_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKjoint2_M.s" "model3:FKPS1joint3_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKjoint2_M.pm" "model3:FKPS1joint3_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint3_M_scaleConstraint1.w0" "model3:FKPS1joint3_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:FKOffsetjoint2_M.pim" "model3:FKOffsetjoint2_M_pointConstraint1.cpim"
		;
connectAttr "model3:FKOffsetjoint2_M.rp" "model3:FKOffsetjoint2_M_pointConstraint1.crp"
		;
connectAttr "model3:FKOffsetjoint2_M.rpt" "model3:FKOffsetjoint2_M_pointConstraint1.crt"
		;
connectAttr "model3:FKPS2joint2_M.t" "model3:FKOffsetjoint2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "model3:FKPS2joint2_M.rp" "model3:FKOffsetjoint2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "model3:FKPS2joint2_M.rpt" "model3:FKOffsetjoint2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "model3:FKPS2joint2_M.pm" "model3:FKOffsetjoint2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKOffsetjoint2_M_pointConstraint1.w0" "model3:FKOffsetjoint2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "model3:FKPS1joint2_M_scaleConstraint1.csx" "model3:FKPS1joint2_M.sx"
		;
connectAttr "model3:FKPS1joint2_M_scaleConstraint1.csy" "model3:FKPS1joint2_M.sy"
		;
connectAttr "model3:FKPS1joint2_M_scaleConstraint1.csz" "model3:FKPS1joint2_M.sz"
		;
connectAttr "model3:FKPS1joint2_M.pim" "model3:FKPS1joint2_M_scaleConstraint1.cpim"
		;
connectAttr "model3:FKRoot_M.s" "model3:FKPS1joint2_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "model3:FKRoot_M.pm" "model3:FKPS1joint2_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "model3:FKPS1joint2_M_scaleConstraint1.w0" "model3:FKPS1joint2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.ctx" "model3:RootFollowMain.tx"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.cty" "model3:RootFollowMain.ty"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.ctz" "model3:RootFollowMain.tz"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.crx" "model3:RootFollowMain.rx"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.cry" "model3:RootFollowMain.ry"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.crz" "model3:RootFollowMain.rz"
		;
connectAttr "model3:RootFollowMain_scaleConstraint1.csx" "model3:RootFollowMain.sx"
		;
connectAttr "model3:RootFollowMain_scaleConstraint1.csy" "model3:RootFollowMain.sy"
		;
connectAttr "model3:RootFollowMain_scaleConstraint1.csz" "model3:RootFollowMain.sz"
		;
connectAttr "model3:RootFollowMain.ro" "model3:RootFollowMain_parentConstraint1.cro"
		;
connectAttr "model3:RootFollowMain.pim" "model3:RootFollowMain_parentConstraint1.cpim"
		;
connectAttr "model3:RootFollowMain.rp" "model3:RootFollowMain_parentConstraint1.crp"
		;
connectAttr "model3:RootFollowMain.rpt" "model3:RootFollowMain_parentConstraint1.crt"
		;
connectAttr "model3:Main.t" "model3:RootFollowMain_parentConstraint1.tg[0].tt";
connectAttr "model3:Main.rp" "model3:RootFollowMain_parentConstraint1.tg[0].trp"
		;
connectAttr "model3:Main.rpt" "model3:RootFollowMain_parentConstraint1.tg[0].trt"
		;
connectAttr "model3:Main.r" "model3:RootFollowMain_parentConstraint1.tg[0].tr";
connectAttr "model3:Main.ro" "model3:RootFollowMain_parentConstraint1.tg[0].tro"
		;
connectAttr "model3:Main.s" "model3:RootFollowMain_parentConstraint1.tg[0].ts";
connectAttr "model3:Main.pm" "model3:RootFollowMain_parentConstraint1.tg[0].tpm"
		;
connectAttr "model3:RootFollowMain_parentConstraint1.w0" "model3:RootFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "model3:RootFollowMain.pim" "model3:RootFollowMain_scaleConstraint1.cpim"
		;
connectAttr "model3:Main.s" "model3:RootFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "model3:Main.pm" "model3:RootFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "model3:RootFollowMain_scaleConstraint1.w0" "model3:RootFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKArm_L_parentConstraint1.w0" "IKArm_L_parentConstraint1.tg[0].tw";
connectAttr "Main_parentConstraint1.w0" "Main_parentConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "FKjoint1_M_scaleX.o" "modelRN.phl[297]";
connectAttr "FKjoint1_M_scaleY.o" "modelRN.phl[298]";
connectAttr "FKjoint1_M_scaleZ.o" "modelRN.phl[299]";
connectAttr "FKjoint1_M_translateX.o" "modelRN.phl[300]";
connectAttr "FKjoint1_M_translateY.o" "modelRN.phl[301]";
connectAttr "FKjoint1_M_translateZ.o" "modelRN.phl[302]";
connectAttr "FKjoint1_M_rotateX.o" "modelRN.phl[303]";
connectAttr "FKjoint1_M_rotateY.o" "modelRN.phl[304]";
connectAttr "FKjoint1_M_rotateZ.o" "modelRN.phl[305]";
connectAttr "FKjoint11_M_scaleX.o" "modelRN.phl[306]";
connectAttr "FKjoint11_M_scaleY.o" "modelRN.phl[307]";
connectAttr "FKjoint11_M_scaleZ.o" "modelRN.phl[308]";
connectAttr "FKjoint11_M_translateX.o" "modelRN.phl[309]";
connectAttr "FKjoint11_M_translateY.o" "modelRN.phl[310]";
connectAttr "FKjoint11_M_translateZ.o" "modelRN.phl[311]";
connectAttr "FKjoint11_M_rotateX.o" "modelRN.phl[312]";
connectAttr "FKjoint11_M_rotateY.o" "modelRN.phl[313]";
connectAttr "FKjoint11_M_rotateZ.o" "modelRN.phl[314]";
connectAttr "FKjoint12_M_scaleX.o" "modelRN.phl[315]";
connectAttr "FKjoint12_M_scaleY.o" "modelRN.phl[316]";
connectAttr "FKjoint12_M_scaleZ.o" "modelRN.phl[317]";
connectAttr "FKjoint12_M_translateX.o" "modelRN.phl[318]";
connectAttr "FKjoint12_M_translateY.o" "modelRN.phl[319]";
connectAttr "FKjoint12_M_translateZ.o" "modelRN.phl[320]";
connectAttr "FKjoint12_M_rotateX.o" "modelRN.phl[321]";
connectAttr "FKjoint12_M_rotateY.o" "modelRN.phl[322]";
connectAttr "FKjoint12_M_rotateZ.o" "modelRN.phl[323]";
connectAttr "FKjoint13_M_scaleX.o" "modelRN.phl[324]";
connectAttr "FKjoint13_M_scaleY.o" "modelRN.phl[325]";
connectAttr "FKjoint13_M_scaleZ.o" "modelRN.phl[326]";
connectAttr "FKjoint13_M_translateX.o" "modelRN.phl[327]";
connectAttr "FKjoint13_M_translateY.o" "modelRN.phl[328]";
connectAttr "FKjoint13_M_translateZ.o" "modelRN.phl[329]";
connectAttr "FKjoint13_M_rotateX.o" "modelRN.phl[330]";
connectAttr "FKjoint13_M_rotateY.o" "modelRN.phl[331]";
connectAttr "FKjoint13_M_rotateZ.o" "modelRN.phl[332]";
connectAttr "FKjoint14_M_scaleX.o" "modelRN.phl[333]";
connectAttr "FKjoint14_M_scaleY.o" "modelRN.phl[334]";
connectAttr "FKjoint14_M_scaleZ.o" "modelRN.phl[335]";
connectAttr "FKjoint14_M_translateX.o" "modelRN.phl[336]";
connectAttr "FKjoint14_M_translateY.o" "modelRN.phl[337]";
connectAttr "FKjoint14_M_translateZ.o" "modelRN.phl[338]";
connectAttr "FKjoint14_M_rotateX.o" "modelRN.phl[339]";
connectAttr "FKjoint14_M_rotateY.o" "modelRN.phl[340]";
connectAttr "FKjoint14_M_rotateZ.o" "modelRN.phl[341]";
connectAttr "modelRNfosterParent1.msg" "modelRN.fp";
connectAttr "sharedReferenceNode.sr" "modelRN.sr";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "modelRN1fosterParent1.msg" "modelRN1.fp";
connectAttr "pairBlend2_inRotateX1.o" "pairBlend2.irx1";
connectAttr "pairBlend2_inRotateZ1.o" "pairBlend2.irz1";
connectAttr "layerManager.dli[1]" "bat_ctrl.id";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "AnimLayer1.sl" "BaseAnimation.chsl[0]";
connectAttr "AnimLayer2.sl" "BaseAnimation.chsl[2]";
connectAttr "pasted__BaseAnimation.sl" "BaseAnimation.chsl[3]";
connectAttr "pasted__BaseAnimation.play" "BaseAnimation.cdly[0]";
connectAttr "AnimLayer1.play" "BaseAnimation.cdly[1]";
connectAttr "AnimLayer2.play" "BaseAnimation.cdly[3]";
connectAttr "BaseAnimation.csol" "AnimLayer1.sslo";
connectAttr "BaseAnimation.fgwt" "AnimLayer1.pwth";
connectAttr "BaseAnimation.omte" "AnimLayer1.pmte";
connectAttr "model:FKShoulder2_R_translateX_AnimLayer1.msg" "AnimLayer1.bnds[0]"
		;
connectAttr "model:FKShoulder2_R_translateY_AnimLayer1.msg" "AnimLayer1.bnds[1]"
		;
connectAttr "model:FKShoulder2_R_translateZ_AnimLayer1.msg" "AnimLayer1.bnds[2]"
		;
connectAttr "model:FKShoulder2_R_rotate_AnimLayer1.msg" "AnimLayer1.bnds[6]";
connectAttr "model:FKShoulder2_R_scaleX_AnimLayer1.msg" "AnimLayer1.bnds[7]";
connectAttr "model:FKShoulder2_R_scaleY_AnimLayer1.msg" "AnimLayer1.bnds[8]";
connectAttr "model:FKShoulder2_R_scaleZ_AnimLayer1.msg" "AnimLayer1.bnds[9]";
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_translateX_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_translateX_AnimLayer1.wb";
connectAttr "FKShoulder2_R_translateX.o" "model:FKShoulder2_R_translateX_AnimLayer1.ia"
		;
connectAttr "FKShoulder2_R_translateX_AnimLayer1_inputB.o" "model:FKShoulder2_R_translateX_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_translateY_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_translateY_AnimLayer1.wb";
connectAttr "FKShoulder2_R_translateY.o" "model:FKShoulder2_R_translateY_AnimLayer1.ia"
		;
connectAttr "FKShoulder2_R_translateY_AnimLayer1_inputB.o" "model:FKShoulder2_R_translateY_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_translateZ_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_translateZ_AnimLayer1.wb";
connectAttr "FKShoulder2_R_translateZ.o" "model:FKShoulder2_R_translateZ_AnimLayer1.ia"
		;
connectAttr "FKShoulder2_R_translateZ_AnimLayer1_inputB.o" "model:FKShoulder2_R_translateZ_AnimLayer1.ib"
		;
connectAttr "FKShoulder2_R_rotateX.o" "model:FKShoulder2_R_rotate_AnimLayer1.iax"
		;
connectAttr "FKShoulder2_R_rotateY.o" "model:FKShoulder2_R_rotate_AnimLayer1.iay"
		;
connectAttr "FKShoulder2_R_rotateZ.o" "model:FKShoulder2_R_rotate_AnimLayer1.iaz"
		;
connectAttr "AnimLayer1.oram" "model:FKShoulder2_R_rotate_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_rotate_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_rotate_AnimLayer1.wb";
connectAttr "FKShoulder2_R_rotate_AnimLayer1_inputBX.o" "model:FKShoulder2_R_rotate_AnimLayer1.ibx"
		;
connectAttr "FKShoulder2_R_rotate_AnimLayer1_inputBY.o" "model:FKShoulder2_R_rotate_AnimLayer1.iby"
		;
connectAttr "FKShoulder2_R_rotate_AnimLayer1_inputBZ.o" "model:FKShoulder2_R_rotate_AnimLayer1.ibz"
		;
connectAttr "AnimLayer1.sam" "model:FKShoulder2_R_scaleX_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_scaleX_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_scaleX_AnimLayer1.wb";
connectAttr "FKShoulder2_R_scaleX.o" "model:FKShoulder2_R_scaleX_AnimLayer1.ia";
connectAttr "FKShoulder2_R_scaleX_AnimLayer1_inputB.o" "model:FKShoulder2_R_scaleX_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.sam" "model:FKShoulder2_R_scaleY_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_scaleY_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_scaleY_AnimLayer1.wb";
connectAttr "FKShoulder2_R_scaleY.o" "model:FKShoulder2_R_scaleY_AnimLayer1.ia";
connectAttr "FKShoulder2_R_scaleY_AnimLayer1_inputB.o" "model:FKShoulder2_R_scaleY_AnimLayer1.ib"
		;
connectAttr "AnimLayer1.sam" "model:FKShoulder2_R_scaleZ_AnimLayer1.acm";
connectAttr "AnimLayer1.bgwt" "model:FKShoulder2_R_scaleZ_AnimLayer1.wa";
connectAttr "AnimLayer1.fgwt" "model:FKShoulder2_R_scaleZ_AnimLayer1.wb";
connectAttr "FKShoulder2_R_scaleZ.o" "model:FKShoulder2_R_scaleZ_AnimLayer1.ia";
connectAttr "FKShoulder2_R_scaleZ_AnimLayer1_inputB.o" "model:FKShoulder2_R_scaleZ_AnimLayer1.ib"
		;
connectAttr "BaseAnimation.csol" "AnimLayer2.sslo";
connectAttr "BaseAnimation.fgwt" "AnimLayer2.pwth";
connectAttr "BaseAnimation.omte" "AnimLayer2.pmte";
connectAttr "model:FKWrist_R_translateX_AnimLayer2.msg" "AnimLayer2.bnds[0]";
connectAttr "model:FKWrist_R_translateY_AnimLayer2.msg" "AnimLayer2.bnds[1]";
connectAttr "model:FKWrist_R_translateZ_AnimLayer2.msg" "AnimLayer2.bnds[2]";
connectAttr "model:FKWrist_R_rotate_AnimLayer2.msg" "AnimLayer2.bnds[6]";
connectAttr "model:FKWrist_R_scaleX_AnimLayer2.msg" "AnimLayer2.bnds[7]";
connectAttr "model:FKWrist_R_scaleY_AnimLayer2.msg" "AnimLayer2.bnds[8]";
connectAttr "model:FKWrist_R_scaleZ_AnimLayer2.msg" "AnimLayer2.bnds[9]";
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_translateX_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_translateX_AnimLayer2.wb";
connectAttr "FKWrist_R_translateX.o" "model:FKWrist_R_translateX_AnimLayer2.ia";
connectAttr "FKWrist_R_translateX_AnimLayer2_inputB.o" "model:FKWrist_R_translateX_AnimLayer2.ib"
		;
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_translateY_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_translateY_AnimLayer2.wb";
connectAttr "FKWrist_R_translateY.o" "model:FKWrist_R_translateY_AnimLayer2.ia";
connectAttr "FKWrist_R_translateY_AnimLayer2_inputB.o" "model:FKWrist_R_translateY_AnimLayer2.ib"
		;
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_translateZ_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_translateZ_AnimLayer2.wb";
connectAttr "FKWrist_R_translateZ.o" "model:FKWrist_R_translateZ_AnimLayer2.ia";
connectAttr "FKWrist_R_translateZ_AnimLayer2_inputB.o" "model:FKWrist_R_translateZ_AnimLayer2.ib"
		;
connectAttr "FKWrist_R_rotateX.o" "model:FKWrist_R_rotate_AnimLayer2.iax";
connectAttr "FKWrist_R_rotateY.o" "model:FKWrist_R_rotate_AnimLayer2.iay";
connectAttr "FKWrist_R_rotateZ.o" "model:FKWrist_R_rotate_AnimLayer2.iaz";
connectAttr "AnimLayer2.oram" "model:FKWrist_R_rotate_AnimLayer2.acm";
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_rotate_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_rotate_AnimLayer2.wb";
connectAttr "FKWrist_R_rotate_AnimLayer2_inputBX.o" "model:FKWrist_R_rotate_AnimLayer2.ibx"
		;
connectAttr "FKWrist_R_rotate_AnimLayer2_inputBY.o" "model:FKWrist_R_rotate_AnimLayer2.iby"
		;
connectAttr "FKWrist_R_rotate_AnimLayer2_inputBZ.o" "model:FKWrist_R_rotate_AnimLayer2.ibz"
		;
connectAttr "AnimLayer2.sam" "model:FKWrist_R_scaleX_AnimLayer2.acm";
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_scaleX_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_scaleX_AnimLayer2.wb";
connectAttr "FKWrist_R_scaleX.o" "model:FKWrist_R_scaleX_AnimLayer2.ia";
connectAttr "FKWrist_R_scaleX_AnimLayer2_inputB.o" "model:FKWrist_R_scaleX_AnimLayer2.ib"
		;
connectAttr "AnimLayer2.sam" "model:FKWrist_R_scaleY_AnimLayer2.acm";
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_scaleY_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_scaleY_AnimLayer2.wb";
connectAttr "FKWrist_R_scaleY.o" "model:FKWrist_R_scaleY_AnimLayer2.ia";
connectAttr "FKWrist_R_scaleY_AnimLayer2_inputB.o" "model:FKWrist_R_scaleY_AnimLayer2.ib"
		;
connectAttr "AnimLayer2.sam" "model:FKWrist_R_scaleZ_AnimLayer2.acm";
connectAttr "AnimLayer2.bgwt" "model:FKWrist_R_scaleZ_AnimLayer2.wa";
connectAttr "AnimLayer2.fgwt" "model:FKWrist_R_scaleZ_AnimLayer2.wb";
connectAttr "FKWrist_R_scaleZ.o" "model:FKWrist_R_scaleZ_AnimLayer2.ia";
connectAttr "FKWrist_R_scaleZ_AnimLayer2_inputB.o" "model:FKWrist_R_scaleZ_AnimLayer2.ib"
		;
connectAttr "model2:ScaleBlendCMRoot_M.omat" "model2:RootMM_M.i[0]";
connectAttr "model2:DeformationSystem.wim" "model2:RootMM_M.i[2]";
connectAttr "model2:ScaleBlendRoot_M.opr" "model2:ScaleBlendCMRoot_M.isx";
connectAttr "model2:ScaleBlendRoot_M.opg" "model2:ScaleBlendCMRoot_M.isy";
connectAttr "model2:ScaleBlendRoot_M.opb" "model2:ScaleBlendCMRoot_M.isz";
connectAttr "model2:IKScaleRootMultiplyDivide_M.ox" "model2:ScaleBlendRoot_M.c1r"
		;
connectAttr "model2:IKScaleRootMultiplyDivide_M.oy" "model2:ScaleBlendRoot_M.c1g"
		;
connectAttr "model2:IKScaleRootMultiplyDivide_M.oz" "model2:ScaleBlendRoot_M.c1b"
		;
connectAttr "model2:IKCurveInfoNormalizeSpine_M.ox" "model2:IKCurveInfoAllMultiplySpine_M.i1x"
		;
connectAttr "model2:MainScaleMultiplyDivide.ox" "model2:IKCurveInfoAllMultiplySpine_M.i2x"
		;
connectAttr "model2:ScaleBlendCMSpine1_M.omat" "model2:Spine1MM_M.i[0]";
connectAttr "model2:Root_M.wim" "model2:Spine1MM_M.i[2]";
connectAttr "model2:ScaleBlendSpine1_M.opr" "model2:ScaleBlendCMSpine1_M.isx";
connectAttr "model2:ScaleBlendSpine1_M.opg" "model2:ScaleBlendCMSpine1_M.isy";
connectAttr "model2:ScaleBlendSpine1_M.opb" "model2:ScaleBlendCMSpine1_M.isz";
connectAttr "model2:IKScaleSpine1MultiplyDivide_M.ox" "model2:ScaleBlendSpine1_M.c1r"
		;
connectAttr "model2:IKScaleSpine1MultiplyDivide_M.oy" "model2:ScaleBlendSpine1_M.c1g"
		;
connectAttr "model2:IKScaleSpine1MultiplyDivide_M.oz" "model2:ScaleBlendSpine1_M.c1b"
		;
connectAttr "model2:IKSquashDistributNormalizerBSpine1_M.o1" "model2:IKScaleSpine1MultiplyDivide_M.i2x"
		;
connectAttr "model2:IKSquashDistributNormalizerBSpine1_M.o1" "model2:IKScaleSpine1MultiplyDivide_M.i2y"
		;
connectAttr "model2:IKSquashDistributNormalizerBSpine1_M.o1" "model2:IKScaleSpine1MultiplyDivide_M.i2z"
		;
connectAttr "model2:IKSquashDistributerSpine1_M.ox" "model2:IKSquashDistributNormalizerBSpine1_M.i1[0]"
		;
connectAttr "model2:IKSquashDistributNormalizerASpine1_M.o1" "model2:IKSquashDistributerSpine1_M.i1x"
		;
connectAttr "model2:volumeBlendSpineBlendTwo_M.o" "model2:IKSquashDistributNormalizerASpine1_M.i1[0]"
		;
connectAttr "model2:multWithStretchySpine_M.ox" "model2:volumeBlendSpineBlendTwo_M.ab"
		;
connectAttr "model2:volumepowSpine_M.ox" "model2:volumeBlendSpineBlendTwo_M.i[1]"
		;
connectAttr "model2:volume1OverSpine_M.ox" "model2:volumepowSpine_M.i1x";
connectAttr "model2:IKCurveInfoAllMultiplySpine_M.ox" "model2:volume1OverSpine_M.i2x"
		;
connectAttr "model2:ScaleBlendCMSpine2_M.omat" "model2:Spine2MM_M.i[0]";
connectAttr "model2:Spine1_M.wim" "model2:Spine2MM_M.i[2]";
connectAttr "model2:ScaleBlendSpine2_M.opr" "model2:ScaleBlendCMSpine2_M.isx";
connectAttr "model2:ScaleBlendSpine2_M.opg" "model2:ScaleBlendCMSpine2_M.isy";
connectAttr "model2:ScaleBlendSpine2_M.opb" "model2:ScaleBlendCMSpine2_M.isz";
connectAttr "model2:IKScaleSpine2MultiplyDivide_M.ox" "model2:ScaleBlendSpine2_M.c1r"
		;
connectAttr "model2:IKScaleSpine2MultiplyDivide_M.oy" "model2:ScaleBlendSpine2_M.c1g"
		;
connectAttr "model2:IKScaleSpine2MultiplyDivide_M.oz" "model2:ScaleBlendSpine2_M.c1b"
		;
connectAttr "model2:IKSquashDistributNormalizerBSpine2_M.o1" "model2:IKScaleSpine2MultiplyDivide_M.i2x"
		;
connectAttr "model2:IKSquashDistributNormalizerBSpine2_M.o1" "model2:IKScaleSpine2MultiplyDivide_M.i2y"
		;
connectAttr "model2:IKSquashDistributNormalizerBSpine2_M.o1" "model2:IKScaleSpine2MultiplyDivide_M.i2z"
		;
connectAttr "model2:IKSquashDistributerSpine2_M.ox" "model2:IKSquashDistributNormalizerBSpine2_M.i1[0]"
		;
connectAttr "model2:IKSquashDistributNormalizerASpine2_M.o1" "model2:IKSquashDistributerSpine2_M.i1x"
		;
connectAttr "model2:volumeBlendSpineBlendTwo_M.o" "model2:IKSquashDistributNormalizerASpine2_M.i1[0]"
		;
connectAttr "model2:ScaleBlendCMChest_M.omat" "model2:ChestMM_M.i[0]";
connectAttr "model2:Spine2_M.wim" "model2:ChestMM_M.i[2]";
connectAttr "model2:ScaleBlendChest_M.opr" "model2:ScaleBlendCMChest_M.isx";
connectAttr "model2:ScaleBlendChest_M.opg" "model2:ScaleBlendCMChest_M.isy";
connectAttr "model2:ScaleBlendChest_M.opb" "model2:ScaleBlendCMChest_M.isz";
connectAttr "model2:IKScaleChestMultiplyDivide_M.ox" "model2:ScaleBlendChest_M.c1r"
		;
connectAttr "model2:IKScaleChestMultiplyDivide_M.oy" "model2:ScaleBlendChest_M.c1g"
		;
connectAttr "model2:IKScaleChestMultiplyDivide_M.oz" "model2:ScaleBlendChest_M.c1b"
		;
connectAttr "model2:Chest_M.wim" "model2:NeckMM_M.i[1]";
connectAttr "model2:Neck_M.wim" "model2:HeadMM_M.i[1]";
connectAttr "model2:Head_M.wim" "model2:JawMM_M.i[1]";
connectAttr "model2:Chest_M.wim" "model2:ScapulaMM_R.i[1]";
connectAttr "pasted__BaseAnimation.csol" "pasted__AnimLayer1.sslo";
connectAttr "pasted__BaseAnimation.fgwt" "pasted__AnimLayer1.pwth";
connectAttr "pasted__BaseAnimation.omte" "pasted__AnimLayer1.pmte";
connectAttr "pasted__AnimLayer1.sl" "pasted__BaseAnimation.chsl[0]";
connectAttr "pasted__AnimLayer2.sl" "pasted__BaseAnimation.chsl[2]";
connectAttr "pasted__AnimLayer1.play" "pasted__BaseAnimation.cdly[0]";
connectAttr "pasted__AnimLayer2.play" "pasted__BaseAnimation.cdly[2]";
connectAttr "BaseAnimation.csol" "pasted__BaseAnimation.sslo";
connectAttr "BaseAnimation.fgwt" "pasted__BaseAnimation.pwth";
connectAttr "BaseAnimation.omte" "pasted__BaseAnimation.pmte";
connectAttr "pasted__BaseAnimation.csol" "pasted__AnimLayer2.sslo";
connectAttr "pasted__BaseAnimation.fgwt" "pasted__AnimLayer2.pwth";
connectAttr "pasted__BaseAnimation.omte" "pasted__AnimLayer2.pmte";
connectAttr "model2:ScaleBlendCMShoulder_R.omat" "model2:ShoulderMM_R.i[0]";
connectAttr "model2:Scapula_R.wim" "model2:ShoulderMM_R.i[2]";
connectAttr "model2:ScaleBlendShoulder_R.opr" "model2:ScaleBlendCMShoulder_R.isx"
		;
connectAttr "model2:ScaleBlendShoulder_R.opg" "model2:ScaleBlendCMShoulder_R.isy"
		;
connectAttr "model2:ScaleBlendShoulder_R.opb" "model2:ScaleBlendCMShoulder_R.isz"
		;
connectAttr "model2:volumeBlendArmBlendTwo_R.o" "model2:ScaleBlendShoulder_R.c1r"
		;
connectAttr "model2:fatnessIKXShoulder_R.o1" "model2:ScaleBlendShoulder_R.c1g";
connectAttr "model2:fatnessIKXShoulder_R.o1" "model2:ScaleBlendShoulder_R.c1b";
connectAttr "model2:multWithStretchyArm_R.ox" "model2:volumeBlendArmBlendTwo_R.ab"
		;
connectAttr "model2:volumepowArm_R.ox" "model2:volumeBlendArmBlendTwo_R.i[1]";
connectAttr "model2:IKmessureBlendStretchArm_R.o" "model2:IKmessureDivArm_R.i1x"
		;
connectAttr "model2:IKSetRangeStretchArm_R.ox" "model2:IKmessureBlendStretchArm_R.ab"
		;
connectAttr "model2:IKdistanceClampArm_R.opr" "model2:IKmessureBlendStretchArm_R.i[0]"
		;
connectAttr "model2:IKmessureBlendAntiPopArm_R.o" "model2:IKmessureBlendStretchArm_R.i[1]"
		;
connectAttr "model2:IKmessureBlendAntiPopArm_R.o" "model2:IKdistanceClampArm_R.ipr"
		;
connectAttr "model2:IKSetRangeAntiPopArm_R.ox" "model2:IKmessureBlendAntiPopArm_R.ab"
		;
connectAttr "model2:IKdistanceArm_RShape_normal.o" "model2:IKmessureBlendAntiPopArm_R.i[0]"
		;
connectAttr "model2:IKdistanceArm_RShape_antiPop.o" "model2:IKmessureBlendAntiPopArm_R.i[1]"
		;
connectAttr "model2:IKdistanceArm_RShape.d" "model2:IKdistanceArm_RShape_normal.i"
		;
connectAttr "model2:IKdistanceArm_RShape_antiPop.o" "model2:IKdistanceArm_RShape.antiPop"
		;
connectAttr "model2:IKdistanceArm_RShape.d" "model2:IKdistanceArm_RShape_antiPop.i"
		;
connectAttr "model2:volume1OverArm_R.ox" "model2:volumepowArm_R.i1x";
connectAttr "model2:IKmessureDivArm_R.ox" "model2:volume1OverArm_R.i2x";
connectAttr "model2:volumeBlendArmBlendTwo_R.o" "model2:fatnessIKXShoulder_R.i1[1]"
		;
connectAttr "model2:Shoulder_R.wim" "model2:ShoulderArmorMM_R.i[1]";
connectAttr "model2:ScaleBlendCMElbow_R.omat" "model2:ElbowMM_R.i[0]";
connectAttr "model2:Shoulder_R.wim" "model2:ElbowMM_R.i[2]";
connectAttr "model2:ScaleBlendElbow_R.opr" "model2:ScaleBlendCMElbow_R.isx";
connectAttr "model2:ScaleBlendElbow_R.opg" "model2:ScaleBlendCMElbow_R.isy";
connectAttr "model2:ScaleBlendElbow_R.opb" "model2:ScaleBlendCMElbow_R.isz";
connectAttr "model2:volumeBlendArmBlendTwo_R.o" "model2:ScaleBlendElbow_R.c1r";
connectAttr "model2:fatnessIKXElbow_R.o1" "model2:ScaleBlendElbow_R.c1g";
connectAttr "model2:fatnessIKXElbow_R.o1" "model2:ScaleBlendElbow_R.c1b";
connectAttr "model2:volumeBlendArmBlendTwo_R.o" "model2:fatnessIKXElbow_R.i1[1]"
		;
connectAttr "model2:ScaleBlendCMWrist_R.omat" "model2:WristMM_R.i[0]";
connectAttr "model2:Shoulder2_R.wim" "model2:WristMM_R.i[2]";
connectAttr "model2:ScaleBlendWrist_R.opr" "model2:ScaleBlendCMWrist_R.isx";
connectAttr "model2:ScaleBlendWrist_R.opg" "model2:ScaleBlendCMWrist_R.isy";
connectAttr "model2:ScaleBlendWrist_R.opb" "model2:ScaleBlendCMWrist_R.isz";
connectAttr "model2:Wrist_R.wim" "model2:IndexFinger0MM_R.i[1]";
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[1]" "model2:SDKFKIndexFinger1_R_rotateZ.spread"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[0]" "model2:SDKFKIndexFinger1_L_rotateZ.spread"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[1]" "model2:SDKFKRingFinger1_L_rotateZ.spread"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[2]" "model2:SDKFKPinkyFinger1_L_rotateZ.spread"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[3]" "model2:SDKFKIndexFinger2_L_rotateY.indexCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[4]" "model2:SDKFKIndexFinger1_L_rotateY.indexCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[5]" "model2:SDKFKIndexFinger3_L_rotateY.indexCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[6]" "model2:SDKFKMiddleFinger3_L_rotateY.middleCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[7]" "model2:SDKFKMiddleFinger2_L_rotateY.middleCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[8]" "model2:SDKFKMiddleFinger1_L_rotateY.middleCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[9]" "model2:SDKFKRingFinger2_L_rotateY.ringCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[10]" "model2:SDKFKRingFinger3_L_rotateY.ringCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[11]" "model2:SDKFKRingFinger1_L_rotateY.ringCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[12]" "model2:SDKFKPinkyFinger1_L_rotateY.pinkyCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[13]" "model2:SDKFKPinkyFinger3_L_rotateY.pinkyCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[14]" "model2:SDKFKPinkyFinger2_L_rotateY.pinkyCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[15]" "model2:SDKFKThumbFinger2_L_rotateY.thumbCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_L[16]" "model2:SDKFKThumbFinger3_L_rotateY.thumbCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[0]" "model2:SDKFKRingFinger1_R_rotateZ.spread"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[2]" "model2:SDKFKPinkyFinger1_R_rotateZ.spread"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[3]" "model2:SDKFKIndexFinger3_R_rotateY.indexCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[4]" "model2:SDKFKIndexFinger1_R_rotateY.indexCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[5]" "model2:SDKFKIndexFinger2_R_rotateY.indexCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[6]" "model2:SDKFKMiddleFinger1_R_rotateY.middleCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[7]" "model2:SDKFKMiddleFinger3_R_rotateY.middleCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[8]" "model2:SDKFKMiddleFinger2_R_rotateY.middleCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[9]" "model2:SDKFKRingFinger1_R_rotateY.ringCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[10]" "model2:SDKFKRingFinger2_R_rotateY.ringCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[11]" "model2:SDKFKRingFinger3_R_rotateY.ringCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[12]" "model2:SDKFKPinkyFinger2_R_rotateY.pinkyCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[13]" "model2:SDKFKPinkyFinger1_R_rotateY.pinkyCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[14]" "model2:SDKFKPinkyFinger3_R_rotateY.pinkyCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[15]" "model2:SDKFKThumbFinger3_R_rotateY.thumbCurl"
		;
connectAttr "model2:FitSkeleton.drivingSystem_Fingers_R[16]" "model2:SDKFKThumbFinger2_R_rotateY.thumbCurl"
		;
connectAttr "model2:Root.fat" "model2:RootFat.i1y";
connectAttr "model2:Root.fat" "model2:RootFat.i1z";
connectAttr "model2:Root.fatFront" "model2:RootFat.i2y";
connectAttr "model2:Root.fatWidth" "model2:RootFat.i2z";
connectAttr "model2:Spine1.fat" "model2:Spine1Fat.i1y";
connectAttr "model2:Spine1.fat" "model2:Spine1Fat.i1z";
connectAttr "model2:Spine1.fatFront" "model2:Spine1Fat.i2y";
connectAttr "model2:Spine1.fatWidth" "model2:Spine1Fat.i2z";
connectAttr "model2:Spine2.fat" "model2:Spine2Fat.i1y";
connectAttr "model2:Spine2.fat" "model2:Spine2Fat.i1z";
connectAttr "model2:Spine2.fatFront" "model2:Spine2Fat.i2y";
connectAttr "model2:Spine2.fatWidth" "model2:Spine2Fat.i2z";
connectAttr "model2:Chest.fat" "model2:ChestFat.i1y";
connectAttr "model2:Chest.fat" "model2:ChestFat.i1z";
connectAttr "model2:Chest.fatFront" "model2:ChestFat.i2y";
connectAttr "model2:Chest.fatWidth" "model2:ChestFat.i2z";
connectAttr "model2:Neck.fat" "model2:NeckFat.i1y";
connectAttr "model2:Neck.fat" "model2:NeckFat.i1z";
connectAttr "model2:Neck.fatFront" "model2:NeckFat.i2y";
connectAttr "model2:Neck.fatWidth" "model2:NeckFat.i2z";
connectAttr "model2:Head.fat" "model2:HeadFat.i1y";
connectAttr "model2:Head.fat" "model2:HeadFat.i1z";
connectAttr "model2:Head.fatFront" "model2:HeadFat.i2y";
connectAttr "model2:Head.fatWidth" "model2:HeadFat.i2z";
connectAttr "model2:HeadEnd.fat" "model2:HeadEndFat.i1y";
connectAttr "model2:HeadEnd.fat" "model2:HeadEndFat.i1z";
connectAttr "model2:HeadEnd.fatFront" "model2:HeadEndFat.i2y";
connectAttr "model2:HeadEnd.fatWidth" "model2:HeadEndFat.i2z";
connectAttr "model2:Jaw.fat" "model2:JawFat.i1y";
connectAttr "model2:Jaw.fat" "model2:JawFat.i1z";
connectAttr "model2:Jaw.fatFront" "model2:JawFat.i2y";
connectAttr "model2:Jaw.fatWidth" "model2:JawFat.i2z";
connectAttr "model2:JawEnd.fat" "model2:JawEndFat.i1y";
connectAttr "model2:JawEnd.fat" "model2:JawEndFat.i1z";
connectAttr "model2:JawEnd.fatFront" "model2:JawEndFat.i2y";
connectAttr "model2:JawEnd.fatWidth" "model2:JawEndFat.i2z";
connectAttr "model2:Scapula.fat" "model2:ScapulaFat.i1y";
connectAttr "model2:Scapula.fat" "model2:ScapulaFat.i1z";
connectAttr "model2:Scapula.fatFront" "model2:ScapulaFat.i2y";
connectAttr "model2:Scapula.fatWidth" "model2:ScapulaFat.i2z";
connectAttr "model2:Shoulder.fat" "model2:ShoulderFat.i1y";
connectAttr "model2:Shoulder.fat" "model2:ShoulderFat.i1z";
connectAttr "model2:Shoulder.fatFront" "model2:ShoulderFat.i2y";
connectAttr "model2:Shoulder.fatWidth" "model2:ShoulderFat.i2z";
connectAttr "model2:ShoulderArmor.fat" "model2:ShoulderArmorFat.i1y";
connectAttr "model2:ShoulderArmor.fat" "model2:ShoulderArmorFat.i1z";
connectAttr "model2:ShoulderArmor.fatFront" "model2:ShoulderArmorFat.i2y";
connectAttr "model2:ShoulderArmor.fatWidth" "model2:ShoulderArmorFat.i2z";
connectAttr "model2:Elbow.fat" "model2:ElbowFat.i1y";
connectAttr "model2:Elbow.fat" "model2:ElbowFat.i1z";
connectAttr "model2:Elbow.fatFront" "model2:ElbowFat.i2y";
connectAttr "model2:Elbow.fatWidth" "model2:ElbowFat.i2z";
connectAttr "model2:Wrist.fat" "model2:WristFat.i1y";
connectAttr "model2:Wrist.fat" "model2:WristFat.i1z";
connectAttr "model2:Wrist.fatFront" "model2:WristFat.i2y";
connectAttr "model2:Wrist.fatWidth" "model2:WristFat.i2z";
connectAttr "model2:IndexFinger0.fat" "model2:IndexFinger0Fat.i1y";
connectAttr "model2:IndexFinger0.fat" "model2:IndexFinger0Fat.i1z";
connectAttr "model2:IndexFinger0.fatFront" "model2:IndexFinger0Fat.i2y";
connectAttr "model2:IndexFinger0.fatWidth" "model2:IndexFinger0Fat.i2z";
connectAttr "model2:IndexFinger1.fat" "model2:IndexFinger1Fat.i1y";
connectAttr "model2:IndexFinger1.fat" "model2:IndexFinger1Fat.i1z";
connectAttr "model2:IndexFinger1.fatFront" "model2:IndexFinger1Fat.i2y";
connectAttr "model2:IndexFinger1.fatWidth" "model2:IndexFinger1Fat.i2z";
connectAttr "model2:IndexFinger2.fat" "model2:IndexFinger2Fat.i1y";
connectAttr "model2:IndexFinger2.fat" "model2:IndexFinger2Fat.i1z";
connectAttr "model2:IndexFinger2.fatFront" "model2:IndexFinger2Fat.i2y";
connectAttr "model2:IndexFinger2.fatWidth" "model2:IndexFinger2Fat.i2z";
connectAttr "model2:IndexFinger3.fat" "model2:IndexFinger3Fat.i1y";
connectAttr "model2:IndexFinger3.fat" "model2:IndexFinger3Fat.i1z";
connectAttr "model2:IndexFinger3.fatFront" "model2:IndexFinger3Fat.i2y";
connectAttr "model2:IndexFinger3.fatWidth" "model2:IndexFinger3Fat.i2z";
connectAttr "model2:IndexFinger4.fat" "model2:IndexFinger4Fat.i1y";
connectAttr "model2:IndexFinger4.fat" "model2:IndexFinger4Fat.i1z";
connectAttr "model2:IndexFinger4.fatFront" "model2:IndexFinger4Fat.i2y";
connectAttr "model2:IndexFinger4.fatWidth" "model2:IndexFinger4Fat.i2z";
connectAttr "model2:MiddleFinger0.fat" "model2:MiddleFinger0Fat.i1y";
connectAttr "model2:MiddleFinger0.fat" "model2:MiddleFinger0Fat.i1z";
connectAttr "model2:MiddleFinger0.fatFront" "model2:MiddleFinger0Fat.i2y";
connectAttr "model2:MiddleFinger0.fatWidth" "model2:MiddleFinger0Fat.i2z";
connectAttr "model2:MiddleFinger1.fat" "model2:MiddleFinger1Fat.i1y";
connectAttr "model2:MiddleFinger1.fat" "model2:MiddleFinger1Fat.i1z";
connectAttr "model2:MiddleFinger1.fatFront" "model2:MiddleFinger1Fat.i2y";
connectAttr "model2:MiddleFinger1.fatWidth" "model2:MiddleFinger1Fat.i2z";
connectAttr "model2:MiddleFinger2.fat" "model2:MiddleFinger2Fat.i1y";
connectAttr "model2:MiddleFinger2.fat" "model2:MiddleFinger2Fat.i1z";
connectAttr "model2:MiddleFinger2.fatFront" "model2:MiddleFinger2Fat.i2y";
connectAttr "model2:MiddleFinger2.fatWidth" "model2:MiddleFinger2Fat.i2z";
connectAttr "model2:MiddleFinger3.fat" "model2:MiddleFinger3Fat.i1y";
connectAttr "model2:MiddleFinger3.fat" "model2:MiddleFinger3Fat.i1z";
connectAttr "model2:MiddleFinger3.fatFront" "model2:MiddleFinger3Fat.i2y";
connectAttr "model2:MiddleFinger3.fatWidth" "model2:MiddleFinger3Fat.i2z";
connectAttr "model2:MiddleFinger4.fat" "model2:MiddleFinger4Fat.i1y";
connectAttr "model2:MiddleFinger4.fat" "model2:MiddleFinger4Fat.i1z";
connectAttr "model2:MiddleFinger4.fatFront" "model2:MiddleFinger4Fat.i2y";
connectAttr "model2:MiddleFinger4.fatWidth" "model2:MiddleFinger4Fat.i2z";
connectAttr "model2:RingFinger0.fat" "model2:RingFinger0Fat.i1y";
connectAttr "model2:RingFinger0.fat" "model2:RingFinger0Fat.i1z";
connectAttr "model2:RingFinger0.fatFront" "model2:RingFinger0Fat.i2y";
connectAttr "model2:RingFinger0.fatWidth" "model2:RingFinger0Fat.i2z";
connectAttr "model2:RingFinger1.fat" "model2:RingFinger1Fat.i1y";
connectAttr "model2:RingFinger1.fat" "model2:RingFinger1Fat.i1z";
connectAttr "model2:RingFinger1.fatFront" "model2:RingFinger1Fat.i2y";
connectAttr "model2:RingFinger1.fatWidth" "model2:RingFinger1Fat.i2z";
connectAttr "model2:RingFinger2.fat" "model2:RingFinger2Fat.i1y";
connectAttr "model2:RingFinger2.fat" "model2:RingFinger2Fat.i1z";
connectAttr "model2:RingFinger2.fatFront" "model2:RingFinger2Fat.i2y";
connectAttr "model2:RingFinger2.fatWidth" "model2:RingFinger2Fat.i2z";
connectAttr "model2:RingFinger3.fat" "model2:RingFinger3Fat.i1y";
connectAttr "model2:RingFinger3.fat" "model2:RingFinger3Fat.i1z";
connectAttr "model2:RingFinger3.fatFront" "model2:RingFinger3Fat.i2y";
connectAttr "model2:RingFinger3.fatWidth" "model2:RingFinger3Fat.i2z";
connectAttr "model2:RingFinger4.fat" "model2:RingFinger4Fat.i1y";
connectAttr "model2:RingFinger4.fat" "model2:RingFinger4Fat.i1z";
connectAttr "model2:RingFinger4.fatFront" "model2:RingFinger4Fat.i2y";
connectAttr "model2:RingFinger4.fatWidth" "model2:RingFinger4Fat.i2z";
connectAttr "model2:PinkyFinger0.fat" "model2:PinkyFinger0Fat.i1y";
connectAttr "model2:PinkyFinger0.fat" "model2:PinkyFinger0Fat.i1z";
connectAttr "model2:PinkyFinger0.fatFront" "model2:PinkyFinger0Fat.i2y";
connectAttr "model2:PinkyFinger0.fatWidth" "model2:PinkyFinger0Fat.i2z";
connectAttr "model2:PinkyFinger1.fat" "model2:PinkyFinger1Fat.i1y";
connectAttr "model2:PinkyFinger1.fat" "model2:PinkyFinger1Fat.i1z";
connectAttr "model2:PinkyFinger1.fatFront" "model2:PinkyFinger1Fat.i2y";
connectAttr "model2:PinkyFinger1.fatWidth" "model2:PinkyFinger1Fat.i2z";
connectAttr "model2:PinkyFinger2.fat" "model2:PinkyFinger2Fat.i1y";
connectAttr "model2:PinkyFinger2.fat" "model2:PinkyFinger2Fat.i1z";
connectAttr "model2:PinkyFinger2.fatFront" "model2:PinkyFinger2Fat.i2y";
connectAttr "model2:PinkyFinger2.fatWidth" "model2:PinkyFinger2Fat.i2z";
connectAttr "model2:PinkyFinger3.fat" "model2:PinkyFinger3Fat.i1y";
connectAttr "model2:PinkyFinger3.fat" "model2:PinkyFinger3Fat.i1z";
connectAttr "model2:PinkyFinger3.fatFront" "model2:PinkyFinger3Fat.i2y";
connectAttr "model2:PinkyFinger3.fatWidth" "model2:PinkyFinger3Fat.i2z";
connectAttr "model2:PinkyFinger4.fat" "model2:PinkyFinger4Fat.i1y";
connectAttr "model2:PinkyFinger4.fat" "model2:PinkyFinger4Fat.i1z";
connectAttr "model2:PinkyFinger4.fatFront" "model2:PinkyFinger4Fat.i2y";
connectAttr "model2:PinkyFinger4.fatWidth" "model2:PinkyFinger4Fat.i2z";
connectAttr "model2:ThumbFinger1.fat" "model2:ThumbFinger1Fat.i1y";
connectAttr "model2:ThumbFinger1.fat" "model2:ThumbFinger1Fat.i1z";
connectAttr "model2:ThumbFinger1.fatFront" "model2:ThumbFinger1Fat.i2y";
connectAttr "model2:ThumbFinger1.fatWidth" "model2:ThumbFinger1Fat.i2z";
connectAttr "model2:ThumbFinger2.fat" "model2:ThumbFinger2Fat.i1y";
connectAttr "model2:ThumbFinger2.fat" "model2:ThumbFinger2Fat.i1z";
connectAttr "model2:ThumbFinger2.fatFront" "model2:ThumbFinger2Fat.i2y";
connectAttr "model2:ThumbFinger2.fatWidth" "model2:ThumbFinger2Fat.i2z";
connectAttr "model2:ThumbFinger3.fat" "model2:ThumbFinger3Fat.i1y";
connectAttr "model2:ThumbFinger3.fat" "model2:ThumbFinger3Fat.i1z";
connectAttr "model2:ThumbFinger3.fatFront" "model2:ThumbFinger3Fat.i2y";
connectAttr "model2:ThumbFinger3.fatWidth" "model2:ThumbFinger3Fat.i2z";
connectAttr "model2:ThumbFinger4.fat" "model2:ThumbFinger4Fat.i1y";
connectAttr "model2:ThumbFinger4.fat" "model2:ThumbFinger4Fat.i1z";
connectAttr "model2:ThumbFinger4.fatFront" "model2:ThumbFinger4Fat.i2y";
connectAttr "model2:ThumbFinger4.fatWidth" "model2:ThumbFinger4Fat.i2z";
connectAttr "model2:SkirtJntTop.fat" "model2:SkirtJntTopFat.i1y";
connectAttr "model2:SkirtJntTop.fat" "model2:SkirtJntTopFat.i1z";
connectAttr "model2:SkirtJntTop.fatFront" "model2:SkirtJntTopFat.i2y";
connectAttr "model2:SkirtJntTop.fatWidth" "model2:SkirtJntTopFat.i2z";
connectAttr "model2:SkirtJntMid1.fat" "model2:SkirtJntMid1Fat.i1y";
connectAttr "model2:SkirtJntMid1.fat" "model2:SkirtJntMid1Fat.i1z";
connectAttr "model2:SkirtJntMid1.fatFront" "model2:SkirtJntMid1Fat.i2y";
connectAttr "model2:SkirtJntMid1.fatWidth" "model2:SkirtJntMid1Fat.i2z";
connectAttr "model2:SkirtJntMid2.fat" "model2:SkirtJntMid2Fat.i1y";
connectAttr "model2:SkirtJntMid2.fat" "model2:SkirtJntMid2Fat.i1z";
connectAttr "model2:SkirtJntMid2.fatFront" "model2:SkirtJntMid2Fat.i2y";
connectAttr "model2:SkirtJntMid2.fatWidth" "model2:SkirtJntMid2Fat.i2z";
connectAttr "model2:SkirtJntMid3.fat" "model2:SkirtJntMid3Fat.i1y";
connectAttr "model2:SkirtJntMid3.fat" "model2:SkirtJntMid3Fat.i1z";
connectAttr "model2:SkirtJntMid3.fatFront" "model2:SkirtJntMid3Fat.i2y";
connectAttr "model2:SkirtJntMid3.fatWidth" "model2:SkirtJntMid3Fat.i2z";
connectAttr "model2:SkirtJntMid4.fat" "model2:SkirtJntMid4Fat.i1y";
connectAttr "model2:SkirtJntMid4.fat" "model2:SkirtJntMid4Fat.i1z";
connectAttr "model2:SkirtJntMid4.fatFront" "model2:SkirtJntMid4Fat.i2y";
connectAttr "model2:SkirtJntMid4.fatWidth" "model2:SkirtJntMid4Fat.i2z";
connectAttr "model2:SkirtJntEnd.fat" "model2:SkirtJntEndFat.i1y";
connectAttr "model2:SkirtJntEnd.fat" "model2:SkirtJntEndFat.i1z";
connectAttr "model2:SkirtJntEnd.fatFront" "model2:SkirtJntEndFat.i2y";
connectAttr "model2:SkirtJntEnd.fatWidth" "model2:SkirtJntEndFat.i2z";
connectAttr "model2:Hip.fat" "model2:HipFat.i1y";
connectAttr "model2:Hip.fat" "model2:HipFat.i1z";
connectAttr "model2:Hip.fatFront" "model2:HipFat.i2y";
connectAttr "model2:Hip.fatWidth" "model2:HipFat.i2z";
connectAttr "model2:Knee.fat" "model2:KneeFat.i1y";
connectAttr "model2:Knee.fat" "model2:KneeFat.i1z";
connectAttr "model2:Knee.fatFront" "model2:KneeFat.i2y";
connectAttr "model2:Knee.fatWidth" "model2:KneeFat.i2z";
connectAttr "model2:Ankle.fat" "model2:AnkleFat.i1y";
connectAttr "model2:Ankle.fat" "model2:AnkleFat.i1z";
connectAttr "model2:Ankle.fatFront" "model2:AnkleFat.i2y";
connectAttr "model2:Ankle.fatWidth" "model2:AnkleFat.i2z";
connectAttr "model2:Heel.fat" "model2:HeelFat.i1y";
connectAttr "model2:Heel.fat" "model2:HeelFat.i1z";
connectAttr "model2:Heel.fatFront" "model2:HeelFat.i2y";
connectAttr "model2:Heel.fatWidth" "model2:HeelFat.i2z";
connectAttr "model2:Toes.fat" "model2:ToesFat.i1y";
connectAttr "model2:Toes.fat" "model2:ToesFat.i1z";
connectAttr "model2:Toes.fatFront" "model2:ToesFat.i2y";
connectAttr "model2:Toes.fatWidth" "model2:ToesFat.i2z";
connectAttr "model2:FootSideInner.fat" "model2:FootSideInnerFat.i1y";
connectAttr "model2:FootSideInner.fat" "model2:FootSideInnerFat.i1z";
connectAttr "model2:FootSideInner.fatFront" "model2:FootSideInnerFat.i2y";
connectAttr "model2:FootSideInner.fatWidth" "model2:FootSideInnerFat.i2z";
connectAttr "model2:FootSideOuter.fat" "model2:FootSideOuterFat.i1y";
connectAttr "model2:FootSideOuter.fat" "model2:FootSideOuterFat.i1z";
connectAttr "model2:FootSideOuter.fatFront" "model2:FootSideOuterFat.i2y";
connectAttr "model2:FootSideOuter.fatWidth" "model2:FootSideOuterFat.i2z";
connectAttr "model2:ToesEnd.fat" "model2:ToesEndFat.i1y";
connectAttr "model2:ToesEnd.fat" "model2:ToesEndFat.i1z";
connectAttr "model2:ToesEnd.fatFront" "model2:ToesEndFat.i2y";
connectAttr "model2:ToesEnd.fatWidth" "model2:ToesEndFat.i2z";
connectAttr "model2:IndexFinger0_R.wim" "model2:IndexFinger1MM_R.i[1]";
connectAttr "model2:IndexFinger1_R.wim" "model2:IndexFinger2MM_R.i[1]";
connectAttr "model2:IndexFinger2_R.wim" "model2:IndexFinger3MM_R.i[1]";
connectAttr "model2:Wrist_R.wim" "model2:MiddleFinger0MM_R.i[1]";
connectAttr "model2:MiddleFinger0_R.wim" "model2:MiddleFinger1MM_R.i[1]";
connectAttr "model2:MiddleFinger1_R.wim" "model2:MiddleFinger2MM_R.i[1]";
connectAttr "model2:MiddleFinger2_R.wim" "model2:MiddleFinger3MM_R.i[1]";
connectAttr "model2:Wrist_R.wim" "model2:RingFinger0MM_R.i[1]";
connectAttr "model2:RingFinger0_R.wim" "model2:RingFinger1MM_R.i[1]";
connectAttr "model2:RingFinger1_R.wim" "model2:RingFinger2MM_R.i[1]";
connectAttr "model2:RingFinger2_R.wim" "model2:RingFinger3MM_R.i[1]";
connectAttr "model2:Wrist_R.wim" "model2:PinkyFinger0MM_R.i[1]";
connectAttr "model2:PinkyFinger0_R.wim" "model2:PinkyFinger1MM_R.i[1]";
connectAttr "model2:PinkyFinger1_R.wim" "model2:PinkyFinger2MM_R.i[1]";
connectAttr "model2:PinkyFinger2_R.wim" "model2:PinkyFinger3MM_R.i[1]";
connectAttr "model2:Wrist_R.wim" "model2:ThumbFinger1MM_R.i[1]";
connectAttr "model2:ThumbFinger1_R.wim" "model2:ThumbFinger2MM_R.i[1]";
connectAttr "model2:ThumbFinger2_R.wim" "model2:ThumbFinger3MM_R.i[1]";
connectAttr "model2:Shoulder2_R.opm" "model2:ElbowPartialBM_R.tgt[0].tmat";
connectAttr "model2:ElbowPartial_RFollowMDL_R.o" "model2:ElbowPartialBM_R.tgt[0].wgt"
		;
connectAttr "model2:Shoulder2Partial_R.follow" "model2:ElbowPartial_RFollowMDL_R.i1"
		;
connectAttr "model2:Chest_M.wim" "model2:ScapulaMM_L.i[1]";
connectAttr "model2:ScaleBlendCMShoulder_L.omat" "model2:ShoulderMM_L.i[0]";
connectAttr "model2:Scapula_L.wim" "model2:ShoulderMM_L.i[2]";
connectAttr "model2:ScaleBlendShoulder_L.opr" "model2:ScaleBlendCMShoulder_L.isx"
		;
connectAttr "model2:ScaleBlendShoulder_L.opg" "model2:ScaleBlendCMShoulder_L.isy"
		;
connectAttr "model2:ScaleBlendShoulder_L.opb" "model2:ScaleBlendCMShoulder_L.isz"
		;
connectAttr "model2:volumeBlendArmBlendTwo_L.o" "model2:ScaleBlendShoulder_L.c1r"
		;
connectAttr "model2:fatnessIKXShoulder_L.o1" "model2:ScaleBlendShoulder_L.c1g";
connectAttr "model2:fatnessIKXShoulder_L.o1" "model2:ScaleBlendShoulder_L.c1b";
connectAttr "model2:multWithStretchyArm_L.ox" "model2:volumeBlendArmBlendTwo_L.ab"
		;
connectAttr "model2:volumepowArm_L.ox" "model2:volumeBlendArmBlendTwo_L.i[1]";
connectAttr "model3:FKOffsetRootMM_M.o" "model3:FKOffsetRootDM_M.imat";
connectAttr "model3:Handle_ctr.wm" "model3:FKOffsetRootMM_M.i[1]";
connectAttr "model3:FKSystem.wim" "model3:FKOffsetRootMM_M.i[2]";
connectAttr "model3:Main.s" "model3:MainScaleMultiplyDivide.i1";
connectAttr "layerManager.dli[2]" "pasted__bat_ctrl.id";
connectAttr "model2:IKmessureBlendStretchArm_L.o" "model2:IKmessureDivArm_L.i1x"
		;
connectAttr "model2:IKSetRangeStretchArm_L.ox" "model2:IKmessureBlendStretchArm_L.ab"
		;
connectAttr "model2:IKdistanceClampArm_L.opr" "model2:IKmessureBlendStretchArm_L.i[0]"
		;
connectAttr "model2:IKmessureBlendAntiPopArm_L.o" "model2:IKmessureBlendStretchArm_L.i[1]"
		;
connectAttr "model2:IKmessureBlendAntiPopArm_L.o" "model2:IKdistanceClampArm_L.ipr"
		;
connectAttr "model2:IKSetRangeAntiPopArm_L.ox" "model2:IKmessureBlendAntiPopArm_L.ab"
		;
connectAttr "model2:IKdistanceArm_LShape_normal.o" "model2:IKmessureBlendAntiPopArm_L.i[0]"
		;
connectAttr "model2:IKdistanceArm_LShape_antiPop.o" "model2:IKmessureBlendAntiPopArm_L.i[1]"
		;
connectAttr "model2:IKdistanceArm_LShape.d" "model2:IKdistanceArm_LShape_normal.i"
		;
connectAttr "model2:IKdistanceArm_LShape_antiPop.o" "model2:IKdistanceArm_LShape.antiPop"
		;
connectAttr "model2:IKdistanceArm_LShape.d" "model2:IKdistanceArm_LShape_antiPop.i"
		;
connectAttr "model2:volume1OverArm_L.ox" "model2:volumepowArm_L.i1x";
connectAttr "model2:IKmessureDivArm_L.ox" "model2:volume1OverArm_L.i2x";
connectAttr "model2:volumeBlendArmBlendTwo_L.o" "model2:fatnessIKXShoulder_L.i1[1]"
		;
connectAttr "model2:Shoulder_L.wim" "model2:ShoulderArmorMM_L.i[1]";
connectAttr "model2:ScaleBlendCMElbow_L.omat" "model2:ElbowMM_L.i[0]";
connectAttr "model2:Shoulder_L.wim" "model2:ElbowMM_L.i[2]";
connectAttr "model2:ScaleBlendElbow_L.opr" "model2:ScaleBlendCMElbow_L.isx";
connectAttr "model2:ScaleBlendElbow_L.opg" "model2:ScaleBlendCMElbow_L.isy";
connectAttr "model2:ScaleBlendElbow_L.opb" "model2:ScaleBlendCMElbow_L.isz";
connectAttr "model2:volumeBlendArmBlendTwo_L.o" "model2:ScaleBlendElbow_L.c1r";
connectAttr "model2:fatnessIKXElbow_L.o1" "model2:ScaleBlendElbow_L.c1g";
connectAttr "model2:fatnessIKXElbow_L.o1" "model2:ScaleBlendElbow_L.c1b";
connectAttr "model2:volumeBlendArmBlendTwo_L.o" "model2:fatnessIKXElbow_L.i1[1]"
		;
connectAttr "model2:ScaleBlendCMWrist_L.omat" "model2:WristMM_L.i[0]";
connectAttr "model2:Shoulder2_L.wim" "model2:WristMM_L.i[2]";
connectAttr "model2:ScaleBlendWrist_L.opr" "model2:ScaleBlendCMWrist_L.isx";
connectAttr "model2:ScaleBlendWrist_L.opg" "model2:ScaleBlendCMWrist_L.isy";
connectAttr "model2:ScaleBlendWrist_L.opb" "model2:ScaleBlendCMWrist_L.isz";
connectAttr "model2:Wrist_L.wim" "model2:IndexFinger0MM_L.i[1]";
connectAttr "model2:IndexFinger0_L.wim" "model2:IndexFinger1MM_L.i[1]";
connectAttr "model2:IndexFinger1_L.wim" "model2:IndexFinger2MM_L.i[1]";
connectAttr "model2:IndexFinger2_L.wim" "model2:IndexFinger3MM_L.i[1]";
connectAttr "model2:Wrist_L.wim" "model2:MiddleFinger0MM_L.i[1]";
connectAttr "model2:MiddleFinger0_L.wim" "model2:MiddleFinger1MM_L.i[1]";
connectAttr "model2:MiddleFinger1_L.wim" "model2:MiddleFinger2MM_L.i[1]";
connectAttr "model2:MiddleFinger2_L.wim" "model2:MiddleFinger3MM_L.i[1]";
connectAttr "model2:Wrist_L.wim" "model2:RingFinger0MM_L.i[1]";
connectAttr "model2:RingFinger0_L.wim" "model2:RingFinger1MM_L.i[1]";
connectAttr "model2:RingFinger1_L.wim" "model2:RingFinger2MM_L.i[1]";
connectAttr "model2:RingFinger2_L.wim" "model2:RingFinger3MM_L.i[1]";
connectAttr "model2:Wrist_L.wim" "model2:PinkyFinger0MM_L.i[1]";
connectAttr "model2:PinkyFinger0_L.wim" "model2:PinkyFinger1MM_L.i[1]";
connectAttr "model2:PinkyFinger1_L.wim" "model2:PinkyFinger2MM_L.i[1]";
connectAttr "model2:PinkyFinger2_L.wim" "model2:PinkyFinger3MM_L.i[1]";
connectAttr "model2:Wrist_L.wim" "model2:ThumbFinger1MM_L.i[1]";
connectAttr "model2:ThumbFinger1_L.wim" "model2:ThumbFinger2MM_L.i[1]";
connectAttr "model2:ThumbFinger2_L.wim" "model2:ThumbFinger3MM_L.i[1]";
connectAttr "model2:Shoulder2_L.opm" "model2:ElbowPartialBM_L.tgt[0].tmat";
connectAttr "model2:ElbowPartial_LFollowMDL_L.o" "model2:ElbowPartialBM_L.tgt[0].wgt"
		;
connectAttr "model2:Shoulder2Partial_L.follow" "model2:ElbowPartial_LFollowMDL_L.i1"
		;
connectAttr "model2:Spine1_M.wim" "model2:SkirtJntTopMM_M.i[1]";
connectAttr "model2:SkirtJntTop_M.wim" "model2:SkirtJntMid1MM_M.i[1]";
connectAttr "model2:SkirtJntMid1_M.wim" "model2:SkirtJntMid2MM_M.i[1]";
connectAttr "model2:SkirtJntMid2_M.wim" "model2:SkirtJntMid3MM_M.i[1]";
connectAttr "model2:SkirtJntMid3_M.wim" "model2:SkirtJntMid4MM_M.i[1]";
connectAttr "model2:ScaleBlendCMHip_R.omat" "model2:HipMM_R.i[0]";
connectAttr "model2:Root_M.wim" "model2:HipMM_R.i[2]";
connectAttr "model2:ScaleBlendHip_R.opr" "model2:ScaleBlendCMHip_R.isx";
connectAttr "model2:ScaleBlendHip_R.opg" "model2:ScaleBlendCMHip_R.isy";
connectAttr "model2:ScaleBlendHip_R.opb" "model2:ScaleBlendCMHip_R.isz";
connectAttr "model2:volumeBlendLegBlendTwo_R.o" "model2:ScaleBlendHip_R.c1r";
connectAttr "model2:fatnessIKXHip_R.o1" "model2:ScaleBlendHip_R.c1g";
connectAttr "model2:fatnessIKXHip_R.o1" "model2:ScaleBlendHip_R.c1b";
connectAttr "model2:multWithStretchyLeg_R.ox" "model2:volumeBlendLegBlendTwo_R.ab"
		;
connectAttr "model2:volumepowLeg_R.ox" "model2:volumeBlendLegBlendTwo_R.i[1]";
connectAttr "model2:volume1OverLeg_R.ox" "model2:volumepowLeg_R.i1x";
connectAttr "model2:IKmessureDivLeg_R.ox" "model2:volume1OverLeg_R.i2x";
connectAttr "model2:IKmessureBlendStretchLeg_R.o" "model2:IKmessureDivLeg_R.i1x"
		;
connectAttr "model2:IKSetRangeStretchLeg_R.ox" "model2:IKmessureBlendStretchLeg_R.ab"
		;
connectAttr "model2:IKdistanceClampLeg_R.opr" "model2:IKmessureBlendStretchLeg_R.i[0]"
		;
connectAttr "model2:IKmessureBlendAntiPopLeg_R.o" "model2:IKmessureBlendStretchLeg_R.i[1]"
		;
connectAttr "model2:IKmessureBlendAntiPopLeg_R.o" "model2:IKdistanceClampLeg_R.ipr"
		;
connectAttr "model2:IKSetRangeAntiPopLeg_R.ox" "model2:IKmessureBlendAntiPopLeg_R.ab"
		;
connectAttr "model2:IKdistanceLeg_RShape_normal.o" "model2:IKmessureBlendAntiPopLeg_R.i[0]"
		;
connectAttr "model2:IKdistanceLeg_RShape_antiPop.o" "model2:IKmessureBlendAntiPopLeg_R.i[1]"
		;
connectAttr "model2:IKdistanceLeg_RShape.d" "model2:IKdistanceLeg_RShape_normal.i"
		;
connectAttr "model2:IKdistanceLeg_RShape_antiPop.o" "model2:IKdistanceLeg_RShape.antiPop"
		;
connectAttr "model2:IKdistanceLeg_RShape.d" "model2:IKdistanceLeg_RShape_antiPop.i"
		;
connectAttr "model2:volumeBlendLegBlendTwo_R.o" "model2:fatnessIKXHip_R.i1[1]";
connectAttr "model2:ScaleBlendCMKnee_R.omat" "model2:KneeMM_R.i[0]";
connectAttr "model2:Hip_R.wim" "model2:KneeMM_R.i[2]";
connectAttr "model2:ScaleBlendKnee_R.opr" "model2:ScaleBlendCMKnee_R.isx";
connectAttr "model2:ScaleBlendKnee_R.opg" "model2:ScaleBlendCMKnee_R.isy";
connectAttr "model2:ScaleBlendKnee_R.opb" "model2:ScaleBlendCMKnee_R.isz";
connectAttr "model2:volumeBlendLegBlendTwo_R.o" "model2:ScaleBlendKnee_R.c1r";
connectAttr "model2:fatnessIKXKnee_R.o1" "model2:ScaleBlendKnee_R.c1g";
connectAttr "model2:fatnessIKXKnee_R.o1" "model2:ScaleBlendKnee_R.c1b";
connectAttr "model2:volumeBlendLegBlendTwo_R.o" "model2:fatnessIKXKnee_R.i1[1]";
connectAttr "model2:ScaleBlendCMAnkle_R.omat" "model2:AnkleMM_R.i[0]";
connectAttr "model2:Knee_R.wim" "model2:AnkleMM_R.i[2]";
connectAttr "model2:ScaleBlendAnkle_R.opr" "model2:ScaleBlendCMAnkle_R.isx";
connectAttr "model2:ScaleBlendAnkle_R.opg" "model2:ScaleBlendCMAnkle_R.isy";
connectAttr "model2:ScaleBlendAnkle_R.opb" "model2:ScaleBlendCMAnkle_R.isz";
connectAttr "model2:ScaleBlendCMToes_R.omat" "model2:ToesMM_R.i[0]";
connectAttr "model2:Ankle_R.wim" "model2:ToesMM_R.i[2]";
connectAttr "model2:ScaleBlendToes_R.opr" "model2:ScaleBlendCMToes_R.isx";
connectAttr "model2:ScaleBlendToes_R.opg" "model2:ScaleBlendCMToes_R.isy";
connectAttr "model2:ScaleBlendToes_R.opb" "model2:ScaleBlendCMToes_R.isz";
connectAttr "model2:Knee_R.opm" "model2:KneePartialBM_R.tgt[0].tmat";
connectAttr "model2:KneePartial_RFollowMDL_R.o" "model2:KneePartialBM_R.tgt[0].wgt"
		;
connectAttr "model2:KneePartial_R.follow" "model2:KneePartial_RFollowMDL_R.i1";
connectAttr "model2:ScaleBlendCMHip_L.omat" "model2:HipMM_L.i[0]";
connectAttr "model2:Root_M.wim" "model2:HipMM_L.i[2]";
connectAttr "model2:ScaleBlendHip_L.opr" "model2:ScaleBlendCMHip_L.isx";
connectAttr "model2:ScaleBlendHip_L.opg" "model2:ScaleBlendCMHip_L.isy";
connectAttr "model2:ScaleBlendHip_L.opb" "model2:ScaleBlendCMHip_L.isz";
connectAttr "model2:volumeBlendLegBlendTwo_L.o" "model2:ScaleBlendHip_L.c1r";
connectAttr "model2:fatnessIKXHip_L.o1" "model2:ScaleBlendHip_L.c1g";
connectAttr "model2:fatnessIKXHip_L.o1" "model2:ScaleBlendHip_L.c1b";
connectAttr "model2:multWithStretchyLeg_L.ox" "model2:volumeBlendLegBlendTwo_L.ab"
		;
connectAttr "model2:volumepowLeg_L.ox" "model2:volumeBlendLegBlendTwo_L.i[1]";
connectAttr "model2:IKmessureBlendStretchLeg_L.o" "model2:IKmessureDivLeg_L.i1x"
		;
connectAttr "model2:IKSetRangeStretchLeg_L.ox" "model2:IKmessureBlendStretchLeg_L.ab"
		;
connectAttr "model2:IKdistanceClampLeg_L.opr" "model2:IKmessureBlendStretchLeg_L.i[0]"
		;
connectAttr "model2:IKmessureBlendAntiPopLeg_L.o" "model2:IKmessureBlendStretchLeg_L.i[1]"
		;
connectAttr "model2:IKmessureBlendAntiPopLeg_L.o" "model2:IKdistanceClampLeg_L.ipr"
		;
connectAttr "model2:IKSetRangeAntiPopLeg_L.ox" "model2:IKmessureBlendAntiPopLeg_L.ab"
		;
connectAttr "model2:IKdistanceLeg_LShape_normal.o" "model2:IKmessureBlendAntiPopLeg_L.i[0]"
		;
connectAttr "model2:IKdistanceLeg_LShape_antiPop.o" "model2:IKmessureBlendAntiPopLeg_L.i[1]"
		;
connectAttr "model2:IKdistanceLeg_LShape.d" "model2:IKdistanceLeg_LShape_normal.i"
		;
connectAttr "model2:IKdistanceLeg_LShape_antiPop.o" "model2:IKdistanceLeg_LShape.antiPop"
		;
connectAttr "model2:IKdistanceLeg_LShape.d" "model2:IKdistanceLeg_LShape_antiPop.i"
		;
connectAttr "model2:volume1OverLeg_L.ox" "model2:volumepowLeg_L.i1x";
connectAttr "model2:IKmessureDivLeg_L.ox" "model2:volume1OverLeg_L.i2x";
connectAttr "model2:volumeBlendLegBlendTwo_L.o" "model2:fatnessIKXHip_L.i1[1]";
connectAttr "model2:ScaleBlendCMKnee_L.omat" "model2:KneeMM_L.i[0]";
connectAttr "model2:Hip_L.wim" "model2:KneeMM_L.i[2]";
connectAttr "model2:ScaleBlendKnee_L.opr" "model2:ScaleBlendCMKnee_L.isx";
connectAttr "model2:ScaleBlendKnee_L.opg" "model2:ScaleBlendCMKnee_L.isy";
connectAttr "model2:ScaleBlendKnee_L.opb" "model2:ScaleBlendCMKnee_L.isz";
connectAttr "model2:volumeBlendLegBlendTwo_L.o" "model2:ScaleBlendKnee_L.c1r";
connectAttr "model2:fatnessIKXKnee_L.o1" "model2:ScaleBlendKnee_L.c1g";
connectAttr "model2:fatnessIKXKnee_L.o1" "model2:ScaleBlendKnee_L.c1b";
connectAttr "model2:volumeBlendLegBlendTwo_L.o" "model2:fatnessIKXKnee_L.i1[1]";
connectAttr "model2:ScaleBlendCMAnkle_L.omat" "model2:AnkleMM_L.i[0]";
connectAttr "model2:Knee_L.wim" "model2:AnkleMM_L.i[2]";
connectAttr "model2:ScaleBlendAnkle_L.opr" "model2:ScaleBlendCMAnkle_L.isx";
connectAttr "model2:ScaleBlendAnkle_L.opg" "model2:ScaleBlendCMAnkle_L.isy";
connectAttr "model2:ScaleBlendAnkle_L.opb" "model2:ScaleBlendCMAnkle_L.isz";
connectAttr "model2:ScaleBlendCMToes_L.omat" "model2:ToesMM_L.i[0]";
connectAttr "model2:Ankle_L.wim" "model2:ToesMM_L.i[2]";
connectAttr "model2:ScaleBlendToes_L.opr" "model2:ScaleBlendCMToes_L.isx";
connectAttr "model2:ScaleBlendToes_L.opg" "model2:ScaleBlendCMToes_L.isy";
connectAttr "model2:ScaleBlendToes_L.opb" "model2:ScaleBlendCMToes_L.isz";
connectAttr "model2:Knee_L.opm" "model2:KneePartialBM_L.tgt[0].tmat";
connectAttr "model2:KneePartial_LFollowMDL_L.o" "model2:KneePartialBM_L.tgt[0].wgt"
		;
connectAttr "model2:KneePartial_L.follow" "model2:KneePartial_LFollowMDL_L.i1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of guard_walkStrafe_F_ver023.ma
