import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_app_bar.dart';
import 'featured_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(context) {
    return const Scaffold(
      body: Column(
        children: [
          Gap(25),
          CustomAppBar(),
          Gap(20),
          FeaturedListViewBuilder(),
        ],
      ),
    );
  }
}
