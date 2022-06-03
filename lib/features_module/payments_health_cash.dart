import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Payment', addBackButton: true,),
      body: Container(
        child: Center(child: Text("payment")),
      ),
    );
  }
}
