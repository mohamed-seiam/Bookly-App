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
  Future<Either<Failure, BooksResponseModel>> fetchNewsetdBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest');
      return right(BooksResponseModel.fromJson(data));
    } catch (error) {
      if (error is DioError)
        {
          print(error.toString());
          return left(ServiceFailure.fromDioError(error));
        }

      print(error.toString());
      return Left(ServiceFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure,BooksResponseModel>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=subject:Programming');
      return right(BooksResponseModel.fromJson(data));
    } catch (error) {
      if (error is DioError)
      {
        print(error.toString());
        return left(ServiceFailure.fromDioError(error));
      }

      print(error.toString());

      return Left(ServiceFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, BooksResponseModel>> fetchSimilarBooks({required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      return right(BooksResponseModel.fromJson(data));
    } catch (error) {
      if (error is DioError)
      {
        print(error.toString());
        return left(ServiceFailure.fromDioError(error));
      }

      print(error.toString());

      return Left(ServiceFailure(error.toString()));
    }
  }
}
