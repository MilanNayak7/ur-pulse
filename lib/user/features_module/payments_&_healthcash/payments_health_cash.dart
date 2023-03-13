import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ur_pulse_modified/user/features_module/payments_&_healthcash/payment.dart';

import '../../../common/app_bar/common_app_bar.dart';

class PaymentHealthCash extends StatelessWidget {
  const PaymentHealthCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Payment', addBackButton: true, actionWidgets: const [],),
      body: Container(
        child:ElevatedButton(onPressed: () { Get.to(Payment());},
        child: Text('Make payment'),),
      ),
    );
  }
}
