import 'package:flutter/material.dart';

import '../../common/theme/app_theme.dart';
import '../admin_data_model/admin_data-model.dart';

class AdminCommonCard extends StatelessWidget {
  AdminCommonCard({Key? key, required this.adminDataModel}) : super(key: key);

  AdminDataModel adminDataModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.d13, left: Dimensions.d2, right: Dimensions.d2),
      child: InkWell(
        onTap:adminDataModel.callBack,
        child: Card(
          color: Color(0xFFF7ECDE),
          elevation: Dimensions.d1,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.d32,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Dimensions.d3, horizontal: Dimensions.d6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                adminDataModel.cardName,
                                style: TextStyle(
                                    fontSize: Dimensions.d5,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Text(
                                adminDataModel.totalNo,
                                style: TextStyle(
                                    fontSize: Dimensions.d5,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.verified_outlined),
                          SizedBox(
                            width: Dimensions.d3,
                          ),
                          Text(
                            adminDataModel.bottomString,
                            style: TextStyle(fontSize: Dimensions.d4),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: Dimensions.d3,
                top: Dimensions.d2-Dimensions.d11,
                child: Card(
                  elevation: Dimensions.d2,
                  color: Color(0xFF54BAB9),
                  child: SizedBox(
                      height: Dimensions.d23,
                      width: Dimensions.d23,
                      child: Center(
                          child: Image.asset(
                        adminDataModel.iconData,
                        height: Dimensions.d12,
                        width: Dimensions.d12,
                      ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
