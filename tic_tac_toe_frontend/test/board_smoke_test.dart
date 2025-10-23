import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('Board renders and responds to taps', (tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // App loads and shows title.
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Find 9 InkWell cells (grid tiles).
    final cells = find.byType(InkWell);
    expect(cells, findsNWidgets(9));

    // Tap a couple of cells and ensure the tree updates without exceptions.
    await tester.tap(cells.at(0));
    await tester.pumpAndSettle(const Duration(milliseconds: 200));

    await tester.tap(cells.at(4));
    await tester.pumpAndSettle(const Duration(milliseconds: 200));

    // Status text present.
    expect(find.textContaining('Player').or(find.textContaining('Current Turn')), findsWidgets);
  });
}
