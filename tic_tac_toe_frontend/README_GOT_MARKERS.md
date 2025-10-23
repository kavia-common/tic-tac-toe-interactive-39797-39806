# GoT-themed Markers Integration

This app replaces 'X' and 'O' text markers with Game of Thrones-themed icons:
- Player X -> House Stark (Direwolf)
- Player O -> House Lannister (Lion)

Color theming:
- Player 1 (X): Ocean Professional primary (blue)
- Player 2 (O): Ocean Professional secondary (amber)

Files of interest:
- lib/widgets/game_board.dart: Renders icons in cells with animations and hit testing.
- lib/assets/asset_paths.dart: Centralized asset paths (PNG icons).
- lib/utils/player_colors.dart: Player -> color mapping.
- lib/utils/player_names.dart: Player -> house name mapping.
- assets/icons/: PNG icons for markers.

Run locally:
  cd tic-tac-toe-interactive-39797-39806/tic_tac_toe_frontend
  flutter pub get
  flutter run

Tests:
  flutter test

Notes:
- Animations and hit testing are unchanged.
- Accessibility semantics are included for screen readers.
