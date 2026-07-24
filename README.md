# BMI Calculator

A simple Flutter application that calculates a user's Body Mass Index (BMI) based on their weight and height. The app categorizes the BMI result according to standard BMI ranges and provides a clean, user-friendly interface for quick calculations.

## Features

* Calculate BMI using weight in kilograms.
* Enter height in feet and inches.
* Display BMI with two decimal places.
* Classify BMI into:

  * Underweight
  * Normal Weight
  * Overweight
  * Obese
* Simple and responsive user interface.

## Built With

* Flutter
* Dart

## Getting Started

### Prerequisites

Before running the project, make sure you have the following installed:

* Flutter SDK
* Dart SDK
* Android Studio or Visual Studio Code
* An Android emulator or a physical Android device

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/mohsin-ds/bmi-calculator.git
   ```

2. Navigate to the project directory:

   ```bash
   cd bmi-calculator
   ```

3. Install the required dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## Project Structure

```text
lib/
├── ui_helper/
├── widgets/
├── splash_screen.dart
└── main.dart

assets/
android/
ios/
web/
windows/
linux/
macos/
```

## BMI Formula

The application calculates BMI using the standard formula:

```text
BMI = Weight (kg) / Height² (m²)
```

The entered height (feet and inches) is converted into meters before performing the calculation.

## Future Improvements

* Save BMI calculation history.
* Support metric and imperial unit selection.
* Add dark mode.
* Improve input validation and error handling.
* Display health recommendations based on BMI.

## Author

**Muhammad Mohsin**
Software Engineering Student

GitHub: https://github.com/mohsin-ds

Repository: https://github.com/mohsin-ds/bmi-calculator

## License

This project is available for educational and learning purposes.
