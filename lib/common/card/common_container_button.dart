import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../theme/app_theme.dart';

class CommonContainerButton extends StatelessWidget {
  CommonContainerButton(
      {Key? key, this.icon, required this.txt, required this.callback})
      : super(key: key);
  Callback? callback;
  String txt;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: Dimensions.d13,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.d2),
          border: Border.all(
            color: Colors.black45,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: icon != null,
              child: Flexible(flex: 1, child: Icon(icon)),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Text(
                  txt,
                  style: TextStyle(
                      fontSize: Dimensions.d4,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}