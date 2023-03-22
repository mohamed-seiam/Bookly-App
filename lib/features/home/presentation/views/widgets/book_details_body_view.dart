import 'package:flutter/material.dart';

import 'book_details_custom_app_bar.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          BookDetailsCustomAppBar(),
        ],
      ),
    );
  }
}



