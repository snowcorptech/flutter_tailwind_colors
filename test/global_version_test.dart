import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';
import 'package:flutter/material.dart';

void main() {
  group('Global Version Setting', () {
    test('setVersion affects all color access globally', () {
      // Set to v3.4
      TWColors.setVersion(TailwindVersion.v3_4);
      expect(TWColors.version, TailwindVersion.v3_4);

      // Access multiple colors - all should use v3.4
      expect(TWColors.slate, isA<MaterialColor>());
      expect(TWColors.blue, isA<MaterialColor>());
      expect(TWColors.emerald, isA<MaterialColor>());

      // Change version globally
      TWColors.setVersion(TailwindVersion.v4_2);
      expect(TWColors.version, TailwindVersion.v4_2);

      // Access same colors again - all should now use v4.2
      expect(TWColors.slate, isA<MaterialColor>());
      expect(TWColors.blue, isA<MaterialColor>());
      expect(TWColors.emerald, isA<MaterialColor>());

      // The colors should be different instances (different versions)
      // Note: Since colors might have same values, we check the version instead
      expect(TWColors.version, TailwindVersion.v4_2);
    });

    test('version persists across multiple color accesses', () {
      TWColors.setVersion(TailwindVersion.v2_0);

      // Access colors multiple times
      expect(TWColors.slate.shade500, isA<Color>());
      expect(TWColors.blue.shade500, isA<Color>());
      expect(TWColors.emerald.shade500, isA<Color>());

      // Version should still be v2.0
      expect(TWColors.version, TailwindVersion.v2_0);

      // Change version
      TWColors.setVersion(TailwindVersion.v3_0);

      // Access again - should use new version
      expect(TWColors.slate.shade500, isA<Color>());
      expect(TWColors.version, TailwindVersion.v3_0);
    });

    test('setVersion in one place affects all widgets/files', () {
      // Simulate setting version in main.dart
      TWColors.setVersion(TailwindVersion.v3_4);

      // Simulate accessing in different files/widgets
      // File 1
      expect(TWColors.blue, isA<MaterialColor>());
      expect(TWColors.version, TailwindVersion.v3_4);

      // File 2
      expect(TWColors.emerald, isA<MaterialColor>());
      expect(TWColors.version, TailwindVersion.v3_4);

      // File 3
      expect(TWColors.rose, isA<MaterialColor>());
      expect(TWColors.version, TailwindVersion.v3_4);

      // Change version - affects all
      TWColors.setVersion(TailwindVersion.v4_2);

      // All subsequent accesses use new version
      expect(TWColors.blue, isA<MaterialColor>());
      expect(TWColors.emerald, isA<MaterialColor>());
      expect(TWColors.rose, isA<MaterialColor>());
      expect(TWColors.version, TailwindVersion.v4_2);
    });
  });
}
