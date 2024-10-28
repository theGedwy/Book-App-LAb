import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const Gap(20),
        const Text(
          'Discover the world',
        ),
      ],
    );
  }
}
