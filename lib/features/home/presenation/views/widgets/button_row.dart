import 'package:flutter/material.dart';

import 'custom_text_button.dart';
class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: const [
          Expanded(
            child: CustomTextButton(
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
              text: "19,99\$",
              textColor: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(width: .5,),
          Expanded(
            child: CustomTextButton(
              backgroundColor: Color(0xffef8262),
              borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
              text: "Free preview",
              textColor: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
