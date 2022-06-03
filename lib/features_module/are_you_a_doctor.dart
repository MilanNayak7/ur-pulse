import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

class AreYouADoctor extends StatelessWidget {
  const AreYouADoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Are You Doctor', addBackButton: true,),
      body: Container(
        child: Center(child: Text("Are you doctor")),
      ),
    );
  }
}
