import 'package:bookly/features/home/presenation/views/widgets/button_row.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_book_details_appBar.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'like_listview_section.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
           hasScrollBody: false,
            child:Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Column(
                children:  const[
                   CustomBookDetailsAppBar(),
                   BookDetailsSection(),
                   ButtonRow(),
                   Expanded(child: SizedBox(height: 10,)),
                   LikeListViewSection(),
                   SizedBox(height: 20,)
                ],
              ),
            ),
        )
      ],
    );

  }
}
