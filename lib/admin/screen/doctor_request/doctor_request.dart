import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import '../../../common/card/doctor_detail_card.dart';
import '../../../network_operation/dio_response.dart';

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
              callback: () {  },
              next_available_time_visibility:false, doctor: _client.getAllDoctor(),
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
