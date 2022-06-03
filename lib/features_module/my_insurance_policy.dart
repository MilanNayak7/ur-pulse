import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';

class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Insurance', addBackButton: true,),
      body: Container(
        child: Center(child: Text("Insurance")),
      ),
    );
  }
}
