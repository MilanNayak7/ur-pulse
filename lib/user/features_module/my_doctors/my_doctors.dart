import 'package:flutter/material.dart';
import '../../../common/app_bar/common_app_bar.dart';
import '../../../common/card/empty_screen.dart';


class MyDoctors extends StatelessWidget {
  const MyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        appBarTitle: 'My Doctor',
        addBackButton: true, actionWidgets: const [],
      ),
      body: Container(
        child: Center(
          child: EmptyScreen(
            subText: 'Favourite a doctor for having an easy access to them whenever in need',
            buttonVisible: false,
            buttonText: '',
            header: 'You have no bookmarked doctors',
            callback: () {},
            img: 'assets/drawer/doctorGroup.png',
          ),
        ),
      ),
    );
  }
}
