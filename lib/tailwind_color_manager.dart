import 'package:flutter/material.dart';
import 'tailwind_version.dart';
import 'colors/tailwind_v2_0_colors.dart';
import 'colors/tailwind_v3_0_colors.dart';
import 'colors/tailwind_v3_1_colors.dart';
import 'colors/tailwind_v3_2_colors.dart';
import 'colors/tailwind_v3_3_colors.dart';
import 'colors/tailwind_v3_4_colors.dart';
import 'colors/tailwind_v4_0_colors.dart';
import 'colors/tailwind_v4_1_colors.dart';
import 'colors/tailwind_v4_2_colors.dart';

/// Manages Tailwind CSS color palettes for different versions.
///
/// This class provides a centralized way to access color palettes from different
/// Tailwind CSS versions. It maintains the current version state and provides
/// methods to switch between versions and retrieve colors.
///
/// The version switching is global - setting a version affects all color access
/// throughout the application.
class TailwindColorManager {
  /// Private constructor to prevent instantiation.
  ///
  /// This class is meant to be used statically only.
  TailwindColorManager._();
  static TailwindVersion _currentVersion = TailwindVersion.v4_2;

  /// Set the current Tailwind CSS version
  static void setVersion(TailwindVersion version) {
    if (version == TailwindVersion.latest) {
      _currentVersion = TailwindVersion.v4_2;
    } else {
      _currentVersion = version;
    }
  }

  /// Get the current Tailwind CSS version
  static TailwindVersion get currentVersion => _currentVersion;

  /// Get a color by name for the current version
  static MaterialColor getColor(String name) {
    final palette = _getPalette(_currentVersion);
    return palette[name] ?? palette['gray']!;
  }

  /// Get all colors for a specific version
  static Map<String, MaterialColor> getPalette(TailwindVersion version) {
    return _getPalette(version);
  }

