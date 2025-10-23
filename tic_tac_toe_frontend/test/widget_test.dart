import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('renders title and allows a move using icon markers', (tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // AppBar title
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Player indicator shows status text
    expect(find.textContaining('Turn').or(find.textContaining('Wins')).or(find.textContaining('Draw')), findsOneWidget);

    // Tap on the first board cell (should be empty -> becomes Stark/Lannister icon)
    // We look for the grid by PageStorageKey set in GameBoard and then tap first descendant.
    final boardFinder = find.byKey(const PageStorageKey<String>('game-board-grid'));
    expect(boardFinder, findsOneWidget);

    // Tap on a cell by position using gesture on first visible Material InkWell.
    final cell = find.descendant(of: boardFinder, matching: find.byType(InkWell)).first;
    await tester.tap(cell);
    await tester.pumpAndSettle();

    // After first move, PlayerIndicator should switch house or show updated status.
    expect(find.textContaining('Turn').or(find.textContaining('Wins')).or(find.textContaining('Draw')), findsWidgets);
  });
}
