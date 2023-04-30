import 'package:flutter/material.dart';
import 'custom_image_item.dart';

class FeaturedListViewItems extends StatelessWidget {
  const FeaturedListViewItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.33,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 15),
          child: CustomImageItem(),
        ),),
    );
  }
}