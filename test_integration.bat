@echo off
echo 🚀 Testing AI NutriCare Integration
echo ==================================

REM Test 1: Check if backend is running
echo 1. Testing backend connection...
curl -s http://localhost:8000/docs >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Backend is running at http://localhost:8000
) else (
    echo ❌ Backend is not running. Please start it first:
    echo    cd "c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare"
    echo    start_backend.bat
    pause
    exit /b 1
)

REM Test 2: Check API endpoints
echo 2. Testing API endpoints...
curl -s http://localhost:8000/api/food/search?q=apple >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ API endpoints are accessible
) else (
    echo ❌ API endpoints not accessible. Check backend configuration.
)

echo.
echo 3. To run the Android app:
echo    1. Open Android Studio
echo    2. Open project: c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare
echo    3. Sync Gradle (File -^> Sync Project with Gradle Files)
echo    4. Connect Android device or start emulator
echo    5. Run app (Green play button)
echo.
echo 4. Test the app:
echo    - Register a new account
echo    - Login and view dashboard
echo    - Check meal logging and recommendations
echo.
echo 🎯 Integration ready!
pause
