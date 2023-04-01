import '../../../data/models/book_model.dart';

abstract class NewestBooksStates {}

class InitialNewestBooks extends NewestBooksStates {}

class LoadingNewestBooks extends NewestBooksStates {}

class SuccessNewestBooks extends NewestBooksStates {
  final List<BookModel> ? books ;

  SuccessNewestBooks(this.books);
}

class FailureNewestBooks extends NewestBooksStates {
  final String error ;

  FailureNewestBooks(this.error);

}