  static Map<String, MaterialColor> _getPalette(TailwindVersion version) {
    // Normalize latest to v4_2
    final normalizedVersion =
        version == TailwindVersion.latest ? TailwindVersion.v4_2 : version;

    switch (normalizedVersion) {
      case TailwindVersion.v2_0:
        // v2.0 uses different naming conventions
        return {
          'slate': TailwindV20Colors.blueGray, // blueGray in v2.0
          'blueGray': TailwindV20Colors.blueGray,
          'gray': TailwindV20Colors.coolGray, // coolGray in v2.0
          'coolGray': TailwindV20Colors.coolGray,
          'zinc': TailwindV20Colors.coolGray, // fallback
          'neutral': TailwindV20Colors.trueGray, // trueGray in v2.0
          'trueGray': TailwindV20Colors.trueGray,
          'stone': TailwindV20Colors.warmGray, // warmGray in v2.0
          'warmGray': TailwindV20Colors.warmGray,
          'red': TailwindV20Colors.red,
          'orange': TailwindV20Colors.orange,
          'amber': TailwindV20Colors.amber,
          'yellow': TailwindV20Colors.yellow,
          'lime': TailwindV20Colors.lime,
          'green': TailwindV20Colors.green,
          'emerald': TailwindV20Colors.emerald,
          'teal': TailwindV20Colors.teal,
          'cyan': TailwindV20Colors.cyan,
          'sky': TailwindV20Colors.lightBlue, // lightBlue in v2.0
          'lightBlue': TailwindV20Colors.lightBlue,
          'blue': TailwindV20Colors.blue,
          'indigo': TailwindV20Colors.indigo,
          'violet': TailwindV20Colors.violet,
          'purple': TailwindV20Colors.purple,
          'fuchsia': TailwindV20Colors.fuchsia,
          'pink': TailwindV20Colors.pink,
          'rose': TailwindV20Colors.rose,
        };
      case TailwindVersion.v3_0:
        return {
          'slate': TailwindV30Colors.slate,
          'gray': TailwindV30Colors.gray,
          'zinc': TailwindV30Colors.zinc,
          'neutral': TailwindV30Colors.neutral,
          'stone': TailwindV30Colors.stone,
          'red': TailwindV30Colors.red,
          'orange': TailwindV30Colors.orange,
          'amber': TailwindV30Colors.amber,
          'yellow': TailwindV30Colors.yellow,
          'lime': TailwindV30Colors.lime,
          'green': TailwindV30Colors.green,
          'emerald': TailwindV30Colors.emerald,
          'teal': TailwindV30Colors.teal,
          'cyan': TailwindV30Colors.cyan,
          'sky': TailwindV30Colors.sky,
          'blue': TailwindV30Colors.blue,
          'indigo': TailwindV30Colors.indigo,
          'violet': TailwindV30Colors.violet,
          'purple': TailwindV30Colors.purple,
          'fuchsia': TailwindV30Colors.fuchsia,
          'pink': TailwindV30Colors.pink,
          'rose': TailwindV30Colors.rose,
        };
      case TailwindVersion.v3_1:
        return {
          'slate': TailwindV31Colors.slate,
          'gray': TailwindV31Colors.gray,
          'zinc': TailwindV31Colors.zinc,
          'neutral': TailwindV31Colors.neutral,
          'stone': TailwindV31Colors.stone,
          'red': TailwindV31Colors.red,
          'orange': TailwindV31Colors.orange,
          'amber': TailwindV31Colors.amber,
          'yellow': TailwindV31Colors.yellow,
          'lime': TailwindV31Colors.lime,
          'green': TailwindV31Colors.green,
          'emerald': TailwindV31Colors.emerald,
          'teal': TailwindV31Colors.teal,
          'cyan': TailwindV31Colors.cyan,
          'sky': TailwindV31Colors.sky,
          'blue': TailwindV31Colors.blue,
          'indigo': TailwindV31Colors.indigo,
          'violet': TailwindV31Colors.violet,
          'purple': TailwindV31Colors.purple,
          'fuchsia': TailwindV31Colors.fuchsia,
          'pink': TailwindV31Colors.pink,
          'rose': TailwindV31Colors.rose,
        };
      case TailwindVersion.v3_2:
        return {
          'slate': TailwindV32Colors.slate,
          'gray': TailwindV32Colors.gray,
          'zinc': TailwindV32Colors.zinc,
          'neutral': TailwindV32Colors.neutral,
          'stone': TailwindV32Colors.stone,
          'red': TailwindV32Colors.red,
          'orange': TailwindV32Colors.orange,
          'amber': TailwindV32Colors.amber,
          'yellow': TailwindV32Colors.yellow,
          'lime': TailwindV32Colors.lime,
          'green': TailwindV32Colors.green,
          'emerald': TailwindV32Colors.emerald,
          'teal': TailwindV32Colors.teal,
          'cyan': TailwindV32Colors.cyan,
          'sky': TailwindV32Colors.sky,
          'blue': TailwindV32Colors.blue,
          'indigo': TailwindV32Colors.indigo,
          'violet': TailwindV32Colors.violet,
          'purple': TailwindV32Colors.purple,
          'fuchsia': TailwindV32Colors.fuchsia,
          'pink': TailwindV32Colors.pink,
          'rose': TailwindV32Colors.rose,
        };
      case TailwindVersion.v3_3:
        return {
          'slate': TailwindV33Colors.slate,
          'gray': TailwindV33Colors.gray,
          'zinc': TailwindV33Colors.zinc,
          'neutral': TailwindV33Colors.neutral,
          'stone': TailwindV33Colors.stone,
          'red': TailwindV33Colors.red,
          'orange': TailwindV33Colors.orange,
          'amber': TailwindV33Colors.amber,
          'yellow': TailwindV33Colors.yellow,
          'lime': TailwindV33Colors.lime,
          'green': TailwindV33Colors.green,
          'emerald': TailwindV33Colors.emerald,
          'teal': TailwindV33Colors.teal,
          'cyan': TailwindV33Colors.cyan,
          'sky': TailwindV33Colors.sky,
          'blue': TailwindV33Colors.blue,
          'indigo': TailwindV33Colors.indigo,
          'violet': TailwindV33Colors.violet,
          'purple': TailwindV33Colors.purple,
          'fuchsia': TailwindV33Colors.fuchsia,
          'pink': TailwindV33Colors.pink,
          'rose': TailwindV33Colors.rose,
        };
      case TailwindVersion.v3_4:
        return {
          'slate': TailwindV34Colors.slate,
          'gray': TailwindV34Colors.gray,
          'zinc': TailwindV34Colors.zinc,
          'neutral': TailwindV34Colors.neutral,
          'stone': TailwindV34Colors.stone,
          'red': TailwindV34Colors.red,
          'orange': TailwindV34Colors.orange,
          'amber': TailwindV34Colors.amber,
          'yellow': TailwindV34Colors.yellow,
          'lime': TailwindV34Colors.lime,
          'green': TailwindV34Colors.green,
          'emerald': TailwindV34Colors.emerald,
          'teal': TailwindV34Colors.teal,
          'cyan': TailwindV34Colors.cyan,
          'sky': TailwindV34Colors.sky,
          'blue': TailwindV34Colors.blue,
          'indigo': TailwindV34Colors.indigo,
          'violet': TailwindV34Colors.violet,
          'purple': TailwindV34Colors.purple,
          'fuchsia': TailwindV34Colors.fuchsia,
          'pink': TailwindV34Colors.pink,
          'rose': TailwindV34Colors.rose,
        };
      case TailwindVersion.v4_0:
        return {
          'slate': TailwindV40Colors.slate,
          'gray': TailwindV40Colors.gray,
          'zinc': TailwindV40Colors.zinc,
          'neutral': TailwindV40Colors.neutral,
          'stone': TailwindV40Colors.stone,
          'red': TailwindV40Colors.red,
          'orange': TailwindV40Colors.orange,
          'amber': TailwindV40Colors.amber,
          'yellow': TailwindV40Colors.yellow,
          'lime': TailwindV40Colors.lime,
          'green': TailwindV40Colors.green,
          'emerald': TailwindV40Colors.emerald,
          'teal': TailwindV40Colors.teal,
          'cyan': TailwindV40Colors.cyan,
          'sky': TailwindV40Colors.sky,
          'blue': TailwindV40Colors.blue,
          'indigo': TailwindV40Colors.indigo,
          'violet': TailwindV40Colors.violet,
          'purple': TailwindV40Colors.purple,
          'fuchsia': TailwindV40Colors.fuchsia,
          'pink': TailwindV40Colors.pink,
          'rose': TailwindV40Colors.rose,
        };
      case TailwindVersion.v4_1:
        return {
          'slate': TailwindV41Colors.slate,
          'gray': TailwindV41Colors.gray,
          'zinc': TailwindV41Colors.zinc,
          'neutral': TailwindV41Colors.neutral,
          'stone': TailwindV41Colors.stone,
          'red': TailwindV41Colors.red,
          'orange': TailwindV41Colors.orange,
          'amber': TailwindV41Colors.amber,
          'yellow': TailwindV41Colors.yellow,
          'lime': TailwindV41Colors.lime,
          'green': TailwindV41Colors.green,
          'emerald': TailwindV41Colors.emerald,
          'teal': TailwindV41Colors.teal,
          'cyan': TailwindV41Colors.cyan,
          'sky': TailwindV41Colors.sky,
          'blue': TailwindV41Colors.blue,
          'indigo': TailwindV41Colors.indigo,
          'violet': TailwindV41Colors.violet,
          'purple': TailwindV41Colors.purple,
          'fuchsia': TailwindV41Colors.fuchsia,
          'pink': TailwindV41Colors.pink,
          'rose': TailwindV41Colors.rose,
        };
      case TailwindVersion.v4_2:
        return {
          'slate': TailwindV42Colors.slate,
          'gray': TailwindV42Colors.gray,
          'zinc': TailwindV42Colors.zinc,
          'neutral': TailwindV42Colors.neutral,
          'stone': TailwindV42Colors.stone,
          'red': TailwindV42Colors.red,
          'orange': TailwindV42Colors.orange,
          'amber': TailwindV42Colors.amber,
          'yellow': TailwindV42Colors.yellow,
          'lime': TailwindV42Colors.lime,
          'green': TailwindV42Colors.green,
          'emerald': TailwindV42Colors.emerald,
          'teal': TailwindV42Colors.teal,
          'cyan': TailwindV42Colors.cyan,
          'sky': TailwindV42Colors.sky,
          'blue': TailwindV42Colors.blue,
          'indigo': TailwindV42Colors.indigo,
          'violet': TailwindV42Colors.violet,
          'purple': TailwindV42Colors.purple,
          'fuchsia': TailwindV42Colors.fuchsia,
          'pink': TailwindV42Colors.pink,
          'rose': TailwindV42Colors.rose,
          'taupe': TailwindV42Colors.taupe,
          'mauve': TailwindV42Colors.mauve,
          'mist': TailwindV42Colors.mist,
          'olive': TailwindV42Colors.olive,
        };
      case TailwindVersion.latest:
        return _getPalette(TailwindVersion.v4_2);
    }
  }
}
