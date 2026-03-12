# Hello World Flutter App

This repository contains a simple Flutter application whose only purpose is to display the text "Hello World" in the centre of the screen. It is a minimal project suitable for learning the basic structure of a Flutter application.

## Project Structure

```
hello_world_app/
├── pubspec.yaml            # project configuration and dependencies
├── lib/
│   └── main.dart           # application entry point and UI code
├── test/
│   └── widget_test.dart    # a simple widget test that checks for the text
└── README.md               # this file
```

The `lib/main.dart` file defines two widgets: `MyApp` and `HomePage`. Both are `StatelessWidget`s because they do not hold mutable state. `MyApp` sets up a `MaterialApp`, which is the root of the widget tree. `HomePage` uses a `Scaffold` to create a basic material design layout with an `AppBar` at the top and a `Center` widget in the body containing a `Text` widget.

### Running and testing

1. Fetch dependencies:
   ```bash
   flutter pub get
   ```
2. Run the app on any supported device (physical, emulator, desktop, or web):
   ```bash
   flutter run
   ```
3. Execute the widget test:
   ```bash
   flutter test test/widget_test.dart
   ```
