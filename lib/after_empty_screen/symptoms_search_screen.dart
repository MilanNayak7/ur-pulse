import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';

class SymptomsSearch extends StatelessWidget {
  const SymptomsSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        addBackButton: true,
        appBarTitle: 'Find Your Health Concern',
      ),
      body: Container(),
    );
  }
}
