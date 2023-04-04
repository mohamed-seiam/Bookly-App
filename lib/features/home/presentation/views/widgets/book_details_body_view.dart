import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_custom_app_bar.dart';
import 'books_details_section.dart';
class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key, required this.bookModel}) : super(key: key);
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:  [
               const BookDetailsCustomAppBar(),
                BookDetailsSection(bookModel: bookModel,),
               const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
               const SimilarBooksSection(),
               const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



