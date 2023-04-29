import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestListView extends StatelessWidget {
  const BestListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) => const ListViewItem()),
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: 20);
  }
}
