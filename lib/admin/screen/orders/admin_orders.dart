import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

class AdminOrders extends StatelessWidget {
  const AdminOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        actionWidgets: [],
        addBackButton: true,
        appBarTitle: 'All Orders',
      ),
    );
  }
}
