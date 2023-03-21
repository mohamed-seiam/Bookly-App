import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
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
            style: Styles.style18,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children:  [
        AspectRatio(
          aspectRatio: 3 / 4,
          child: Container(
            // width: MediaQuery.of(context).size.width*0.5,
            // height: MediaQuery.of(context).size.height*0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // color: Colors.red,
              image:const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.testImage,
                ),
              ),
            ),
          ),
        )
        ],
      ),
    );
  }
}







