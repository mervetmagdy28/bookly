import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 30,
        child: LoadingIndicator(
            indicatorType: Indicator.lineScalePulseOut, /// Required, The loading type of the widget
            colors: [Colors.white],       /// Optional, The color collections
            strokeWidth: 2,               /// Optional, The stroke of the line, only applicable to widget which contains line
           // backgroundColor: Colors.black,      /// Optional, Background of the widget
           // pathBackgroundColor: Colors.black   /// Optional, the stroke backgroundColor
        ),
      ),
    );
  }
}
