import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../style.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children:  [
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4A),
            size: 14,
          ),
          const SizedBox(width: 6.3,),
          const Text(
            '4.8',
            style: Styles.style14,
          ),
          const SizedBox(width: 5,),
          Text(
            '(2525)',
            style: Styles.style14.copyWith(
              color: const Color(0xff707070),
            ),
          ),
        ],
      ),
    );
  }
}