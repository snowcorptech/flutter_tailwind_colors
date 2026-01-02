import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';
import 'package:flutter/material.dart';

void main() {
  group('TWColors', () {
    test('default version is v4.0', () {
      expect(TWColors.version, TailwindVersion.v4_0);
    });

    test('can switch versions', () {
      TWColors.setVersion(TailwindVersion.v3_0);
      expect(TWColors.version, TailwindVersion.v3_0);

      TWColors.setVersion(TailwindVersion.v3_4);
      expect(TWColors.version, TailwindVersion.v3_4);
    });

    test('colors are MaterialColor instances', () {
      expect(TWColors.slate, isA<MaterialColor>());
      expect(TWColors.gray, isA<MaterialColor>());
      expect(TWColors.blue, isA<MaterialColor>());
      expect(TWColors.emerald, isA<MaterialColor>());
    });

    test('colors have correct shade values', () {
      final slate500 = TWColors.slate.shade500;
      expect(slate500, isA<Color>());
      expect(slate500.toARGB32(), 0xFF64748B);

      final blue500 = TWColors.blue.shade500;
      expect(blue500, isA<Color>());
      expect(blue500.toARGB32(), 0xFF3B82F6);
    });

    test('static colors work correctly', () {
      expect(TWColors.transparent, Colors.transparent);
      expect(TWColors.white, Colors.white);
      expect(TWColors.black, Colors.black);
    });

    test('all color properties are accessible', () {
      expect(TWColors.slate, isNotNull);
      expect(TWColors.gray, isNotNull);
      expect(TWColors.zinc, isNotNull);
      expect(TWColors.neutral, isNotNull);
      expect(TWColors.stone, isNotNull);
      expect(TWColors.red, isNotNull);
      expect(TWColors.orange, isNotNull);
      expect(TWColors.amber, isNotNull);
      expect(TWColors.yellow, isNotNull);
      expect(TWColors.lime, isNotNull);
      expect(TWColors.green, isNotNull);
      expect(TWColors.emerald, isNotNull);
      expect(TWColors.teal, isNotNull);
      expect(TWColors.cyan, isNotNull);
      expect(TWColors.sky, isNotNull);
      expect(TWColors.blue, isNotNull);
      expect(TWColors.indigo, isNotNull);
      expect(TWColors.violet, isNotNull);
      expect(TWColors.purple, isNotNull);
      expect(TWColors.fuchsia, isNotNull);
      expect(TWColors.pink, isNotNull);
      expect(TWColors.rose, isNotNull);
    });

    test('all versions are supported', () {
      // Test v2.0
      TWColors.setVersion(TailwindVersion.v2_0);
      expect(TWColors.version, TailwindVersion.v2_0);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test v3.0
      TWColors.setVersion(TailwindVersion.v3_0);
      expect(TWColors.version, TailwindVersion.v3_0);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test v3.1
      TWColors.setVersion(TailwindVersion.v3_1);
      expect(TWColors.version, TailwindVersion.v3_1);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test v3.2
      TWColors.setVersion(TailwindVersion.v3_2);
      expect(TWColors.version, TailwindVersion.v3_2);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test v3.3
      TWColors.setVersion(TailwindVersion.v3_3);
      expect(TWColors.version, TailwindVersion.v3_3);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test v3.4
      TWColors.setVersion(TailwindVersion.v3_4);
      expect(TWColors.version, TailwindVersion.v3_4);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test v4.0
      TWColors.setVersion(TailwindVersion.v4_0);
      expect(TWColors.version, TailwindVersion.v4_0);
      expect(TWColors.slate, isA<MaterialColor>());

      // Test latest
      TWColors.setVersion(TailwindVersion.latest);
      expect(TWColors.version, TailwindVersion.v4_0);

      // Reset to default
      TWColors.setVersion(TailwindVersion.v4_0);
    });
  });
}
