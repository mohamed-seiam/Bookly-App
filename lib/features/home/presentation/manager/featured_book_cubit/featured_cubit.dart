
import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repository/home_repo_impelement.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_book_states.dart';

class FeaturedCubit extends Cubit<FeaturedBooksStates> {
  FeaturedCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepoImplement homeRepo;

  Future<void> fetchFeaturedBooks () async {
    emit(FeaturedBooksLoadingState());
  var result =  await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (books) {
        emit(FeaturedBooksSuccessState(books));
    });
  }

}