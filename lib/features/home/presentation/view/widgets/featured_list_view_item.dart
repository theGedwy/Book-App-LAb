import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(AssetsData.logo),
              ),
              borderRadius: BorderRadius.circular(8),
              color: Colors.red),
        ),
      ),
    );
  }
}
