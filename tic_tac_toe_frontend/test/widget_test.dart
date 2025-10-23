import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('renders Tic Tac Toe title and UI basics', (tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // AppBar title
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Player indicator shows current player
    expect(find.textContaining("Player"), findsOneWidget);
  });
}
