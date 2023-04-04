import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_book_states.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/featured_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit,FeaturedBooksStates>(
      builder:(context,state) {
        if(state is FeaturedBooksSuccessState){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books?.length??0,
              itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.books![index]);
                    },
                    child: CustomBookImage(
                      image: state.books![index].volumeInfo.imageLinks?.thumbnail?? '',
                    ),
                  ),
                );
              },
            ),
          );
        }else if (state is FeaturedBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else {
          return const CustomCircularIndicator();
        }
      } ,
    );
  }
}