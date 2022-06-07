import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Setting', addBackButton: true, actionWidgets: const [],),
      body: Container(
        child: Center(child: Text("reminder")),
      ),
    );
  }
}
