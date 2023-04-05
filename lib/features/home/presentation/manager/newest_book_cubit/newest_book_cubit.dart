import 'package:bookly_app/features/home/presentation/manager/newest_book_cubit/newest_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(this.homeRepo):super(InitialNewestBooks());


  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks () async {
    emit(LoadingNewestBooks());
    var result =  await homeRepo.fetchNewsetdBooks();

    result.fold((failure) {
      emit(FailureNewestBooks(failure.errorMessage));
    }, (bookResponse) {
      emit(SuccessNewestBooks(bookResponse.books));
    });
  }

  Future<void> fetchSearchBooks ({required String searchKey}) async {
    emit(LoadingSearchBooks());
    var result =  await homeRepo.fetchSearchDataBooks(searchKey: searchKey);

    result.fold((failure) {
      emit(FailureSearchBooks(failure.errorMessage));
    }, (bookResponse) {
      emit(SuccessSearchBooks(bookResponse.books));
    });
  }
}