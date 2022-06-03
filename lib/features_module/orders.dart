import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CommonAppBar(context: context, appBarTitle: 'Orders', addBackButton: true,),
      body: Container(
        child: Center(child: Text("Insurance")),
      ),
    );
  }
}
