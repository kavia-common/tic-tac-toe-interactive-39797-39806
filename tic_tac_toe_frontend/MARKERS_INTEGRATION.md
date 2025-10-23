Using GoT-themed markers

- Prefer importing marker utilities via the barrel file:
  import 'package:tic_tac_toe_frontend/markers.dart';

- This exports:
  - assets/marker_assets.dart (icon asset paths)
  - utils/semantics_labels.dart (accessibility labels)
  - utils/player_colors.dart (X->primary, O->secondary)
  - widgets/fallback_marker_painter.dart (fallback drawing)

- Board rendering: see lib/widgets/game_board.dart (_MarkerIcon)
- Assets:
  - assets/icons/stark_direwolf.png (House Stark)
  - assets/icons/lannister_lion.png (House Lannister)
