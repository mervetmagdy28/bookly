import 'package:bookly/features/home/presenation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.15),
          child: const CustomImageItem(imageUrl: 'https://i1.wp.com/onehundreddollarsamonth.com/wp-content/uploads/2013/11/Top-10-Childrens-Book-Series-The-Perfect-Christmas-Gifts-.jpg?ssl=1'),
        ),
        const SizedBox(height: 30,),
        const Text("The Jungle Book", style: Styles.textStyle30,),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .8,
          child: Text("Rudyard Kipling", style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),),
        ),
        const SizedBox(height: 12,),
        const RatingRow(
          mainAxisAlignment: MainAxisAlignment.center,
          countRating: 4,
          rating: 5,
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
