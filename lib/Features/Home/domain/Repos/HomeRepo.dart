import 'package:bookly_2/Features/Home/domain/Entities/BookEntity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failed, List<BookEntitiy>>> featchFeatchersBook();

  Future<Either<Failed, List<BookEntitiy>>> featchPoublerBook();
}

class Failed {}
