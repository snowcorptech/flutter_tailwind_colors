/// Tailwind CSS v4.2 color palette definitions.
///
/// Tailwind CSS v4.2 keeps the v4.1 default colors and adds four new default
/// palettes: taupe, mauve, mist, and olive.
library tailwind_v4_2_colors;

import 'package:flutter/material.dart';

import 'tailwind_v4_1_colors.dart';

/// Tailwind CSS v4.2 color palette.
///
/// Existing palettes are unchanged from v4.1. New palettes use RGB/hex
/// equivalents generated from the official Tailwind OKLCH theme tokens.
class TailwindV42Colors {
  static const int _taupePrimaryValue = 0xFF7C6D67;
  static const int _mauvePrimaryValue = 0xFF79697B;
  static const int _mistPrimaryValue = 0xFF67787C;
  static const int _olivePrimaryValue = 0xFF7C7C67;

  static const MaterialColor slate = TailwindV41Colors.slate;
  static const MaterialColor gray = TailwindV41Colors.gray;
  static const MaterialColor zinc = TailwindV41Colors.zinc;
  static const MaterialColor neutral = TailwindV41Colors.neutral;
  static const MaterialColor stone = TailwindV41Colors.stone;
  static const MaterialColor red = TailwindV41Colors.red;
  static const MaterialColor orange = TailwindV41Colors.orange;
  static const MaterialColor amber = TailwindV41Colors.amber;
  static const MaterialColor yellow = TailwindV41Colors.yellow;
  static const MaterialColor lime = TailwindV41Colors.lime;
  static const MaterialColor green = TailwindV41Colors.green;
  static const MaterialColor emerald = TailwindV41Colors.emerald;
  static const MaterialColor teal = TailwindV41Colors.teal;
  static const MaterialColor cyan = TailwindV41Colors.cyan;
  static const MaterialColor sky = TailwindV41Colors.sky;
  static const MaterialColor blue = TailwindV41Colors.blue;
  static const MaterialColor indigo = TailwindV41Colors.indigo;
  static const MaterialColor violet = TailwindV41Colors.violet;
  static const MaterialColor purple = TailwindV41Colors.purple;
  static const MaterialColor fuchsia = TailwindV41Colors.fuchsia;
  static const MaterialColor pink = TailwindV41Colors.pink;
  static const MaterialColor rose = TailwindV41Colors.rose;

  static const MaterialColor taupe = MaterialColor(
    _taupePrimaryValue,
    <int, Color>{
      50: Color(0xFFFBFAF9),
      100: Color(0xFFF3F1F1),
      200: Color(0xFFE8E4E3),
      300: Color(0xFFD8D2D0),
      400: Color(0xFFABA09C),
      500: Color(_taupePrimaryValue),
      600: Color(0xFF5B4F4B),
      700: Color(0xFF473C39),
      800: Color(0xFF2B2422),
      900: Color(0xFF1D1816),
      950: Color(0xFF0C0A09),
    },
  );

  static const MaterialColor mauve = MaterialColor(
    _mauvePrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF3F1F3),
      200: Color(0xFFE7E4E7),
      300: Color(0xFFD7D0D7),
      400: Color(0xFFA89EA9),
      500: Color(_mauvePrimaryValue),
      600: Color(0xFF594C5B),
      700: Color(0xFF463947),
      800: Color(0xFF2A212C),
      900: Color(0xFF1D161E),
      950: Color(0xFF0C090C),
    },
  );

  static const MaterialColor mist = MaterialColor(
    _mistPrimaryValue,
    <int, Color>{
      50: Color(0xFFF9FBFB),
      100: Color(0xFFF1F3F3),
      200: Color(0xFFE3E7E8),
      300: Color(0xFFD0D6D8),
      400: Color(0xFF9CA8AB),
      500: Color(_mistPrimaryValue),
      600: Color(0xFF4B585B),
      700: Color(0xFF394447),
      800: Color(0xFF22292B),
      900: Color(0xFF161B1D),
      950: Color(0xFF090B0C),
    },
  );

  static const MaterialColor olive = MaterialColor(
    _olivePrimaryValue,
    <int, Color>{
      50: Color(0xFFFBFBF9),
      100: Color(0xFFF4F4F0),
      200: Color(0xFFE8E8E3),
      300: Color(0xFFD8D8D0),
      400: Color(0xFFABAB9C),
      500: Color(_olivePrimaryValue),
      600: Color(0xFF5B5B4B),
      700: Color(0xFF474739),
      800: Color(0xFF2B2B22),
      900: Color(0xFF1D1D16),
      950: Color(0xFF0C0C09),
    },
  );
}
