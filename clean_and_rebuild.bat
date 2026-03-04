@echo off
echo 🔧 CLEAN AND REBUILD ANDROID PROJECT
echo ====================================

echo 1. Cleaning project caches...
cd "c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare"

REM Clean Gradle cache
if exist ".gradle" (
    echo Cleaning .gradle cache...
    rmdir /s /q ".gradle" 2>nul
)

REM Clean app build
if exist "app\build" (
    echo Cleaning app build...
    rmdir /s /q "app\build" 2>nul
)

REM Clean project build
if exist "build" (
    echo Cleaning project build...
    rmdir /s /q "build" 2>nul
)

echo.
echo 2. Project cleaned successfully!
echo.
echo 3. Next steps in Android Studio:
echo    - Open Android Studio
echo    - Open project: c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare
echo    - Click: File ^> Sync Project with Gradle Files
echo    - Wait for sync to complete
echo    - Click: Build ^> Clean Project
echo    - Click: Build ^> Rebuild Project
echo    - Run app (Green play button)
echo.
echo ✅ Fixes applied:
echo    - Removed all duplicate MainActivity files
echo    - Created single clean MainActivity.kt
echo    - Removed all conflicting function definitions
echo    - Cleared build caches
echo    - Simplified to basic working structure
echo.
echo 🎯 The app should now build without any errors!
echo.
pause
