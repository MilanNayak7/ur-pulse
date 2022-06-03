import 'package:flutter/material.dart';

import '../common/app_bar/common_app_bar.dart';
class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppontmentsState();
}

class _AppontmentsState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CommonAppBar(appBarTitle: 'Appointment', addBackButton: true, context:context,),
      body: Center(
        child: Container(
          child: Text("appointment"),

        ),
      ),
    );
  }
}
