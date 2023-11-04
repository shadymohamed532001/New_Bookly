// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:bookly_2/Features/Home/domain/Entities/BookEntity.dart';
import 'package:bookly_2/Features/Home/domain/Repos/HomeRepo.dart';
import 'package:bookly_2/core/UseCases/UseCase.dart';
import 'package:bookly_2/core/errors/failed.dart';
import 'package:dartz/dartz.dart';

class featchFeatchersBookUseCase extends UseCase<List<BookEntitiy>, Noparam> {
  final HomeRepo homeRepo;

  featchFeatchersBookUseCase({required this.homeRepo});

  @override
  Future<Either<Failed, List<BookEntitiy>>> Call([Noparam? param]) {
    return homeRepo.featchFeatchersBook();
  }
}
