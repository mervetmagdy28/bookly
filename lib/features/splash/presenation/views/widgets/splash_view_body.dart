import 'package:bookly/costants.dart';
import 'package:bookly/features/splash/presenation/views/widgets/sliding_animation_image.dart';
import 'package:bookly/features/splash/presenation/views/widgets/sliding_animation_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../home/presenation/views/home.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationImage;
  late Animation<Offset> slidingAnimationText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }




@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlidingAnimationImage(slidingAnimationImage: slidingAnimationImage),
        SlidingAnimationText(slidingAnimationText: slidingAnimationText)
      ],
    );
  }
  void initSlidingAnimation() {
    animationController=AnimationController(vsync: this, duration:  const Duration(seconds: 2));
    slidingAnimationImage =Tween(begin: const Offset(2, 0), end: const Offset(0, 0)).animate(animationController);
    slidingAnimationText =Tween(begin: const Offset(-1, 0), end: const Offset(0, 0)).animate(animationController);

    animationController.forward();

  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const Home(),transition: Transition.fade, duration: kPrimaryDuration);
    },);
  }
}
