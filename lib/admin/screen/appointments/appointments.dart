import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

class AdminAppointments extends StatelessWidget {
  const AdminAppointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CommonAppBar(
        addBackButton: true,
        appBarTitle: 'All Appointments',
        context: context,
        actionWidgets: [],
      ),
    );
  }
}
