import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/card/empty_screen.dart';

class Consultation extends StatelessWidget {
  const Consultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        appBarTitle: 'Consultation',
        addBackButton: true, actionWidgets: const [],
      ),
      body: Container(
        child: Center(
          child: EmptyScreen(
            img: 'assets/drawer/messageConsultation.png',
            callback: () {Get.toNamed('/consultADoctor');},
            buttonText: 'Consult Now',
            subText:
                'Skip the traffic and waiting rooms. Get an expert medical opinion using online consultation without disrupting your daily life',
            header: 'Get Well. Online',
            buttonVisible: true,
          ),
        ),
      ),
    );
  }
}
