import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  CommonAppBar(
      {Key? key,
      required this.context,
      required this.actionWidgets,
      required this.addBackButton,
      required this.appBarTitle,
      required this.preferredSize})
      : super(key: key);

  List<Widget> actionWidgets = const [];
  bool addBackButton = true;
  BuildContext context;
  String appBarTitle;

  @override
  final Size preferredSize;

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
    );
  }
}
