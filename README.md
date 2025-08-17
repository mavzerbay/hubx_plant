# HubX Plant App 🌱

A pixel-perfect Flutter application implementing a plant identification and care platform with onboarding flow, home screen, and premium paywall functionality.

## 📋 Table of Contents

- [Features](#-features)
- [Architecture](#-architecture)
- [Project Structure](#-project-structure)
- [Tech Stack](#-tech-stack)
- [Getting Started](#-getting-started)
- [Application Flows](#-application-flows)
- [UI Components](#-ui-components)
- [State Management](#-state-management)
- [Networking](#-networking)
- [Localization](#-localization)
- [Testing](#-testing)
- [Code Quality](#-code-quality)

## 🚀 Features

- **Pixel-perfect UI** implementation based on Figma designs
- **Clean Architecture** with separation of concerns
- **Onboarding Flow** with smooth transitions and page indicators
- **Home Screen** with plant categories, premium features, and search functionality
- **Premium Paywall** with subscription options and feature highlights
- **Responsive Design** supporting multiple screen sizes
- **Dark/Light Theme** support
- **Multi-language** support (English & Turkish)
- **Firebase** integration for analytics and crashlytics

## 🏗 Architecture

This project follows **Clean Architecture** principles with a feature-first approach:

```
lib/
├── src/
│   ├── app/                    # Presentation Layer
│   │   ├── base/              # Base classes and abstractions
│   │   ├── bloc/              # Global state management
│   │   ├── components/        # Reusable UI components
│   │   ├── navigation/        # Auto Route navigation
│   │   ├── pages/             # Feature pages
│   │   │   ├── onboarding/    # Onboarding feature
│   │   │   ├── home/          # Home feature
│   │   │   ├── paywall/       # Paywall feature
│   │   │   └── ...
│   │   └── resource/          # Styles, colors, themes
│   ├── data/                  # Data Layer
│   │   ├── abstractions/      # Repository implementations
│   │   └── models/            # Data models & DTOs
│   ├── domain/                # Domain Layer
│   │   ├── entities/          # Business entities
│   │   ├── repositories/      # Repositories
│   │   ├── navigation/        # Navigation interfaces
│   │   └── usecases/          # Business logic
│   └── shared/                # Shared utilities
```

### Key Architectural Decisions

- **BLoC Pattern** for predictable state management
- **Repository Pattern** for data abstraction
- **Dependency Injection** using GetIt
- **Feature-based** folder organization
- **Immutable Models** using Freezed
- **Code Generation** for boilerplate reduction

## 📁 Project Structure

```
hubx_plant/
├── assets/
│   ├── i18n/                  # Localization files
│   ├── images/                # Static images
│   └── icons/                 # App icons
├── lib/
│   ├── gen/                   # Generated files
│   ├── src/
│   │   ├── app/               # Application layer
│   │   │   ├── base/          # Base classes
│   │   │   │   ├── bloc/      # Base BLoC classes
│   │   │   │   └── page_states/ # Base page states
│   │   │   ├── bloc/          # Global app BLoC
│   │   │   ├── components/    # Reusable widgets
│   │   │   │   ├── buttons/   # Button components
│   │   │   │   ├── cards/     # Card components
│   │   │   │   └── ...
│   │   │   ├── di/            # Dependency injection
│   │   │   ├── navigation/    # Auto Route setup
│   │   │   ├── network/       # Network clients
│   │   │   ├── pages/         # Feature pages
│   │   │   │   ├── onboarding/
│   │   │   │   │   ├── bloc/  # Onboarding BLoC
│   │   │   │   │   ├── components/ # Page components
│   │   │   │   │   └── models/ # Page models
│   │   │   │   ├── home/
│   │   │   │   │   ├── bloc/  # Home BLoC
│   │   │   │   │   └── components/ # Home components
│   │   │   │   └── paywall/   # Paywall feature
│   │   │   ├── resource/      # App resources
│   │   │   │   └── styles/    # Colors, text styles
│   │   │   └── services/      # App services
│   │   ├── data/              # Data layer
│   │   │   ├── abstractions/  # Repository interfaces
│   │   │   └── models/        # Data models
│   │   ├── domain/            # Domain layer
│   │   │   ├── entities/      # Business entities
│   │   │   ├── navigation/    # Navigation entities
│   │   │   └── repositories/  # Repositories
│   │   └── shared/            # Shared utilities
│   └── main.dart              # App entry point
├── test/                      # Test files
├── pubspec.yaml              # Dependencies
└── README.md                 # This file
```

## 🛠 Tech Stack

### Core
- **Flutter** 3.8.0+ - UI Framework
- **Dart** 3.8.0+ - Programming Language

### State Management
- **flutter_bloc** ^9.1.1 - BLoC pattern implementation
- **bloc** ^9.0.0 - Core BLoC library

### Navigation
- **auto_route** ^10.1.0+1 - Declarative routing

### Networking
- **dio** ^5.9.0 - HTTP client with interceptors
- **retrofit** ^4.7.1 - Type-safe HTTP client generator
- **pretty_dio_logger** ^1.4.0 - Network logging

### Code Generation
- **freezed** ^3.1.0 - Immutable classes and unions
- **json_serializable** ^6.9.5 - JSON serialization
- **build_runner** ^2.5.4 - Code generation runner

### UI & Design
- **flutter_screenutil** ^5.9.3 - Responsive design
- **cached_network_image** ^3.4.1 - Optimized image loading
- **shimmer** ^3.0.0 - Loading animations
- **lottie** ^3.3.1 - Vector animations

### Localization
- **slang_flutter** ^4.8.0 - Type-safe i18n

### Firebase
- **firebase_core** ^3.13.0 - Firebase SDK
- **firebase_analytics** ^11.4.5 - Analytics
- **firebase_crashlytics** ^4.3.5 - Crash reporting

### Testing
- **bloc_test** ^10.0.0 - BLoC testing utilities
- **mocktail** ^1.0.4 - Mocking framework

### Code Quality
- **very_good_analysis** ^9.0.0 - Lint rules

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.8.0+
- Dart SDK 3.8.0+
- Firebase project setup (optional)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd hubx_plant
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Generate localization**
   ```bash
   dart run slang
   ```

5. **Run the app**
   ```bash
   flutter run
   ```

### Build Commands

```bash
# Development build
flutter run --debug

# Run tests
flutter test

# Generate code
dart run build_runner build --delete-conflicting-outputs

# Watch for changes and generate code
dart run build_runner watch --delete-conflicting-outputs

# Generate localization
dart run slang
```

## 🔄 Application Flows

### 1. Onboarding Flow
- **Entry Point**: First app launch
- **Pages**: 3 onboarding screens with smooth transitions
- **Features**: Page indicators, skip functionality, smooth animations
- **Exit**: Navigates to paywall, then to home screen
- **Persistence**: Completed onboarding is remembered

### 2. Main Application Flow
- **Home Screen**: Plant categories, premium features, search
- **Navigation**: Bottom tab navigation with floating action button
- **Features**: Plant identification, care guides, premium content

### Flow Diagram
```
App Launch → Splash → Onboarding (if first time) → Paywall → Home Screen
                ↓                                    ↓
            Skip/Complete → → → → → → → → → → → → → → → ↗
```

## 🎨 UI Components

### Design System
- **Color Scheme**: Plant-themed with green primary colors
- **Typography**: Custom text styles with proper hierarchy
- **Components**: Reusable buttons, cards, and form elements
- **Layout**: Responsive design using ScreenUtil
- **Animations**: Smooth transitions and loading states

### Key Components
- **PrimaryButton**: Main action buttons with gradients
- **HomeGreetingSection**: Hero section with search functionality
- **HomePremiumCard**: Premium feature highlighting
- **OnboardingPageIndicator**: Custom page indicators
- **PaywallFeatureCard**: Feature showcase cards

### Responsive Design
```dart
// Screen size adaptation
Container(
  width: 200.w,        // Adaptive width
  height: 100.h,       // Adaptive height
  margin: EdgeInsets.symmetric(horizontal: 20.w),
)

// Text scaling
Text(
  'Hello',
  style: TextStyle(fontSize: 16.sp), // Scalable font size
)
```

## 🔧 State Management

### BLoC Architecture
Each feature follows the BLoC pattern with:
- **Events**: User interactions and system events
- **States**: UI states with loading, success, and error handling
- **BLoC**: Business logic controllers

### Example: Home BLoC
```dart
// Events
abstract class HomeEvent {
  const HomeEvent._();
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getCategories() = _GetCategories;
}

// States
abstract class HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    List<CategoryModel>? categories,
  }) = _HomeState;
}

// BLoC
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  // Implementation
}
```

### Global State
- **AppBloc**: Manages app-wide state (theme, locale, user session)
- **NavigationBloc**: Handles navigation state and routing

## 🌐 Networking

### HTTP Client Setup
```dart
@RestApi(baseUrl: "https://dummy-api-jtg6bessta-ey.a.run.app/")
abstract class DataClient {
  factory DataClient(Dio dio, {String baseUrl}) = _DataClient;

  @GET("/getQuestions")
  Future<List<QuestionModel>> getQuestions();

  @GET("/getCategories")
  Future<CategoryResponseModel?> getCategories();
}
```

### Features
- **Dio**: HTTP client with interceptors
- **Retry Logic**: Automatic retry on network failures
- **Error Handling**: Structured error responses
- **Logging**: Pretty network request/response logging

### Model Classes
```dart
@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    required String title,
    required ImageModel image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
```

## 🌍 Localization

### Setup
- **Slang**: Type-safe internationalization
- **Languages**: English (en), Turkish (tr)
- **Structure**: JSON-based translation files

### Usage
```dart
// In widgets
Text(locale.home.greeting.hiPlantLover)
Text(locale.paywall.pricing.monthly.title)

// With parameters
Text(locale.paywall.pricing.yearly.description(amount: 529.99))
```

### File Structure
```
assets/i18n/
├── en.json    # English translations
└── tr.json    # Turkish translations
```

## 📊 Code Quality

### Static Analysis
- **very_good_analysis**: Comprehensive lint rules
- **Custom rules**: Project-specific linting
- **CI/CD**: Automated code quality checks

### Code Generation
```bash
# Generate all code
dart run build_runner build --delete-conflicting-outputs

# Watch for changes
dart run build_runner watch --delete-conflicting-outputs

# Generate specific types
dart run build_runner build --build-filter="lib/src/data/models/*.dart"
```

### Formatting
```bash
# Format code
dart format .

# Analyze code
flutter analyze

# Check unused dependencies
dart pub deps
```

## 🚀 Performance Optimizations

### Image Optimization
- **CachedNetworkImage**: Automatic caching and optimization
- **Lazy Loading**: On-demand image loading
- **Placeholder**: Shimmer loading effects

### Widget Optimization
- **const constructors**: Compile-time constants
- **RepaintBoundary**: Isolated repaints
- **ListView.builder**: Lazy list rendering

### State Management
- **Selective rebuilds**: BlocBuilder with buildWhen
- **State persistence**: Automatic state caching
- **Memory management**: Proper BLoC disposal

## 📱 Responsive Design

### Screen Adaptation
```dart
// Initialize ScreenUtil
ScreenUtil.init(
  context,
  designSize: const Size(375, 812), // iPhone X design size
);

// Responsive dimensions
Container(
  width: 200.w,      // Responsive width
  height: 100.h,     // Responsive height
  padding: EdgeInsets.all(16.w), // Responsive padding
)
```

### Breakpoints
- **Mobile**: < 600dp
- **Tablet**: 600dp - 1200dp  
- **Desktop**: > 1200dp

## 🔐 Security

### Data Protection
- **Encrypted SharedPreferences**: Sensitive data storage
- **Obfuscation**: Code protection in release builds

### Privacy
- **Firebase Analytics**: User behavior tracking
- **Crashlytics**: Anonymous crash reporting
- **GDPR Compliance**: Privacy-first approach

## 🚀 Deployment

### Build Configuration
```bash
# Android APK
flutter build apk --release --obfuscate --split-debug-info=debug-info/

# iOS IPA  
flutter build ipa --release --obfuscate --split-debug-info=debug-info/
```

### Environment Configuration
- **Development**: Debug builds with logging
- **Staging**: Release builds with test data
- **Production**: Optimized builds with analytics

## 📈 Monitoring

### Analytics
- **Firebase Analytics**: User engagement tracking
- **Custom Events**: Feature usage metrics
- **Performance**: App startup and navigation timing

### Crash Reporting
- **Firebase Crashlytics**: Automatic crash collection
- **Custom Logging**: Detailed error context
- **User Feedback**: In-app error reporting

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Code Standards
- Follow Dart style guide
- Write comprehensive tests
- Update documentation
- Use conventional commits

## 📄 License

This project is proprietary and confidential. All rights reserved.

---

**Built with ❤️ using Flutter**

For more information, please contact the development team.
