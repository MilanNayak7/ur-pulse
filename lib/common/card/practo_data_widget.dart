
import 'package:flutter/material.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class PractoDataWidget extends StatelessWidget {
  PractoDataWidget({Key? key, required this.showOffCardModel})
      : super(key: key);
  ShowOffCardModel showOffCardModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.d35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: showOffCardModel.icon,
          ),
          Text(
            showOffCardModel.text1,
            style:
            TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.d4),
          ),
          Text(
            showOffCardModel.text2,
            style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: Dimensions.d7),
          )
        ],
      ),
    );
  }
}