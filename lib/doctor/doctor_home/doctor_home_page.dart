import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/doctor/data_model/doctor_data_model.dart';
import '../../common/app_bar/common_app_bar.dart';
import '../../common/theme/app_theme.dart';
import '../doctor_card/doctor_common_card.dart';


class DoctorHomePage extends StatelessWidget {
  const DoctorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE9DAC1),
        appBar: CommonAppBar(
          addBackButton: false,
          appBarTitle: 'Doctor',
          context: context,
          actionWidgets: [],
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(delegate:SliverChildBuilderDelegate((context, index){
              return DoctorCommonCard(doctorDataModel:doctorDataModel[index],);
            },childCount:doctorDataModel.length),
            ),
            SliverToBoxAdapter(
              child:SizedBox(height:Dimensions.d10,),
            )
          ],
        )
    );
  }
}
