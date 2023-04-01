import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

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
    animationController=AnimationController(vsync: this, duration:  const Duration(seconds: 2));
    slidingAnimationImage =Tween(begin: Offset(2, 0), end: Offset(0, 0)).animate(animationController);
    slidingAnimationText =Tween(begin: Offset(-1, 0), end: Offset(0, 0)).animate(animationController);

    animationController.forward();
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
        AnimatedBuilder(
          animation: slidingAnimationImage,
          builder: (context ,_){
          return SlideTransition(
              position: slidingAnimationImage,
              child: Image(image: AssetImage(AssetsData.logo,),width: MediaQuery.of(context).size.width*.6,fit: BoxFit.fitWidth,),);
  },),
        AnimatedBuilder(
          animation: slidingAnimationText,
          builder: (context,_){return SlideTransition(
            position: slidingAnimationText,
            child: Align(
                alignment: Alignment.center,child: Text("Read Books Free")),
          );},

        )
      ],
    );
  }
}
