import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class MedicalCardWidget extends StatelessWidget {
  const MedicalCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Dimensions.d25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.d3),
        color: Colors.lightGreen,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.d2),
        child: Row(
          children: [
            Flexible(
                flex: 3,
                child: Image.asset('')),
            Flexible(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.d2),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Practo Care Surgeries",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.d5),
                          )),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Multispeciality Hospital",
                            style: TextStyle(fontSize: Dimensions.d4),
                          )),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text("Nayapalli")),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}