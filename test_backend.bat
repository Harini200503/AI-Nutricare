@echo off
echo 🔧 TESTING BACKEND CONNECTION
echo ==============================

echo 1. Checking if backend is running...
curl -s http://localhost:8000/docs >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Backend is running at http://localhost:8000
    echo.
    echo 2. Testing API endpoints...
    curl -s http://localhost:8000/api/food/search?q=apple
    echo.
    echo ✅ API is working!
    echo.
    echo 🌐 Now open web_app.html in browser - it should connect to backend!
) else (
    echo ❌ Backend is not running
    echo.
    echo To start backend:
    echo   cd "c:\Users\Gowtham\Windsurf Project\backend"
    echo   python -m uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
)

echo.
pause
