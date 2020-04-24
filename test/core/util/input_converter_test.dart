import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/util/input_converter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  InputConverter inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  group('stringToUnsignedInt', () {
    test(
        'should return an integer when the string represents an unsigned integer',
        () async {
      final str = '123';

      final result = inputConverter.stringToUnsignedInteger(str);

      expect(result, Right(123));
    });
  });
}
