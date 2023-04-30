import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/error_message.dart';
import 'package:bookly/features/home/presenation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_image_item.dart';

class FeaturedListViewItems extends StatelessWidget {
  const FeaturedListViewItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {
   if(state is FeaturedBooksSuccess){
     return SizedBox(
       height: MediaQuery.of(context).size.height*.33,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemBuilder: (context, index) => const Padding(
           padding: EdgeInsets.only(right: 15),
           child: CustomImageItem(),
         ),),
     );
   }else if(state is FeaturedBooksFailure){
     return CustomErrorMessage(errMessage: state.errMessage);
   }else{
     return const CustomLoadingIndicator();
   }
  },
);
  }
}