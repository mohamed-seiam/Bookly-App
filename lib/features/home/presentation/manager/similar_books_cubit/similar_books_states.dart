import '../../../data/models/book_model.dart';

abstract class SimilarBooksState {}

class InitialSimilarBooksState extends SimilarBooksState {}

class LoadingSimilarBooksState extends SimilarBooksState {}

class SuccessSimilarBooksState extends SimilarBooksState {
  final List<BookModel> ? similarBooks ;

  SuccessSimilarBooksState(this.similarBooks);
}

class FailureSimilarBooksState extends SimilarBooksState {
  final String error ;

  FailureSimilarBooksState(this.error);
}