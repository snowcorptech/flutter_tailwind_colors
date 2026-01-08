/// Tailwind CSS v2.0 color palette definitions.
///
/// This library provides the complete set of Tailwind CSS v2.0 color palettes
/// as MaterialColor objects for use in Flutter applications.
///
/// Note: v2.0 used different naming conventions (blueGray, coolGray, trueGray, warmGray)
/// compared to later versions. These are mapped to the v3+ names for compatibility.
library tailwind_v2_0_colors;

import 'package:flutter/material.dart';

/// Tailwind CSS v2.0 color palette
/// Note: v2.0 used different naming (blueGray, coolGray, trueGray, warmGray)
class TailwindV20Colors {
  // Primary values
  static const int _blueGrayPrimaryValue = 0xFF64748B; // slate in v3+
  static const int _coolGrayPrimaryValue = 0xFF6B7280; // gray in v3+
  static const int _trueGrayPrimaryValue = 0xFF737373; // neutral in v3+
  static const int _warmGrayPrimaryValue = 0xFF78716C; // stone in v3+
  static const int _redPrimaryValue = 0xFFEF4444;
  static const int _orangePrimaryValue = 0xFFF97316;
  static const int _amberPrimaryValue = 0xFFF59E0B;
  static const int _yellowPrimaryValue = 0xFFEAB308;
  static const int _limePrimaryValue = 0xFF84CC16;
  static const int _greenPrimaryValue = 0xFF22C55E;
  static const int _emeraldPrimaryValue = 0xFF10B981;
  static const int _tealPrimaryValue = 0xFF14B8A6;
  static const int _cyanPrimaryValue = 0xFF06B6D4;
  static const int _lightBluePrimaryValue = 0xFF0EA5E9; // sky in v3+
  static const int _bluePrimaryValue = 0xFF3B82F6;
  static const int _indigoPrimaryValue = 0xFF6366F1;
  static const int _violetPrimaryValue = 0xFF8B5CF6;
  static const int _purplePrimaryValue = 0xFFA855F7;
  static const int _fuchsiaPrimaryValue = 0xFFd946ef;
  static const int _pinkPrimaryValue = 0xFFEC4899;
  static const int _rosePrimaryValue = 0xFFF43F5E;

  // v2.0 naming: blueGray (slate in v3+)
  static const MaterialColor blueGray = MaterialColor(
    _blueGrayPrimaryValue,
    <int, Color>{
      50: Color(0xFFF8FAFC),
      100: Color(0xFFF1F5F9),
      200: Color(0xFFE2E8F0),
      300: Color(0xFFCBD5E1),
      400: Color(0xFF94A3B8),
      500: Color(_blueGrayPrimaryValue),
      600: Color(0xFF475569),
      700: Color(0xFF334155),
      800: Color(0xFF1E293B),
      900: Color(0xFF0F172A),
    },
  );

