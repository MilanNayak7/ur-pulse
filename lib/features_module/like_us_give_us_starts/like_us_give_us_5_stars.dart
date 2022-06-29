import 'package:flutter/material.dart';

import '../../common/app_bar/common_app_bar.dart';

class LikeUs extends StatelessWidget {
  const LikeUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(context: context, appBarTitle: 'Like Us', addBackButton: true, actionWidgets: const [],),
      body: Container(
        child: Center(child: Text("LikeUs")),
      ),
    );
  }
}
