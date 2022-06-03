import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/card/empty_screen.dart';

class TestBooking extends StatelessWidget {
  const TestBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
          addBackButton: true, appBarTitle: 'Test Booking', context: context),
      body: Center(
        child: EmptyScreen(
          callback: () {},
          img: 'assets/drawer/checkup.png',
          header: "Your haven't booked any tests yet",
          buttonText: 'Book Now',
          subText: 'Get started with your first health checkup', buttonVisible: true,
        ),
      ),
    );
  }
}
