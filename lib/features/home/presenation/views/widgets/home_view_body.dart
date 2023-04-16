import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'custom_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          CustomAppBar(),
          CustomListViewItems(),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text("Best Seller", style: Styles.textStyle18,),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
