#!/bin/bash

echo "🚀 Testing AI NutriCare Integration"
echo "=================================="

# Test 1: Check if backend is running
echo "1. Testing backend connection..."
curl -s http://localhost:8000/docs > /dev/null
if [ $? -eq 0 ]; then
    echo "✅ Backend is running at http://localhost:8000"
else
    echo "❌ Backend is not running. Please start it first:"
    echo "   cd 'c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare'"
    echo "   start_backend.bat"
    exit 1
fi

# Test 2: Check API endpoints
echo "2. Testing API endpoints..."
curl -s http://localhost:8000/api/food/search?q=apple > /dev/null
if [ $? -eq 0 ]; then
    echo "✅ API endpoints are accessible"
else
    echo "❌ API endpoints not accessible. Check backend configuration."
fi

# Test 3: Instructions for running Android app
echo ""
echo "3. To run the Android app:"
echo "   1. Open Android Studio"
echo "   2. Open project: c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare"
echo "   3. Sync Gradle (File -> Sync Project with Gradle Files)"
echo "   4. Connect Android device or start emulator"
echo "   5. Run app (Green play button)"
echo ""
echo "4. Test the app:"
echo "   - Register a new account"
echo "   - Login and view dashboard"
echo "   - Check meal logging and recommendations"
echo ""
echo "🎯 Integration ready!"
