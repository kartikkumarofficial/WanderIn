//usecases are supposed to do only 1 task - so only 1 function should be present in it

import 'package:fpdart/fpdart.dart';
import 'package:wanderin/core/error/failures.dart';

abstract interface class UseCase<SuccessType, Parameters> {

  Future<Either<Failure,SuccessType>> call(Parameters parameters);
}