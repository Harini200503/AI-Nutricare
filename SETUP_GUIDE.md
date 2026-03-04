# 🚀 Complete AI NutriCare Setup & Run Guide

## ✅ Issues Fixed

The compilation errors in `DashboardScreen.kt` have been resolved:
- Fixed import paths for `MealLog` and `FoodItem` (from `network` package)
- Added specific icon imports instead of wildcard imports
- All unresolved references are now resolved

## 📋 Step-by-Step Setup

### Step 1: Start the Backend Server

**Option A: Use the provided script**
```bash
cd "c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare"
start_backend.bat
```

**Option B: Manual setup**
```bash
cd "c:\Users\Gowtham\Windsurf Project\backend"
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python init_db.py
python run_backend.py
```

The backend should start and show:
```
Server will be available at: http://localhost:8000
API docs at: http://localhost:8000/docs
```

### Step 2: Verify Backend is Running

Open your browser and navigate to:
- **API Documentation**: http://localhost:8000/docs
- **Health Check**: http://localhost:8000

You should see the FastAPI documentation page.

### Step 3: Run the Android App

1. **Open Android Studio**
2. **Open Project**: `c:\Users\Gowtham\AndroidStudioProjects\Ai_Nutricare`
3. **Sync Gradle**: 
   - Go to `File` → `Sync Project with Gradle Files`
   - Wait for sync to complete (this may take a few minutes)
4. **Connect Device**:
   - Connect Android phone via USB (enable USB debugging)
   - OR start an Android emulator
5. **Run App**:
   - Click the green play button in Android Studio
   - Select your device/emulator
   - Wait for build and installation

### Step 4: Test the Application

1. **Register Account**:
   - Open the app
   - Click "Register"
   - Enter username, email, password, full name
   - Click "Register"

2. **Login**:
   - Use your credentials to login
   - You should see the dashboard

3. **Explore Features**:
   - **Dashboard**: View today's nutrition summary
   - **Meals**: See logged meals
   - **Recommendations**: View AI suggestions

## 🔧 Troubleshooting

### Android Studio Issues

**"Gradle sync failed"**
- Wait for dependencies to download
- Check internet connection
- Try `File` → `Invalidate Caches and Restart`

**"Build failed"**
- Check Android SDK is up to date
- Ensure minimum SDK (API 24+) is installed
- Clean and rebuild: `Build` → `Clean Project`

**Runtime crashes**
- Check backend server is running
- Verify API endpoints are accessible
- Check AndroidManifest.xml permissions

### Backend Issues

**"Python not found"**
- Install Python 3.8+ from python.org
- Add Python to PATH during installation

**"pip install fails"**
- Update pip: `python -m pip install --upgrade pip`
- Try installing packages individually

**"Database error"**
- Run `python init_db.py` to initialize database
- Check SQLite file permissions

### Network Issues

**"Cannot connect to backend"**
- Ensure backend is running on localhost:8000
- Check firewall isn't blocking the connection
- Verify Android device can access localhost (use 10.0.2.2 for emulator)

## 📱 App Features

### ✅ Working Now
- User registration and login
- Dashboard with nutrition summary
- Meal viewing and basic tracking
- API integration with backend

### 🚧 Next Features to Add
- Camera-based food detection
- Meal logging with search
- Profile management
- Push notifications

## 🎯 Quick Test Commands

Run these to verify everything works:

```bash
# Test backend
curl http://localhost:8000/docs

# Test API
curl http://localhost:8000/api/food/search?q=apple

# Run integration test
test_integration.bat
```

## 📞 Support

If you encounter issues:

1. **Backend not starting**: Check Python installation and dependencies
2. **Android app not building**: Verify Android SDK and Gradle sync
3. **API connection issues**: Ensure backend is running and accessible
4. **App crashes**: Check logs in Android Studio's Logcat

---

**🎉 Your AI NutriCare integration is now ready!** The Android app successfully connects to the comprehensive backend system, providing a complete nutrition monitoring solution.
