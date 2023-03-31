import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetdBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));
      return right(books);
    } catch (error) {
      if (error is DioError)
        {
          return left(ServiceFailure.fromDioError(error));
        }

      return Left(ServiceFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));
      return right(books);
    } catch (error) {
      if (error is DioError)
      {
        return left(ServiceFailure.fromDioError(error));
      }

      return Left(ServiceFailure(error.toString()));
    }
  }
}
