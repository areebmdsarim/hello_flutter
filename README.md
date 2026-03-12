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

### Widgets explained

* **`StatelessWidget` vs `StatefulWidget`**
  * A stateless widget is immutable: once created, its properties cannot change. The framework may rebuild it when its parent changes, but the widget itself carries no state.
  * A stateful widget works with an associated `State` object; that state can change over time and calling `setState()` causes the `build()` method to run again. Stateful widgets are used for counters, forms, animations, etc.

* **`MaterialApp`**
  * Provides material design defaults (themes, navigator, scaffold messenger, locales, etc.). It also defines the default route (`home`) used by the app.

* **`Scaffold`**
  * A convenience widget that implements the basic visual layout structure of material apps: app bar, body, floating button, drawer, etc. It handles default padding to avoid intrusions by the operating system (status bar, notch, etc.).

* **`AppBar`**
  * A material design top app bar. It typically holds the title, navigation icons, and action buttons.

* **`Center`**
  * Lays out its child in the middle of the available space. Here it's used to center the `Text` widget.

* **`Text`**
  * Displays a string of text with a given style. In this case "Hello World" with slightly larger font.

### The `build()` method

Every widget defines a `build(BuildContext)` method that returns a subtree of widgets. The framework calls `build()` whenever:

1. The widget is first inserted into the tree.
2. The parent widget changes configuration and asks this widget to rebuild.
3. For stateful widgets, when `setState()` is invoked.

Flutter constructs an **element tree** from the widgets, diffing new widget trees against old ones for efficient updates. Widgets themselves are lightweight descriptions; elements hold the mutable state and render objects.

### Hot reload

While the app is running in debug mode, modifying Dart source (e.g. changing the text or style in `HomePage`) and saving the file triggers a hot reload. The framework updates the Dart VM with the new code and rebuilds only the affected widgets, preserving in‑memory state (such as user input or scroll position). This allows rapid iteration during development.

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

The test verifies that the application renders one widget containing the string "Hello World".

---

Feel free to modify the code or add stateful behaviour as you continue learning Flutter.

