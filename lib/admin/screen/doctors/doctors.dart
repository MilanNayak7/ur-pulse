import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../../../common/app_bar/common_app_bar.dart';
import '../../admin_common_card/admin_common_card2.dart';
import '../../admin_data_model/admin_data-model.dart';

class AdminDoctors extends StatelessWidget {
  const AdminDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          addBackButton: true,
          appBarTitle: 'All Doctors',
          context: context,
          actionWidgets: [],
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0,
              ),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return AdminCommonCard2(
                  adminDataModel2: adminDataModel2[index],
                );
              }, childCount: adminDataModel2.length),
            ),
          ],
        ));
  }
}
