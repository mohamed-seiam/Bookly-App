import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body_view.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBodyView(),
    );
  }
}
