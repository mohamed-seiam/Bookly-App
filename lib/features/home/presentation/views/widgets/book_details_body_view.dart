import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';
import 'book_action.dart';
import 'book_details_custom_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children:  [
         const BookDetailsCustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:width * .2 ),
            child: const CustomBookImage(),
          ),
         const SizedBox(height: 43,),
          Text(
              'The Jungle Book',
           style: Styles.style30.copyWith(
             fontWeight: FontWeight.bold,
           ),
          ),
         const SizedBox(height: 6,),
          Text(
              'Rudyard Kipling',
           style: Styles.style18.copyWith(
             fontStyle: FontStyle.italic,
             fontWeight: FontWeight.w500,
             color: Colors.white.withOpacity(0.7),
           ),
          ),
         const SizedBox(height: 18,),
         const BookRatingItem(mainAxisAlignment: MainAxisAlignment.center,),
          const SizedBox(height: 38,),
          const BookAction(),
           const SizedBox(height: 50,),
           Align(
             alignment: Alignment.topLeft,
             child: Text(
                'You can also like',
              style: Styles.style14.copyWith(
                fontWeight: FontWeight.w600,
              ),
          ),
           ),
         const SizedBox(height: 16,),
         const SimilarBookListView(),
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}






