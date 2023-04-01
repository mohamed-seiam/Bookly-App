import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_book_states.dart';

import '../../../data/repository/home_repo.dart';

class FeaturedCubit extends Cubit<FeaturedBooksStates> {
  FeaturedCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks () async {
    emit(FeaturedBooksLoadingState());
  var result =  await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (bookResponse) {
      print('hna success el function');
        emit(FeaturedBooksSuccessState(bookResponse.books));
    });
  }

}