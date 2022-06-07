import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/card/empty_screen.dart';

class Reminder extends StatelessWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(appBarTitle: 'Reminder', addBackButton: true, context: context, actionWidgets: const [],),
      body: Container(
        child: Center(
          child: EmptyScreen(
            buttonVisible: true,
            subText: 'Set a reminder for medicines, to drink enough water, or to take a break at work',
            buttonText: 'Add a reminder',
            header: 'You have no reminders',
            img: 'assets/drawer/bell.png',
            callback: () {},
          ),
        ),
      ),
    );
  }
}
