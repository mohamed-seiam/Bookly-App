import 'package:bookly_app/features/home/presentation/manager/newest_book_cubit/newest_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/home_repo_impelement.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(this.homeRepo):super(InitialNewestBooks());


  final HomeRepoImplement homeRepo;

  Future<void> fetchFeaturedBooks () async {
    emit(LoadingNewestBooks());
    var result =  await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FailureNewestBooks(failure.errorMessage));
    }, (books) {
      emit(SuccessNewestBooks(books));
    });
  }
}