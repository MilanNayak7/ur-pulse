import 'package:flutter/material.dart';
import '../../../common/app_bar/common_app_bar.dart';class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Help Center', addBackButton: true, actionWidgets: const [],),
      body: Container(
        child: Center(child: Text("helpcenter")),
      ),
    );
  }
}
