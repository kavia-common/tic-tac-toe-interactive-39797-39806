import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('renders board and does not rely on X/O text markers', (tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // App bar present
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // There should be a 3x3 grid (9 tappable cells)
    // We can tap a couple of cells and expect the UI to update without looking for 'X'/'O' text.
    // This ensures compatibility with icon-based markers.
    // The board cells are InkWell wrapped; find them directly.
    final cells = find.byType(InkWell);
    expect(cells, findsNWidgets(9));

    await tester.tap(cells.at(0));
    await tester.pumpAndSettle(const Duration(milliseconds: 250));

    await tester.tap(cells.at(1));
    await tester.pumpAndSettle(const Duration(milliseconds: 250));

    // Player indicator still visible
    expect(find.textContaining('Player'), findsOneWidget);
  });
}
