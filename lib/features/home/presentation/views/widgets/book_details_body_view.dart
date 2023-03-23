import 'package:flutter/material.dart';

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
            padding: EdgeInsets.symmetric(horizontal:width * .14 ),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}





