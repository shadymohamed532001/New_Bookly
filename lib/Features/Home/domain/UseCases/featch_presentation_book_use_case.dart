import 'package:bookly_2/Features/Home/domain/entity/book_entity.dart';
import 'package:bookly_2/Features/Home/domain/Repos/home_repo.dart';
import 'package:bookly_2/core/UseCases/use_case.dart';
import 'package:bookly_2/core/errors/failed.dart';
import 'package:dartz/dartz.dart';

class FeatchPresentationBookUseCase
    extends UseCase<List<BookEntitiy>, Noparam> {
  final HomeRepo homeRepo;

  FeatchPresentationBookUseCase({required this.homeRepo});

  @override
  Future<Either<Failed, List<BookEntitiy>>> call([Noparam? param]) {
    return homeRepo.featchPresentationBook();
  }
}
