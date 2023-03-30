import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerdBooks() {
    // TODO: implement fetchBestSellerdBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}