import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

class OrderPayment extends StatelessWidget {
  const OrderPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CommonAppBar(appBarTitle: 'Choose Delivery Option', addBackButton:true, actionWidgets: [], context:context,

      ),
    );
  }
}
