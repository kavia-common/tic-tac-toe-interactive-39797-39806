# GoT Marker Implementation Guide

This app replaces the text markers 'X' and 'O' with Game of Thrones-themed icons:
- X → House Stark (direwolf) → tinted with theme.colorScheme.primary (#2563EB)
- O → House Lannister (lion) → tinted with theme.colorScheme.secondary (#F59E0B)

Files of interest:
- lib/widgets/game_board.dart
  - Renders icons via `_MarkerIcon`, preserves animations and hit testing.
  - Uses shared helpers for player color and semantics.
- lib/widgets/player_indicator.dart
  - Displays status text using House names (e.g., "House Stark's Turn").
- lib/assets/marker_assets.dart
  - Centralized asset path constants.
- lib/utils/player_colors.dart
  - Maps player symbol to themed color.
- lib/utils/semantics_labels.dart
  - Centralizes a11y labels for markers.

Assets:
- assets/icons/stark_direwolf.png
- assets/icons/lannister_lion.png

pubspec.yaml:
```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
    - assets/icons/
```

Changing icons:
- Replace the PNGs above with preferred silhouettes and keep filenames the same.
- If changing filenames or adding variants, update lib/assets/marker_assets.dart accordingly.

Theming:
- Colors come from Ocean Professional theme (lib/theme.dart).
- To tweak colors, update the theme’s colorScheme; helpers will pick up changes automatically.

Tests:
- test/widget_test.dart asserts core UI structure (title + status). It does not depend on 'X'/'O' text markers.
