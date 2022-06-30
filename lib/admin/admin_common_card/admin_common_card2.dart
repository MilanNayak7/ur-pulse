import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/theme/app_theme.dart';
import '../admin_data_model/admin_data-model.dart';

class AdminCommonCard2 extends StatelessWidget {
   AdminCommonCard2({Key? key,required this.adminDataModel2}) : super(key: key);

  AdminDataModel2 adminDataModel2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap:(){
          Get.toNamed('/addDoctorPage');
        },
        child: Card(
          elevation: Dimensions.d2,
          color: Colors.red,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    elevation: Dimensions.d3,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Image.asset(adminDataModel2.icon,height:50,width:50,),
                    )),
                SizedBox(
                  height: Dimensions.d5,
                ),
                Card(
                    elevation: Dimensions.d3,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Text(adminDataModel2.text),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
