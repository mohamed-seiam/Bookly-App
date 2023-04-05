import 'package:bookly_app/core/widget/custom_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_book_cubit/newest_book_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_error_widget.dart';
import 'best_seller_view_item.dart';

class BestSellerListViewItem extends StatefulWidget {
  const BestSellerListViewItem({Key? key,}) : super(key: key);

  @override
  State<BestSellerListViewItem> createState() => _BestSellerListViewItemState();
}

class _BestSellerListViewItemState extends State<BestSellerListViewItem> {

  @override
  void initState() {
    BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksStates>(
      buildWhen: (previous,current){
        return (current is SuccessNewestBooks|| current is LoadingNewestBooks) ;
      },
      builder: (context,state){
        if(state is SuccessNewestBooks) {
          return  ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: state.books?.length ?? 0,
            itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.symmetric( vertical: 10),
                child:  NewestBookListViewItem(bookModel: state.books![index]),
              );
            },
          );
        }else if(state is FailureNewestBooks ){
          return CustomErrorWidget(errorMessage: state.error,);
        } else if(state is LoadingNewestBooks) {
          return const CustomCircularIndicator();
        }else {
          return  Container();
        }
      },
    );
  }
}