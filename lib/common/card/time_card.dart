

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class TimeCard extends StatelessWidget {
  TimeCard({Key? key, required this.timeModel}) : super(key: key);
  TimeModel timeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.d3),
      child: InkWell(
        onTap: () {
          Get.toNamed('/appointmentConform');
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(Dimensions.d1)),
          child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: Dimensions.d2, right: Dimensions.d2),
                child: Text(
                  "${timeModel.time} ${timeModel.hour}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}