@echo off
cd /D "%~dp0"
set TG_BOOTSTRAP_CACHE=%cd%
IF NOT %1 == "" (
	rem TGS4: we are passed the game directory on the command line
	cd %1
<<<<<<< HEAD
) ELSE IF EXIST "..\Game\B\cev_eris.dmb" (
	rem TGS3: Game/B/cev_eris.dmb exists, so build in Game/A
=======
) ELSE IF EXIST "..\Game\B\liberty-station.dmb" (
	rem TGS3: Game/B/liberty-station.dmb exists, so build in Game/A
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	cd ..\Game\A
) ELSE (
	rem TGS3: Otherwise build in Game/B
	cd ..\Game\B
)
set CBT_BUILD_MODE=TGS
tools\build\build
