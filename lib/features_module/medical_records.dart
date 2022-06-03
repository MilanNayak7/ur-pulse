import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';

class MedicalRecords extends StatelessWidget {
  const MedicalRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Medical Records', addBackButton: true,),
      body: Container(
        child: Center(child: Text("MedicalRecords")),
      ),
    );
  }
}
