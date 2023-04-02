import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomTextField(),
         SizedBox(height: 2,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
          child: Text(
            'Search Result',
            style: Styles.style18,
          ),
        ),
        SizedBox(height: 16,),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric( vertical: 1.0),
          // child:  BookListViewItem(),
          child: Text('fgfg'),
        );
      },
    );
  }
}
