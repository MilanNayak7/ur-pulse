import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../theme/app_theme.dart';

class EmptyScreen extends StatelessWidget {
  EmptyScreen(
      {Key? key,
      required this.img,
      required this.header,
      required this.callback,
      required this.subText,
        required this.buttonVisible,
      required this.buttonText})
      : super(key: key);
  String img;
  String header;
  String? subText;
  Callback? callback;
  String? buttonText;
  bool buttonVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: Dimensions.d3, right: Dimensions.d3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 180,
              height: 180,
            ),
            Text(
              header,
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: Dimensions.d4),
            ),
            SizedBox(
              height: 10,
            ),
            Text(subText!),
            SizedBox(
              height: Dimensions.d4,
            ),
            Visibility(
              visible: buttonVisible,
              child: ElevatedButton(
                onPressed:callback,
                child: Container(
                  width: Dimensions.d300,
                  height: Dimensions.d60,
                  child: Center(
                      child: Text(
                    buttonText!,
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: Dimensions.d4),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
