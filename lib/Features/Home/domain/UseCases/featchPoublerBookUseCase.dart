// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:bookly_2/Features/Home/domain/BookEntity.dart';
import 'package:bookly_2/Features/Home/domain/Repos/HomeRepo.dart';
import 'package:bookly_2/core/UseCases/UseCase.dart';
import 'package:bookly_2/core/errors/failed.dart';
import 'package:dartz/dartz.dart';

class featchPoublerBookUseCase extends UseCase<List<BookEntitiy>, Noparam> {
  final HomeRepo homeRepo;

  featchPoublerBookUseCase({required this.homeRepo});

  @override
  Future<Either<Failed, List<BookEntitiy>>> Call([Noparam? param]) {
    return homeRepo.featchPoublerBook();
  }
}
