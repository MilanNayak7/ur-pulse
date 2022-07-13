import 'package:flutter/material.dart';
import '../../../common/app_bar/common_app_bar.dart';
import '../../../common/card/common_container_button.dart';
import '../../../common/card/consultation_type_widget.dart';
import '../../../common/card/doctor_detail_card.dart';
import '../../../common/theme/app_theme.dart';
import '../../data_model/data_model.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        addBackButton: true,
        appBarTitle: 'Find your Health Concern', actionWidgets: const [],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: Dimensions.d4),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.d8,
                    right: Dimensions.d8,
                    top: Dimensions.d8),
                child: CommonContainerButton(
                  callback: () {},
                  txt: 'Search Symptoms/ Specialities',
                  icon: Icons.search,
                ),
              ),
              SizedBox(
                height: Dimensions.d4,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: Dimensions.d3,
                  children: List<Widget>.generate(consultation.length, (index) {
                    return ConsultationTypeWidget(
                      consultationType: consultation[index],
                    );
                  }),
                ),
              ),
              SizedBox(
                height: Dimensions.d4,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //Top Offer banner

                      Container(
                        color: Colors.black12,
                        height: Dimensions.d15,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: Dimensions.d2),
                              child: Text(
                                "Results offering Prime benefits",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: Dimensions.d4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: Dimensions.d2),
                              child: Icon(Icons.info),
                            )
                          ],
                        ),
                      ),
                      //Doctor card
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          //scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: doctorDetail.length,
                          itemBuilder: (context, index) {
                            return DoctorDetailCard(
                              commonDoctorDetailCard: doctorDetail[index], address_and_fee_visibility: true, buttonText: 'book now', callback: () {  }, next_available_time_visibility:true,
                            );
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
