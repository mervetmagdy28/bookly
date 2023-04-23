import 'package:bookly/features/home/presenation/views/widgets/custom_book_details_appBar.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_image_item.dart';
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
        ],
      ),
    );
  }
}
