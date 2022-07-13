import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/networking/doctor_dio_client.dart';
import '../../../common/card/doctor_detail_card.dart';
import '../../../user/data_model/data_model.dart';


class DoctorApprovalRequest extends StatelessWidget {
   DoctorApprovalRequest({Key? key}) : super(key: key);
  DoctorDioClient _client = DoctorDioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: 'All Doctor request',
        addBackButton: true,
        actionWidgets: [],
        context: context,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate:SliverChildBuilderDelegate((BuildContext context ,int index){
            return DoctorDetailCard(address_and_fee_visibility: true, buttonText: 'Approved',
              commonDoctorDetailCard:doctorDetail[1],
              callback: () {  },
              next_available_time_visibility:false,
            );
          }))
        ],
      )
      // ElevatedButton(onPressed: () {
      //   _client.getNonApprovedDoctor();
      // },
      // child:Text("click me"),
      // )
    );
  }
}
