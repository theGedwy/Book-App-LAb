import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/route_manager.dart';

import 'sliding_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    Future.delayed(
      const Duration(milliseconds: 2200),
      () {
        Get.to(() => const HomeView(),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 400));
      },
    );
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
      children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const Gap(20),
        SlidingAnimation(
            animationController: animationController, animation: animation),
      ],
    );
  }
}
