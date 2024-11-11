import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_app_bar.dart';
import 'featured_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(25),
            CustomAppBar(),
            Gap(20),
            FeaturedListViewBuilder(),
            Gap(40),
            Text(
              'Best Seller',
              style: Styles.textStyle18,
            )
          ],
        ),
      ),
    );
  }
}
