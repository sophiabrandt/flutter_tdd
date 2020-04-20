import 'package:flutter_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test');

  test('should be a subclass NumberTrivia entitity',
      () async {
        expect(tNumberTriviaModel, isA<NumberTrivia>());
      }
  );
}
