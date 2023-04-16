import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../costants.dart';
import 'custom_image_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children:[
          const CustomImageItem(),
          const SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: Text("Harry Potter Goblet of Fire",
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine,),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3,),
              const Text("mervet magdy", style: Styles.textStyle14,),
              const SizedBox(height: 3,),
              Row(
                children: [
                  Text("19.99\$", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),)
                ],)
            ],
          )
        ],
      ),
    );
  }
}
