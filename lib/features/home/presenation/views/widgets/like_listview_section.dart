import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'like_list_view.dart';

class LikeListViewSection extends StatelessWidget {
  const LikeListViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also Like",style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
        const SizedBox(height: 10,),
        const LikeListView(),
      ],
    );
  }
}
