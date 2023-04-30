import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({Key? key, required this.imageUrl}) : super(key: key);
 final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.74/2.7,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          )
        ),
      ),
    );
  }
}
