import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../style.dart';
import 'custom_app_bar.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
              'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}






