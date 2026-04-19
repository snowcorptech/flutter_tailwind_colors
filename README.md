# flutter_tailwind_colors
Tailwind CSS Colors for Flutter - Supporting All Tailwind CSS Versions

Dart package exposing Tailwind Colors to be used in Flutter in a way similar to the Material colors. Supports multiple Tailwind CSS versions with easy version switching.

## Supported Versions

- Tailwind CSS v2.0 ✅
- Tailwind CSS v3.0 ✅
- Tailwind CSS v3.1 ✅
- Tailwind CSS v3.2 ✅
- Tailwind CSS v3.3 ✅
- Tailwind CSS v3.4 ✅
- Tailwind CSS v4.0 ✅
- Tailwind CSS v4.1 ✅
- Tailwind CSS v4.2 ✅ (default)

All Tailwind CSS versions are now fully supported! You can switch between any version using `TWColors.setVersion()`.

## Installation

1. Add to your `pubspec.yaml` file:

```yaml
dependencies:
    flutter_tailwind_colors: ^0.0.6
```

2. Get the package via your IDE or via the command line by typing:
```bash
$ flutter pub get
```

3. Import the `flutter_tailwind_colors` package
```dart
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';
```

## How to Use

### Default Usage (v4.2)

Tailwind Colors can be created and used in the same way as the usual Material color palette.

```dart
// TWColors has shades starting from 50 up to 950 in increment of 50 or 100
Color primaryColor = TWColors.emerald.shade50;
Color secondColor = TWColors.rose.shade950;
```

### Version Switching

You can switch between different Tailwind CSS versions. **Version switching is global** - setting a version affects all color access throughout your entire application:

```dart
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';

// Use default (v4.2)
Color defaultColor = TWColors.blue.shade500;

// Switch to a different version (affects ALL color access globally)
TWColors.setVersion(TailwindVersion.v3_4);
Color v34Color = TWColors.blue.shade500; // Now uses v3.4
Color anotherColor = TWColors.emerald.shade400; // Also uses v3.4

// Check current version
print(TWColors.version); // TailwindVersion.v3_4

// Switch back to latest (v4.2) - affects all subsequent color access
TWColors.setVersion(TailwindVersion.latest);
```

**Important:** Since version switching is global, it's recommended to set the version once in your app initialization (e.g., in `main()` or `MaterialApp` setup) rather than switching it frequently.

### Available Colors

TWColors features all standard Tailwind CSS colors:
- slate
- gray
- zinc
- neutral
- stone
- taupe
- mauve
- mist
- olive
- red
- orange
- amber
- yellow
- lime
- green
- emerald
- teal
- cyan
- sky
- blue
- indigo
- violet
- purple
- fuchsia
- pink
- rose

Each color has shades from 50 to 950 (50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 950).

The color palette matches the [TailwindCSS official colors](https://tailwindcss.com/docs/customizing-colors).

## Use as a Theme

Every color from the TWColors palettes can be used in your Flutter theme:

```dart
return MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
    primarySwatch: TWColors.emerald,
    colorScheme: ColorScheme.fromSeed(
      seedColor: TWColors.emerald.shade500,
    ),
  ),
  home: MyHomePage(
    title: 'Flutter Demo Home Page',
  ),
);
```

## Notes

- By default, the package uses Tailwind CSS v4.2 colors
- **Version switching is global** - calling `TWColors.setVersion()` affects ALL color access throughout your entire application, across all files and widgets
- It's recommended to set the version once during app initialization (e.g., in `main()`)
- All Tailwind CSS versions (v2.0 through v4.2) are fully supported
- v2.0 uses different color names (blueGray, coolGray, trueGray, warmGray, lightBlue) but these are mapped to the v3+ names for compatibility
- Tailwind CSS v4.2 adds the taupe, mauve, mist, and olive palettes
- The package maintains backwards compatibility - existing code will continue to work
