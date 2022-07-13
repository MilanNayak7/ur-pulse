import 'package:flutter/material.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class ConsultationTypeWidget extends StatelessWidget {
  ConsultationTypeWidget({Key? key, required this.consultationType})
      : super(key: key);
  ConsultationType consultationType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(Dimensions.d5)),
        child: Padding(
          padding: EdgeInsets.all(Dimensions.d3),
          child: Text(
            consultationType.type,
            style: TextStyle(fontSize: Dimensions.d4),
          ),
        ),
      ),
    );
  }
}