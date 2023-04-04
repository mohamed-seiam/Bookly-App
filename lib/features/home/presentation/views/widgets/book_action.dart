import 'package:flutter/material.dart';
import '../../../../../core/utils/functions/launch_url.dart';
import '../../../../../core/widget/action_button.dart';
import '../../../data/models/book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.bookModel}) : super(key: key);
final  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children:   [
         const Expanded(child: CustomButton(
            backGroundColor: Colors.white,
            textColor: Colors.black,
            text: '19.99\$',
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft:Radius.circular(16)),
          )),

          Expanded(child: CustomButton(
            onPressed: () async{
             launchCustomUrl(context,bookModel.volumeInfo.previewLink);
            },
            backGroundColor:const Color(0xffEF8262),
            textColor: Colors.white,
            text:  getText(bookModel),
            fontSize: 16,
            borderRadius:const BorderRadius.only(topRight: Radius.circular(16),bottomRight:Radius.circular(16)),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null ){
      return 'Not Available';

    }else {
      return 'Preview';
    }
  }
}