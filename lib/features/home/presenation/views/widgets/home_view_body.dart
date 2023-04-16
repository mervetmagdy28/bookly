import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
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
          SizedBox(height: 40,),
          Text("Best Seller", style: Styles.textStyle18,),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: const [
          CustomImageItem(),

        ],
      ),
    );
  }
}
