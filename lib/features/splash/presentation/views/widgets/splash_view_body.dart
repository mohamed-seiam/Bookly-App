import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../home/presentation/views/home_view.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSliderAnimation();

    navigateToHome();
  }

  @override
  void dispose() {

    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 6,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSliderAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(begin:const Offset(0, 10) ,end:const Offset(0, 0)).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>const HomeView(),transition: Transition.leftToRightWithFade,duration: const Duration(milliseconds: 600));
    });
  }

}


