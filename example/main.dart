import 'package:flutter/material.dart';
import 'package:flutter_tailwind_colors/flutter_tailwind_colors.dart';

void main() {
  // Optionally set the Tailwind version at app startup
  // TWColors.setVersion(TailwindVersion.v4_0); // This is the default
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tailwind Colors Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: TWColors.emerald.shade500,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: TWColors.emerald.shade500,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Tailwind Colors Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TailwindVersion _selectedVersion = TailwindVersion.v4_0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Version selector
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Select Tailwind CSS Version',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButton<TailwindVersion>(
                      value: _selectedVersion,
                      isExpanded: true,
                      items: TailwindVersion.values.map((version) {
                        return DropdownMenuItem(
                          value: version,
                          child: Text(_getVersionName(version)),
                        );
                      }).toList(),
                      onChanged: (version) {
                        if (version != null) {
                          setState(() {
                            _selectedVersion = version;
                            TWColors.setVersion(version);
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Current version: ${TWColors.version.toString()}',
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Color examples
            const Text(
              'Color Examples',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Primary colors showcase
            _buildColorSection('Primary Colors', [
              TWColors.blue,
              TWColors.emerald,
              TWColors.rose,
              TWColors.amber,
              TWColors.purple,
            ]),

            const SizedBox(height: 24),

            // Neutral colors showcase
            _buildColorSection('Neutral Colors', [
              TWColors.slate,
              TWColors.gray,
              TWColors.zinc,
              TWColors.neutral,
              TWColors.stone,
            ]),

            const SizedBox(height: 24),

            // Color shades example
            _buildShadeExample(),

            const SizedBox(height: 24),

            // Usage examples
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Usage Examples',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildUsageExample(
                      'Basic Color Usage',
                      'TWColors.blue.shade500',
                      TWColors.blue.shade500,
                    ),
                    const SizedBox(height: 12),
                    _buildUsageExample(
                      'Theme Integration',
                      'TWColors.emerald.shade500',
                      TWColors.emerald.shade500,
                    ),
                    const SizedBox(height: 12),
                    _buildUsageExample(
                      'Version Switching',
                      'TWColors.setVersion(TailwindVersion.v3_4)',
                      TWColors.rose.shade500,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorSection(String title, List<MaterialColor> colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: colors.map((color) {
            return Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: color.shade500,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  _getColorName(color),
                  style: TextStyle(
                    color: _getContrastColor(color.shade500),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildShadeExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color Shades (Emerald)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _buildShadeBox(TWColors.emerald.shade50, '50'),
            _buildShadeBox(TWColors.emerald.shade100, '100'),
            _buildShadeBox(TWColors.emerald.shade200, '200'),
            _buildShadeBox(TWColors.emerald.shade300, '300'),
            _buildShadeBox(TWColors.emerald.shade400, '400'),
            _buildShadeBox(TWColors.emerald.shade500, '500'),
            _buildShadeBox(TWColors.emerald.shade600, '600'),
            _buildShadeBox(TWColors.emerald.shade700, '700'),
            _buildShadeBox(TWColors.emerald.shade800, '800'),
            _buildShadeBox(TWColors.emerald.shade900, '900'),
            _buildShadeBox(TWColors.emerald[950]!, '950'),
          ],
        ),
      ],
    );
  }

  Widget _buildShadeBox(Color color, String label) {
    return Expanded(
      child: Container(
        height: 60,
        color: color,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: _getContrastColor(color),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUsageExample(String title, String code, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(
            code,
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  String _getVersionName(TailwindVersion version) {
    switch (version) {
      case TailwindVersion.v2_0:
        return 'v2.0';
      case TailwindVersion.v3_0:
        return 'v3.0';
      case TailwindVersion.v3_1:
        return 'v3.1';
      case TailwindVersion.v3_2:
        return 'v3.2';
      case TailwindVersion.v3_3:
        return 'v3.3';
      case TailwindVersion.v3_4:
        return 'v3.4';
      case TailwindVersion.v4_0:
        return 'v4.0';
      case TailwindVersion.latest:
        return 'Latest (v4.0)';
    }
  }

  String _getColorName(MaterialColor color) {
    if (color == TWColors.slate) return 'Slate';
    if (color == TWColors.gray) return 'Gray';
    if (color == TWColors.zinc) return 'Zinc';
    if (color == TWColors.neutral) return 'Neutral';
    if (color == TWColors.stone) return 'Stone';
    if (color == TWColors.red) return 'Red';
    if (color == TWColors.orange) return 'Orange';
    if (color == TWColors.amber) return 'Amber';
    if (color == TWColors.yellow) return 'Yellow';
    if (color == TWColors.lime) return 'Lime';
    if (color == TWColors.green) return 'Green';
    if (color == TWColors.emerald) return 'Emerald';
    if (color == TWColors.teal) return 'Teal';
    if (color == TWColors.cyan) return 'Cyan';
    if (color == TWColors.sky) return 'Sky';
    if (color == TWColors.blue) return 'Blue';
    if (color == TWColors.indigo) return 'Indigo';
    if (color == TWColors.violet) return 'Violet';
    if (color == TWColors.purple) return 'Purple';
    if (color == TWColors.fuchsia) return 'Fuchsia';
    if (color == TWColors.pink) return 'Pink';
    if (color == TWColors.rose) return 'Rose';
    return 'Unknown';
  }

  Color _getContrastColor(Color color) {
    // Calculate relative luminance
    final luminance = color.computeLuminance();
    // Return white for dark colors, black for light colors
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}

