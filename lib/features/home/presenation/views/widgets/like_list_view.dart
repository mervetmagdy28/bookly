import 'package:flutter/material.dart';

import 'custom_image_item.dart';

class LikeListView extends StatelessWidget {
  const LikeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 15),
          child: CustomImageItem(imageUrl: 'https://i1.wp.com/onehundreddollarsamonth.com/wp-content/uploads/2013/11/Top-10-Childrens-Book-Series-The-Perfect-Christmas-Gifts-.jpg?ssl=1'),
        ),)
    );
  }
}
