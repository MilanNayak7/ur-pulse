import 'package:flutter/material.dart';

import '../../../common/app_bar/common_app_bar.dart';
import '../../../common/card/empty_screen.dart';


class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        appBarTitle: 'Insurance',
        addBackButton: true, actionWidgets: const [],
      ),
      body: Container(
        child: Center(
          child: EmptyScreen(
            header: "You haven't purchased any policies yet",
            buttonVisible: true,
            buttonText: 'Click here to purchase',
            subText: '',
            callback: () {},
            img: 'assets/drawer/policy.png',
          ),
        ),
      ),
    );
  }
}
