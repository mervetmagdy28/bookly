import 'package:bookly/core/utils/router.dart';
import 'package:bookly/features/home/presenation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../costants.dart';
import 'custom_image_item.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children:[
            const CustomImageItem(imageUrl: 'https://i1.wp.com/onehundreddollarsamonth.com/wp-content/uploads/2013/11/Top-10-Childrens-Book-Series-The-Perfect-Christmas-Gifts-.jpg?ssl=1'),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("19.99\$", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      const RatingRow(),
                    ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
