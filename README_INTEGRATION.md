# AI NutriCare - Integrated Android Application

## Overview

This project combines the basic Android template with the comprehensive AI NutriCare backend system, creating a fully functional nutrition monitoring application.

## Features

### ✅ Implemented
- **User Authentication**: Login and registration with JWT tokens
- **API Integration**: Full connectivity to FastAPI backend
- **Dashboard**: Overview of daily nutrition and meal tracking
- **Meal Logging**: Track food intake throughout the day
- **Recommendations**: AI-powered food suggestions
- **Modern UI**: Material Design 3 with Jetpack Compose

### 🚧 Backend Features Available
- **AI Food Detection**: CNN-based food recognition from images
- **Real-time Calorie Tracking**: Daily intake monitoring with analytics
- **Disease-Aware Diet Planning**: Personalized meal plans based on medical conditions
- **Health Risk Prediction**: ML models for predicting health risks
- **AI Nutrition Chatbot**: Intelligent assistant for nutrition queries

## Project Structure

```
Ai_Nutricare/
├── app/
│   ├── src/main/java/com/example/ai_nutricare/
│   │   ├── MainActivity.kt              # Main app entry point
│   │   ├── network/
│   │   │   └── ApiService.kt            # API client and data models
│   │   ├── viewmodel/
│   │   │   └── AuthViewModel.kt         # ViewModels for state management
│   │   └── ui/
│   │       ├── screens/
│   │       │   ├── AuthScreens.kt      # Login/Register screens
│   │       │   └── DashboardScreen.kt   # Main dashboard
│   │       └── theme/                   # App theming
│   ├── build.gradle.kts                 # Dependencies and build config
│   └── AndroidManifest.xml              # Permissions and configuration
├── start_backend.bat                    # Backend startup script
└── README_INTEGRATION.md               # This file
```

## Setup Instructions

### 1. Start the Backend Server

First, start the AI NutriCare backend server:

```bash
# Run the provided batch script
start_backend.bat
```

Or manually:

```bash
cd "c:\Users\Gowtham\Windsurf Project\backend"
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python init_db.py
python run_backend.py
```

The backend will be available at:
- **API Server**: http://localhost:8000
- **API Documentation**: http://localhost:8000/docs

### 2. Run the Android App

1. Open the project in Android Studio
2. Sync Gradle dependencies
3. Connect an Android device or start an emulator
4. Run the application

## API Integration

The Android app is configured to connect to the local backend server at `http://localhost:8000/api/`. 

### Key API Endpoints Used

- `POST /auth/login` - User authentication
- `POST /auth/register` - User registration
- `GET /users/profile` - Get user profile
- `GET /meals/today` - Get today's meals
- `POST /meals/log` - Log a new meal
- `GET /recommendations/daily` - Get daily recommendations
- `GET /food/search` - Search food database

## Dependencies Added

```kotlin
// Networking
implementation("com.squareup.retrofit2:retrofit:2.9.0")
implementation("com.squareup.retrofit2:converter-gson:2.9.0")
implementation("com.squareup.okhttp3:logging-interceptor:4.10.0")

// Navigation
implementation("androidx.navigation:navigation-compose:2.7.4")

// ViewModel
implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.7.0")

// Image loading
implementation("io.coil-kt:coil-compose:2.4.0")

// Camera (for future food detection)
implementation("androidx.camera:camera-camera2:1.3.0")
implementation("androidx.camera:camera-lifecycle:1.3.0")
implementation("androidx.camera:camera-view:1.3.0")
```

## Next Steps

### Phase 1: Core Features ✅
- [x] Authentication system
- [x] Basic dashboard
- [x] Meal logging
- [x] API integration

### Phase 2: Enhanced Features (Next)
- [ ] Camera integration for food detection
- [ ] Profile management
- [ ] Detailed nutrition analytics
- [ ] Push notifications for meal reminders

### Phase 3: Advanced Features
- [ ] AI chatbot integration
- [ ] Disease-aware recommendations
- [ ] Health risk predictions
- [ ] Offline mode support

## Troubleshooting

### Backend Connection Issues
1. Ensure the backend server is running on `localhost:8000`
2. Check that the API endpoints are accessible at http://localhost:8000/docs
3. Verify network permissions in AndroidManifest.xml

### Build Issues
1. Sync Gradle dependencies in Android Studio
2. Check for minimum SDK compatibility (API 24+)
3. Ensure all required permissions are granted

### Authentication Issues
1. Verify backend database is initialized
2. Check JWT secret configuration in backend .env file
3. Ensure API endpoints are correctly configured

## Architecture

The app follows MVVM architecture with:
- **View**: Jetpack Compose UI screens
- **ViewModel**: State management and business logic
- **Model**: Data classes and API models
- **Repository**: API client (Retrofit)

## Security

- JWT-based authentication
- HTTPS communication (recommended for production)
- Input validation and sanitization
- Secure token storage (implementation needed)

## Performance

- Lazy loading for large lists
- Image caching with Coil
- Efficient state management with StateFlow
- Network request optimization

---

**Note**: This integration provides a solid foundation for the AI NutriCare Android app. The backend contains advanced AI features that can be gradually integrated into the mobile app.
