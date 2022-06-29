import 'package:flutter/material.dart';

import '../../../common/app_bar/common_app_bar.dart';

class AdminDisease extends StatelessWidget {
  const AdminDisease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        addBackButton: true,
        appBarTitle: 'All Disease',
        context: context,
        actionWidgets: [],
      ),
    );
  }
}
