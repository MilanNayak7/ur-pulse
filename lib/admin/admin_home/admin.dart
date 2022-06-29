import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../admin_common_card/admin_common_card.dart';
import '../admin_data_model/admin_data-model.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE9DAC1),
        appBar: CommonAppBar(
          addBackButton: false,
          appBarTitle: 'Admin',
          context: context,
          actionWidgets: [],
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(delegate:SliverChildBuilderDelegate((context, index){
             return AdminCommonCard(adminDataModel:adminDataModel[index],);
            },childCount:adminDataModel.length),
            ),
            SliverToBoxAdapter(
              child:SizedBox(height:Dimensions.d10,),
            )
          ],
    ));
  }
}
