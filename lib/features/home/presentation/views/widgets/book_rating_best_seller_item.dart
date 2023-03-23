import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem(
      {Key? key, this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: const [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4A),
            size: 14,
          ),
          SizedBox(
            width: 6.3,
          ),
          Text(
            '4.8',
            style: Styles.style14,
          ),
          SizedBox(
            width: 5,
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              '(2525)',
              style: Styles.style14,
            ),
          ),
        ],
      ),
    );
  }
}
