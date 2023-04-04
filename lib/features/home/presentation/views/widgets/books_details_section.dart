import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import '../../../data/models/book_model.dart';
import 'book_action.dart';
import 'book_rating_best_seller_item.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(image:bookModel.volumeInfo.imageLinks?.thumbnail ??'',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title.toString(),
          style: Styles.style30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.authors?[0]??'',
          style: Styles.style18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRatingItem(
           rating: bookModel.volumeInfo.averageRating?.round()??0,
          count: bookModel.volumeInfo.ratingsCount??0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 38,
        ),
         BookAction(bookModel: bookModel,),
      ],
    );
  }
}