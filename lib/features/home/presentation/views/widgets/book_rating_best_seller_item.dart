import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem(
      {Key? key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count})
      : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children:  [
         const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4A),
            size: 14,
          ),
         const SizedBox(
            width: 6.3,
          ),
          Text(
            rating.toString(),
            style: Styles.style14,
          ),
         const SizedBox(
            width: 5,
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              '($count)',
              style: Styles.style14,
            ),
          ),
        ],
      ),
    );
  }
}
