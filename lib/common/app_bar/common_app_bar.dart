import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  CommonAppBar({
    Key? key,
    required this.context,
    required this.addBackButton,
    required this.appBarTitle,
    required this.actionWidgets,
  }) : super(key: key);

  bool addBackButton = true;
  BuildContext context;
  String appBarTitle;
  List<Widget> actionWidgets = const [];

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigo,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
              visible: addBackButton,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Get.back();
                },
              ))
        ],
      ),
      title: Text(appBarTitle),
      actions:actionWidgets,
    );
  }
}
