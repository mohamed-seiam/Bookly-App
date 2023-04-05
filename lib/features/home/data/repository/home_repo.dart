import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,BooksResponseModel>> fetchFeaturedBooks();
  Future<Either<Failure,BooksResponseModel>> fetchNewsetdBooks();
  Future<Either<Failure,BooksResponseModel>> fetchSimilarBooks({required String category});
  Future<Either<Failure,BooksResponseModel>> fetchSearchDataBooks ({required String searchKey});
}