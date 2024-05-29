
import 'package:bookly_2/core/errors/failed.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type, param> {
  Future<Either<Failed, type>> call([param param]);
}

class Noparam {}
