GoT-themed marker assets

- Player X -> House Stark (assets/icons/stark_direwolf.png), tinted with theme.primary (#2563EB)
- Player O -> House Lannister (assets/icons/lannister_lion.png), tinted with theme.secondary (#F59E0B)

Technical notes:
- Assets declared under flutter.assets in pubspec.yaml
- Rendering in lib/widgets/game_board.dart via Image.asset + ColorFiltered for theming
- Accessibility labels provided via lib/utils/semantics_labels.dart
- Text status uses house names (PlayerIndicator) via lib/utils/player_labels.dart
- Animations and hit testing unchanged
