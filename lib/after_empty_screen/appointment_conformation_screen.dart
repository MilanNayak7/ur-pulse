import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
class AppointmentConformationScreen extends StatelessWidget {
  const AppointmentConformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(appBarTitle: 'Book In-Clinic Appointment', addBackButton: true, context: context,),
      body: Container(),
    );
  }
}
