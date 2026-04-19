/// Tailwind CSS Colors for Flutter
///
/// This library provides Tailwind CSS color palettes for Flutter applications,
/// supporting multiple Tailwind CSS versions (v2.0 through v4.2) with easy version switching.
///
/// The package exposes colors in a way similar to Material colors, making it easy
/// to use Tailwind colors in Flutter themes and widgets.
///
/// Example usage:
/// ```dart
/// import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';
///
/// // Default (v4.2)
/// Color primaryColor = TWColors.emerald.shade400;
///
/// // Switch to a different version
/// TWColors.setVersion(TailwindVersion.v3_4);
/// Color v34Color = TWColors.emerald.shade400;
/// ```
library flutter_tailwind_colors;

import 'package:flutter/material.dart';
import 'tailwind_version.dart';
import 'tailwind_color_manager.dart';

// Export TailwindVersion for public use
export 'tailwind_version.dart';

///  Created by Snowcorp Technologies
///  www.snowcorp.org
///  support@snowcorp.org

/// Tailwind CSS Colors for Flutter
///
/// Supports multiple Tailwind CSS versions. By default, uses Tailwind CSS v4.2 colors.
///
/// Example usage:
/// ```dart
/// // Default (v4.2)
/// Color primaryColor = TWColors.emerald.shade400;
///
/// // Switch to a different version
/// TWColors.setVersion(TailwindVersion.v3_4);
/// Color v34Color = TWColors.emerald.shade400;
/// ```
class TWColors {
  /// Private constructor to prevent instantiation.
  ///
  /// This class is meant to be used statically only.
  TWColors._();

  /// Set the Tailwind CSS version to use globally.
  ///
  /// **Important:** This affects ALL color access throughout your entire application.
  /// It's recommended to set the version once during app initialization (e.g., in `main()`).
  ///
  /// ```dart
  /// // Set version once at app startup
  /// void main() {
  ///   TWColors.setVersion(TailwindVersion.v4_2);
  ///   runApp(MyApp());
  /// }
  /// ```
  static void setVersion(TailwindVersion version) {
    TailwindColorManager.setVersion(version);
  }

  /// Get the current Tailwind CSS version
  static TailwindVersion get version => TailwindColorManager.currentVersion;

  /// The transparent primary color.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.transparent,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const Color transparent = Colors.transparent;

  /// The white primary color.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.white,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const Color white = Colors.white;

  /// The black primary color.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.black,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static const Color black = Colors.black;

  /// The slate primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.slate.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get slate => TailwindColorManager.getColor('slate');

  /// The gray primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.gray.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get gray => TailwindColorManager.getColor('gray');

  /// The zinc primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.zinc.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get zinc => TailwindColorManager.getColor('zinc');

  /// The neutral primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.neutral.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get neutral => TailwindColorManager.getColor('neutral');

  /// The stone primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.stone.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get stone => TailwindColorManager.getColor('stone');

  /// The taupe primary color and swatch.
  ///
  /// Available in Tailwind CSS v4.2 and later.
  static MaterialColor get taupe => TailwindColorManager.getColor('taupe');

  /// The mauve primary color and swatch.
  ///
  /// Available in Tailwind CSS v4.2 and later.
  static MaterialColor get mauve => TailwindColorManager.getColor('mauve');

  /// The mist primary color and swatch.
  ///
  /// Available in Tailwind CSS v4.2 and later.
  static MaterialColor get mist => TailwindColorManager.getColor('mist');

  /// The olive primary color and swatch.
  ///
  /// Available in Tailwind CSS v4.2 and later.
  static MaterialColor get olive => TailwindColorManager.getColor('olive');

  /// The red primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.red.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get red => TailwindColorManager.getColor('red');

  /// The orange primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.orange.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get orange => TailwindColorManager.getColor('orange');

  /// The amber primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.amber.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get amber => TailwindColorManager.getColor('amber');

  /// The yellow primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.yellow.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get yellow => TailwindColorManager.getColor('yellow');

  /// The lime primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.lime.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get lime => TailwindColorManager.getColor('lime');

  /// The green primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.green.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get green => TailwindColorManager.getColor('green');

  /// The emerald primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.emerald.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get emerald => TailwindColorManager.getColor('emerald');

  /// The teal primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.teal.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get teal => TailwindColorManager.getColor('teal');

  /// The cyan primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.cyan.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get cyan => TailwindColorManager.getColor('cyan');

  /// The sky primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.sky.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get sky => TailwindColorManager.getColor('sky');

  /// The blue primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.blue.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get blue => TailwindColorManager.getColor('blue');

  /// The indigo primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.indigo.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get indigo => TailwindColorManager.getColor('indigo');

  /// The violet primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.violet.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get violet => TailwindColorManager.getColor('violet');

  /// The purple primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.purple.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get purple => TailwindColorManager.getColor('purple');

  /// The fuchsia primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.fuchsia.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get fuchsia => TailwindColorManager.getColor('fuchsia');

  /// The pink primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.pink.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get pink => TailwindColorManager.getColor('pink');

  /// The rose primary color and swatch.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: TWColors.rose.shade400,
  /// )
  /// ```
  /// {@end-tool}
  ///
  static MaterialColor get rose => TailwindColorManager.getColor('rose');
}
