Design notes: GoT-themed markers

Mapping
- Player 'X' -> House Stark -> assets/icons/stark_direwolf.png -> Color: Theme.colorScheme.primary (#2563EB)
- Player 'O' -> House Lannister -> assets/icons/lannister_lion.png -> Color: Theme.colorScheme.secondary (#F59E0B)

Rendering
- GameBoard uses Image.asset + ColorFiltered to tint icons
- Sizes scale responsively within cells (see _MarkerIcon in lib/widgets/game_board.dart)

Accessibility
- Semantic labels: "Stark marker" for X, "Lannister marker" for O (SemanticsLabels)
- PlayerIndicator uses house names for status text

Testing
- Avoid assertions on 'X'/'O' glyphs; check status text and interaction instead
