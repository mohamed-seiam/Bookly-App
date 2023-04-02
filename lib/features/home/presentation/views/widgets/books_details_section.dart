import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import 'book_action.dart';
import 'book_rating_best_seller_item.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(image: 'http://books.google.com/books/content?id=BOyCSAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.style30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.style18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRatingItem(
           rating: 5,
          count: 2250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 38,
        ),
        const BookAction(),
      ],
    );
  }
}