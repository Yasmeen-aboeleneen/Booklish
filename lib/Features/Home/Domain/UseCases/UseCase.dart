import 'package:dartz/dartz.dart';

import '../../../../Core/Errors/Failure.dart';

abstract class UseCase<Type, parameter> {
  Future<Either<Failure, Type>> Call([parameter parameter]);
}
