import 'package:flutter/material.dart';

import '../../../common/app_bar/common_app_bar.dart';
class AdminPatient extends StatelessWidget {
  const AdminPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        addBackButton: true,
        appBarTitle: 'Patient',
        context: context,
        actionWidgets: [],
      ),
    );
  }
}
