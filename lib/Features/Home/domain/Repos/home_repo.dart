import 'package:bookly_2/Features/Home/domain/entity/book_entity.dart';
import 'package:bookly_2/core/errors/failed.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failed, List<BookEntitiy>>> featchFeatchersBook();

  Future<Either<Failed, List<BookEntitiy>>> featchPoublerBook();

  Future<Either<Failed, List<BookEntitiy>>> featchPresentationBook();
}
