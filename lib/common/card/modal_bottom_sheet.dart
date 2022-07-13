

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../user/data_model/data_model.dart';
import '../main_drawer/main_drawer.dart';
import '../theme/app_theme.dart';

class ModalBottomSheet {
  static void moreModalBottomSheet(
      BuildContext context, {
        required String heading,
        required List<DrawerMenuModel> listOfData,
      }) {
    // Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.d10),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: Dimensions.dh650,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.d5),
                topLeft: Radius.circular(Dimensions.d5),
              ),
            ),
            child: Padding(
                padding: EdgeInsets.fromLTRB(
                    Dimensions.d5, Dimensions.d5, Dimensions.d5, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimensions.d8,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.close),
                      ),
                      SizedBox(
                        height: Dimensions.d2,
                      ),
                      Text(
                        heading,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: Dimensions.d6),
                      ),
                      CustomDrawer(
                        dummydata: listOfData,
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}