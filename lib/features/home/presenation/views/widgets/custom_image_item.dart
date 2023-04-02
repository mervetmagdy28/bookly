import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.33,
      child: AspectRatio(
        aspectRatio: 1.9/3,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            )
          ),
        ),
      ),
    );
  }
}
