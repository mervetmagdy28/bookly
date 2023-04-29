import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../home/presenation/views/widgets/best_seller_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
              suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.white,),
              label: const Text("search"),
              labelStyle: const TextStyle(color: Colors.white),
              enabledBorder: borderSearch,
              focusedBorder: borderSearch
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text("Search Result", style: Styles.textStyle18,),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) => const ListViewItem()),
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
                itemCount: 20),
          )
        ],
      ),
    );
  }
}

InputBorder borderSearch= OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: Colors.white)
);