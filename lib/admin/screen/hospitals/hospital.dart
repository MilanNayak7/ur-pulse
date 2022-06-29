import 'package:flutter/material.dart';

import '../../../common/app_bar/common_app_bar.dart';
class AdminHospital extends StatelessWidget {
  const AdminHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CommonAppBar(
        addBackButton: true,
        appBarTitle: 'All Hospital',
        context: context,
        actionWidgets: [],
      ),
    );
  }
}
