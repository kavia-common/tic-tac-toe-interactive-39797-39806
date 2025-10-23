# tic_tac_toe_frontend

A simple Tic Tac Toe app with Ocean Professional styling.

## GoT-themed markers
The classic 'X' and 'O' markers are replaced with Game of Thrones-themed icons:
- Player X → House Stark (direwolf) — tinted with theme.primary (#2563EB)
- Player O → House Lannister (lion) — tinted with theme.secondary (#F59E0B)

Assets live under:
- `assets/icons/stark_direwolf.png`
- `assets/icons/lannister_lion.png`

These are bundled via `pubspec.yaml`:
```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
    - assets/icons/
```

Animations, hit testing, and accessibility semantics are preserved. The board centers and scales icons responsively.

## Run locally
From this directory:
```bash
flutter pub get
flutter run
```

## Tests
Widget tests avoid coupling to text markers and assert structural UI (title + status).
