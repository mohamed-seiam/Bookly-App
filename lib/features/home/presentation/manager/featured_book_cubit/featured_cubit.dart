import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_book_states.dart';

class FeaturedCubit extends Cubit<FeaturedBooksStates> {
  FeaturedCubit() : super(FeaturedBooksInitialState());
}