import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';

class MyDoctors extends StatelessWidget {
  const MyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'My Doctor', addBackButton: true,),
      body: Container(
        child: Center(child: Text("My doctors")),
      ),
    );
  }
}
