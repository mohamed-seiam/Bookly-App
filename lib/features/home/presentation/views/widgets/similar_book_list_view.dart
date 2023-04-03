import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context,state){
      if(state is SuccessSimilarBooksState){
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.0),
                child:  CustomBookImage(image: 'http://books.google.com/books/content?id=BOyCSAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',),
              );
            },
          ),
        );
      }else if (state is FailureSimilarBooksState){
        return CustomErrorWidget(errorMessage: state.error);
      }else {
        return const CustomCircularIndicator();
      }
      },

    );
  }
}
