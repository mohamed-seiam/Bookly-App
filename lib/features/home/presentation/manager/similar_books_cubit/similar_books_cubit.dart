import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(InitialSimilarBooksState());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks ({required String category}) async {
    emit(LoadingSimilarBooksState());
    var result =  await homeRepo.fetchSimilarBooks(category: category);

    result.fold((failure) {
      emit(FailureSimilarBooksState(failure.errorMessage));
    }, (bookResponse) {
      print('hna success el function Similar');
      emit(SuccessSimilarBooksState(bookResponse.books));
    });
  }
}