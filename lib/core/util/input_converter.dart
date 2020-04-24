import 'package:flutter_tdd/core/error/failures.dart';
import 'package:dartz/dartz.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    return Right(int.parse(str));
  }
}

class InvalidInputFailure extends Failure {}
