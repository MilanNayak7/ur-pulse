import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

class TestBooking extends StatelessWidget {
  const TestBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(addBackButton: true, appBarTitle: 'Test Booking', context:context),
      body: const Center(
            child: Center(child: Text("Test Booking")),
      ),
    );
  }
}
