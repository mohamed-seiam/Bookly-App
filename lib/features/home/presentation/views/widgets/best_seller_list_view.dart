import 'package:flutter/material.dart';

import 'best_seller_view_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric( vertical: 1.0),
          child:  BookListViewItem(),
        );
      },
    );
  }
}