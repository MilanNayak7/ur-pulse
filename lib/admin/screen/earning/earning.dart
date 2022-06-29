import 'package:flutter/material.dart';

import '../../../common/app_bar/common_app_bar.dart';

class AdminEarning extends StatelessWidget {
  const AdminEarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        addBackButton: true,
        appBarTitle: 'Earning',
        context: context,
        actionWidgets: [],
      ),
    );
  }
}
