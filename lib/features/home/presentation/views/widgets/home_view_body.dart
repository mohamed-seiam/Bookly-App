import 'package:bookly_app/features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/style.dart';
import '../../manager/featured_book_cubit/featured_cubit.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await BlocProvider.of<FeaturedCubit>(context).fetchFeaturedBooks();
        await BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
      },
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        key: UniqueKey(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                FeaturedBooksListView(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Newest Books',
                    style: Styles.style18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListViewItem(),
            ),
          ),
        ],
      ),
    );
  }
}
