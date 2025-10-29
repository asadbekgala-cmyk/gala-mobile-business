

import 'package:gala_business/core/either/either.dart';
import 'package:gala_business/core/error/failure_handler.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params param);
}

class NoParams {}
