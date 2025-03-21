import 'package:clean_archi_bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_images.dart';
import 'silding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; //value 0 to 1
  late Animation<Offset> slidingAnimation; //

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 15),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
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
        Image.asset(Assets.imagesLogo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
