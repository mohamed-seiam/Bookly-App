import 'package:bookly_app/core/widget/custom_indicator.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../../../core/widget/build_offline_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body:  OfflineBuilder(
          connectivityBuilder: (
              BuildContext context,
              ConnectivityResult connectivity,
              Widget child,
              ) {
            final bool connected = connectivity != ConnectivityResult.none;
            if (connected) {
              return const HomeViewBody();
            } else {
              return buildNoInternetWidget();
            }
          },
          child: const CustomCircularIndicator(),
        ),
    );
  }
}
