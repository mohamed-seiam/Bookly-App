import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

Widget buildNoInternetWidget() {
  return Center(
    child: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const SizedBox(
            height: 20.0,
          ),
          DefaultTextStyle(
            textAlign: TextAlign.center,
            style:const TextStyle(
              fontSize: 18,
              color: Styles.myGrey,
              shadows: [
                Shadow(
                  blurRadius: 9.0,
                  color: Styles.myYellow,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FlickerAnimatedText('Can\'t connect.. check Your InterNet'),
              ],
            ),
          ),
         const SizedBox(
            height: 20.0,
          ),
          Image.asset(
            'assets/images/notfound.png',
          ),
        ],
      ),
    ),
  );
}
