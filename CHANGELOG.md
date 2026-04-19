# Changelog

## [0.0.7] - 2026-04-19
### Fixed
- Updated the example app's version switch to handle `v4.1` and `v4.2`
- Updated the example app's `latest` label to display `v4.2`

## [0.0.6] - 2026-04-19
### Added
- Tailwind CSS v4.1 support
- Tailwind CSS v4.2 support
- New Tailwind v4.2 color palettes: taupe, mauve, mist, and olive

### Changed
- Default Tailwind version updated from v4.0 to v4.2
- `TailwindVersion.latest` now resolves to v4.2
- Documentation and tests updated for the new version support

## [0.0.5] - 2026-01-02
### Added
- Comprehensive API documentation (meets pub.dev 20% requirement)
- Example app demonstrating package usage with version switching
- Library-level documentation for all color palette files
- Enhanced class documentation for TWColors and TailwindColorManager

### Changed
- Improved documentation coverage across all public API elements
- Added example directory with working demo application

## [0.0.4] - 2026-01-02
### Added
- Support for all Tailwind CSS versions (v2.0, v3.0, v3.1, v3.2, v3.3, v3.4, v4.0)
- Version switching functionality with `TWColors.setVersion()`
- Global version management system
- Complete color palettes for all Tailwind CSS versions
- v2.0 color support with legacy naming (blueGray, coolGray, trueGray, warmGray, lightBlue)
- Comprehensive test coverage for all versions

### Changed
- Default version changed from v3.4 to v4.0
- Package structure reorganized with version-specific color files
- Improved documentation with version switching examples

### Notes
- Version switching is global and affects all color access throughout the application
- Recommended to set version once during app initialization

## [0.0.3] - 2024-10-06
### Added
- Fuchsia color added to the color palette.
- New shades (950) added for all colors in the palette.

## [0.0.2] - 2023-02-12
### Fixes
- Minor bug fixes and optimizations.

## [0.0.1] - 2023-02-12
### Initial Release
- Initial release of the package with Tailwind CSS colors for Flutter.
