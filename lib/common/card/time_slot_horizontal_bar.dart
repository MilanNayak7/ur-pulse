

import 'package:flutter/material.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class TimeSlotHorizontalBar extends StatelessWidget {
  TimeSlotHorizontalBar({Key? key, required this.slotTimeModel})
      : super(key: key);
  SlotTimeModel slotTimeModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.d3),
      child: Container(
        // width:110,
        // color:Colors.black26,
        child: Row(
          children: [
            Text(
              slotTimeModel.day,
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: Dimensions.d4),
            ),
            SizedBox(
              width: Dimensions.d1,
            ),
            Text(slotTimeModel.month,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: Dimensions.d4)),
            SizedBox(
              width: Dimensions.d1,
            ),
            Text(
              '${slotTimeModel.slotNo} Slot',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}