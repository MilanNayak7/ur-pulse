

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class SymptomsWidgets extends StatelessWidget {
  SymptomsWidgets(this.symptomsModel);
  final DrawerMenuModel symptomsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/doctorList');
      },
      child: Column(
        children: [
          Container(
            width: Dimensions.d12,
            height: Dimensions.d12,
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(Dimensions.d6),
            ),
            child: Image.asset(
              symptomsModel.imageUrl,
              width: Dimensions.d2,
              height: Dimensions.d2,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: Dimensions.d3,
          ),
          SizedBox(
            width: Dimensions.d12,
            child: Text(
              symptomsModel.Header,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: Dimensions.d3,
              ),
            ),
          )
        ],
      ),
    );
  }
}