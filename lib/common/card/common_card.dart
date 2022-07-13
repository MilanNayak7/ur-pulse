import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class CommonCard extends StatelessWidget {
  CommonCard(
      {Key? key,
      this.containerColor,
      required this.commonCardModel,
      required this.height,
      required this.width,
      this.callback,
      required this.bottomLeftRadius,
      required this.bottomRightRadius,
      required this.defaultSubTextSize,
      required this.imageBackground,
      required this.borderColor,
      required this.defaultTextHeaderSize})
      : super(key: key);

  Color? containerColor;
  double height;
  double width;
  double defaultTextHeaderSize = Dimensions.d4;
  double defaultSubTextSize = Dimensions.d3;
  CommonCardModel commonCardModel;
  double bottomLeftRadius = 1.0;
  double bottomRightRadius = 1.0;
  Callback? callback;
  Color? imageBackground;
  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.d2),
          border: Border.all(
            color: borderColor!,
          ),
        ),
        height: height,
        width: width,
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    color: imageBackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.d2),
                        bottomLeft: Radius.circular(bottomLeftRadius),
                        bottomRight: Radius.circular(bottomRightRadius),
                        topRight: Radius.circular(Dimensions.d2))),
                child: Image.asset(commonCardModel.img),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Dimensions.d2),
                        bottomRight: Radius.circular(Dimensions.d2))),
                height: height,
                width: width,
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.d2),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        commonCardModel.mainText,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                            fontSize: defaultTextHeaderSize,
                            fontWeight: FontWeight.bold),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          commonCardModel.subText ?? '',
                          overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: defaultSubTextSize),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
























