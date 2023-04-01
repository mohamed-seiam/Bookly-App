import 'package:flutter/material.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.image}) : super(key: key);
final String image ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        // width: MediaQuery.of(context).size.width*0.5,
        // height: MediaQuery.of(context).size.height*0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}