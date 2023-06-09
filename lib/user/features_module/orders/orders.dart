import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/app_bar/common_app_bar.dart';
import '../../../common/card/empty_screen.dart';


class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        appBarTitle: 'Orders',
        addBackButton: true,
        actionWidgets: const [],
      ),
      body: Container(
        child: Center(
          child: EmptyScreen(
            buttonText: 'Order medicines',
            subText: 'Place your first order now',
            header: 'No orders placed yet',
            callback: () {
              Get.toNamed('/orderScreen');
            },
            img: 'assets/drawer/delivery.png',
            buttonVisible: true,
          ),
        ),
      ),
    );
  }
}
