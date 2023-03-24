import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_custom_app_bar.dart';
import 'books_details_section.dart';
class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                BookDetailsCustomAppBar(),
                BookDetailsSection(),
                Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                SimilarBooksSection(),
                SizedBox(
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