  // v2.0 naming: coolGray (gray in v3+)
  static const MaterialColor coolGray = MaterialColor(
    _coolGrayPrimaryValue,
    <int, Color>{
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD1D5DB),
      400: Color(0xFF9CA3AF),
      500: Color(_coolGrayPrimaryValue),
      600: Color(0xFF4B5563),
      700: Color(0xFF374151),
      800: Color(0xFF1F2937),
      900: Color(0xFF111827),
    },
  );

  // v2.0 naming: trueGray (neutral in v3+)
  static const MaterialColor trueGray = MaterialColor(
    _trueGrayPrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFE5E5E5),
      300: Color(0xFFD4D4D4),
      400: Color(0xFFA3A3A3),
      500: Color(_trueGrayPrimaryValue),
      600: Color(0xFF525252),
      700: Color(0xFF404040),
      800: Color(0xFF262626),
      900: Color(0xFF171717),
    },
  );

  // v2.0 naming: warmGray (stone in v3+)
  static const MaterialColor warmGray = MaterialColor(
    _warmGrayPrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAF9),
      100: Color(0xFFF5F5F4),
      200: Color(0xFFE7E5E4),
      300: Color(0xFFD6D3D1),
      400: Color(0xFFA8A29E),
      500: Color(_warmGrayPrimaryValue),
      600: Color(0xFF57534E),
      700: Color(0xFF44403C),
      800: Color(0xFF292524),
      900: Color(0xFF1C1917),
    },
  );

  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFEF2F2),
      100: Color(0xFFFEE2E2),
      200: Color(0xFFFECACA),
      300: Color(0xFFFCA5A5),
      400: Color(0xFFF87171),
      500: Color(_redPrimaryValue),
      600: Color(0xFFDC2626),
      700: Color(0xFFB91C1C),
      800: Color(0xFF991B1B),
      900: Color(0xFF7F1D1D),
    },
  );

  static const MaterialColor orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF7ED),
      100: Color(0xFFFFEDD5),
      200: Color(0xFFFED7AA),
      300: Color(0xFFFDBA74),
      400: Color(0xFFFB923C),
      500: Color(_orangePrimaryValue),
      600: Color(0xFFEA580C),
      700: Color(0xFFC2410C),
      800: Color(0xFF9A3412),
      900: Color(0xFF7C2D12),
    },
  );

  static const MaterialColor amber = MaterialColor(
    _amberPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFBEB),
      100: Color(0xFFFEF3C7),
      200: Color(0xFFFDE68A),
      300: Color(0xFFFCD34D),
      400: Color(0xFFFBBF24),
      500: Color(_amberPrimaryValue),
      600: Color(0xFFD97706),
      700: Color(0xFFB45309),
      800: Color(0xFF92400E),
      900: Color(0xFF78350F),
    },
  );

  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFEFCE8),
      100: Color(0xFFFEF9C3),
      200: Color(0xFFFEF08A),
      300: Color(0xFFFDE047),
      400: Color(0xFFFACC15),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFCA8A04),
      700: Color(0xFFA16207),
      800: Color(0xFF854D0E),
      900: Color(0xFF713F12),
    },
  );

  static const MaterialColor lime = MaterialColor(
    _limePrimaryValue,
    <int, Color>{
      50: Color(0xFFF7FEE7),
      100: Color(0xFFECFCCB),
      200: Color(0xFFD9F99D),
      300: Color(0xFFBEF264),
      400: Color(0xFFA3E635),
      500: Color(_limePrimaryValue),
      600: Color(0xFF65A30D),
      700: Color(0xFF4D7C0F),
      800: Color(0xFF3F6212),
      900: Color(0xFF365314),
    },
  );

  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFF0FDF4),
      100: Color(0xFFDCFCE7),
      200: Color(0xFFBBF7D0),
      300: Color(0xFF86EFAC),
      400: Color(0xFF4ADE80),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF16A34A),
      700: Color(0xFF15803D),
      800: Color(0xFF166534),
      900: Color(0xFF14532D),
    },
  );

  static const MaterialColor emerald = MaterialColor(
    _emeraldPrimaryValue,
    <int, Color>{
      50: Color(0xFFECFDF5),
      100: Color(0xFFD1FAE5),
      200: Color(0xFFA7F3D0),
      300: Color(0xFF6EE7B7),
      400: Color(0xFF34D399),
      500: Color(_emeraldPrimaryValue),
      600: Color(0xFF059669),
      700: Color(0xFF047857),
      800: Color(0xFF065F46),
      900: Color(0xFF064E3B),
    },
  );

  static const MaterialColor teal = MaterialColor(
    _tealPrimaryValue,
    <int, Color>{
      50: Color(0xFFF0FDFA),
      100: Color(0xFFCCFBF1),
      200: Color(0xFF99F6E4),
      300: Color(0xFF5EEAD4),
      400: Color(0xFF2DD4BF),
      500: Color(_tealPrimaryValue),
      600: Color(0xFF0D9488),
      700: Color(0xFF0F766E),
      800: Color(0xFF115E59),
      900: Color(0xFF134E4A),
    },
  );

  static const MaterialColor cyan = MaterialColor(
    _cyanPrimaryValue,
    <int, Color>{
      50: Color(0xFFECFEFF),
      100: Color(0xFFCFFAFE),
      200: Color(0xFFA5F3FC),
      300: Color(0xFF67E8F9),
      400: Color(0xFF22D3EE),
      500: Color(_cyanPrimaryValue),
      600: Color(0xFF0891B2),
      700: Color(0xFF0E7490),
      800: Color(0xFF155E75),
      900: Color(0xFF164E63),
    },
  );

  // v2.0 naming: lightBlue (sky in v3+)
  static const MaterialColor lightBlue = MaterialColor(
    _lightBluePrimaryValue,
    <int, Color>{
      50: Color(0xFFF0F9FF),
      100: Color(0xFFE0F2FE),
      200: Color(0xFFBAE6FD),
      300: Color(0xFF7DD3FC),
      400: Color(0xFF38BDF8),
      500: Color(_lightBluePrimaryValue),
      600: Color(0xFF0284C7),
      700: Color(0xFF0369A1),
      800: Color(0xFF075985),
      900: Color(0xFF0C4A6E),
    },
  );

  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFEFF6FF),
      100: Color(0xFFDBEAFE),
      200: Color(0xFFBFDBFE),
      300: Color(0xFF93C5FD),
      400: Color(0xFF60A5FA),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF2563EB),
      700: Color(0xFF1D4ED8),
      800: Color(0xFF1E40AF),
      900: Color(0xFF1E3A8A),
    },
  );

  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      50: Color(0xFFEEF2FF),
      100: Color(0xFFE0E7FF),
      200: Color(0xFFC7D2FE),
      300: Color(0xFFA5B4FC),
      400: Color(0xFF818CF8),
      500: Color(_indigoPrimaryValue),
      600: Color(0xFF4F46E5),
      700: Color(0xFF4338CA),
      800: Color(0xFF3730A3),
      900: Color(0xFF312E81),
    },
  );

  static const MaterialColor violet = MaterialColor(
    _violetPrimaryValue,
    <int, Color>{
      50: Color(0xFFF5F3FF),
      100: Color(0xFFEDE9FE),
      200: Color(0xFFDDD6FE),
      300: Color(0xFFC4B5FD),
      400: Color(0xFFA78BFA),
      500: Color(_violetPrimaryValue),
      600: Color(0xFF7C3AED),
      700: Color(0xFF6D28D9),
      800: Color(0xFF5B21B6),
      900: Color(0xFF4C1D95),
    },
  );

  static const MaterialColor purple = MaterialColor(
    _purplePrimaryValue,
    <int, Color>{
      50: Color(0xFFFAF5FF),
      100: Color(0xFFF3E8FF),
      200: Color(0xFFE9D5FF),
      300: Color(0xFFD8B4FE),
      400: Color(0xFFC084FC),
      500: Color(_purplePrimaryValue),
      600: Color(0xFF9333EA),
      700: Color(0xFF7E22CE),
      800: Color(0xFF6B21A8),
      900: Color(0xFF581C87),
    },
  );

  static const MaterialColor fuchsia = MaterialColor(
    _fuchsiaPrimaryValue,
    <int, Color>{
      50: Color(0xFFfdf4ff),
      100: Color(0xFFfae8ff),
      200: Color(0xFFf5d0fe),
      300: Color(0xFFf0abfc),
      400: Color(0xFFe879f9),
      500: Color(_fuchsiaPrimaryValue),
      600: Color(0xFFc026d3),
      700: Color(0xFFa21caf),
      800: Color(0xFF86198f),
      900: Color(0xFF701a75),
    },
  );

  static const MaterialColor pink = MaterialColor(
    _pinkPrimaryValue,
    <int, Color>{
      50: Color(0xFFFDF2F8),
      100: Color(0xFFFCE7F3),
      200: Color(0xFFFBCFE8),
      300: Color(0xFFF9A8D4),
      400: Color(0xFFF472B6),
      500: Color(_pinkPrimaryValue),
      600: Color(0xFFDB2777),
      700: Color(0xFFBE185D),
      800: Color(0xFF9D174D),
      900: Color(0xFF831843),
    },
  );

  static const MaterialColor rose = MaterialColor(
    _rosePrimaryValue,
    <int, Color>{
      50: Color(0xFFFFF1F2),
      100: Color(0xFFFFE4E6),
      200: Color(0xFFFECDD3),
      300: Color(0xFFFDA4AF),
      400: Color(0xFFFB7185),
      500: Color(_rosePrimaryValue),
      600: Color(0xFFE11D48),
      700: Color(0xFFBE123C),
      800: Color(0xFF9F1239),
      900: Color(0xFF881337),
    },
  );
}


