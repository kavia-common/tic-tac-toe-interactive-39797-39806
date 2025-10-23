import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('PlayerIndicator uses house names and changes after a move', (tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Initially, House Stark should be to move.
    expect(find.textContaining('Stark'), findsOneWidget);

    // Tap a board cell to switch turn.
    final boardFinder = find.byKey(const PageStorageKey<String>('game-board-grid'));
    final firstCell = find.descendant(of: boardFinder, matching: find.byType(InkWell)).first;
    await tester.tap(firstCell);
    await tester.pumpAndSettle();

    // After move, House Lannister should be to move (unless immediate win, very unlikely on first move).
    expect(find.textContaining('Lannister').or(find.textContaining('Wins')).or(find.textContaining('Draw')), findsWidgets);
  });
}
