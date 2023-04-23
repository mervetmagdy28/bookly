import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({Key? key, this.mainAxisAlignment=MainAxisAlignment.start}) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(FontAwesomeIcons.solidStar, size: 16,color: Colors.yellowAccent,),
        Padding(
          padding: const EdgeInsets.only(left: 6.3, right: 5),
          child: Text('4.8', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
        ),
        Text("(2048)",style: Styles.textStyle16.copyWith(color: const Color(0xff707070)),)
      ],
    );
  }
}
