// ignore_for_file: non_constant_identifier_names

import 'package:bookly_2/core/errors/failed.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type, param> {
  Future<Either<Failed, type>> Call([param param]);
}

class Noparam {}