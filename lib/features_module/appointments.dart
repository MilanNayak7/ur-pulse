import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';
import '../after_empty_screen/symptoms_screen.dart';
import '../common/app_bar/common_app_bar.dart';
import '../common/card/empty_screen.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppontmentsState();
}

class _AppontmentsState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: 'Appointment',
        addBackButton: true,
        context: context,
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.only(left: Dimensions.d3, right: Dimensions.d3),
            child: EmptyScreen(
              img: 'assets/drawer/calendar.png',
              callback: () {
                Get.toNamed('symptoms');
              },
              buttonText: 'Book Now',
              subText:
                  'Start by looking for doctors near you, \nread patient stories and book appointments',
              header: "You haven't booked any appointments yet",
              buttonVisible: true,
            )),
      ),
    );
  }
}
