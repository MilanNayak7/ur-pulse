import 'package:flutter/material.dart';

import '../../../common/app_bar/common_app_bar.dart';
import '../../../common/card/empty_screen.dart';


class MedicalRecords extends StatelessWidget {
  const MedicalRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        appBarTitle: 'Medical Records',
        addBackButton: true, actionWidgets: const [],
      ),
      body: Center(
        child: EmptyScreen(
          header: 'Add a medical record',
          buttonVisible: true,
          buttonText: 'Add a record',
          subText:
              'A detailed health history helps a doctor diagnose you better',
          callback: () {},
          img: 'assets/drawer/prescription.png',
        ),
      ),
    );
  }
}
