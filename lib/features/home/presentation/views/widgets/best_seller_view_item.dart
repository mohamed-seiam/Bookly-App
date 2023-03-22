import 'package:flutter/material.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/style.dart';
import 'book_rating_best_seller_item.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                // width: MediaQuery.of(context).size.width*0.5,
                // height: MediaQuery.of(context).size.height*0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.style20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const Text(
                    'J.K. RowLing',
                    style: Styles.style14,
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: Styles.style20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     const Spacer(),
                     const BookRatingItem(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




