import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.onPressed, this.controller}) : super(key: key);
final void Function()? onPressed;
 final TextEditingController ? controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
      child: TextField(
        controller:controller ,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          suffixIconColor: Colors.white,
          hintText: 'Search',
          suffixIcon:  IconButton(
              onPressed:onPressed,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass) ),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide:const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
