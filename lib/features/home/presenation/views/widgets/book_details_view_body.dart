import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presenation/views/widgets/button_row.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_book_details_appBar.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_image_item.dart';
import 'package:bookly/features/home/presenation/views/widgets/like_list_view.dart';
import 'package:bookly/features/home/presenation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children:  [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.15),
            child: const CustomImageItem(),
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
           ),
          const SizedBox(height: 30,),
          const ButtonRow(),
          const SizedBox(height: 10,),
          Align(
              alignment:Alignment.bottomLeft,
              child: Text("You can also Like",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
          ),
          const SizedBox(height: 10,),
         const LikeListView()
        ],
      ),
    );
  }
}
