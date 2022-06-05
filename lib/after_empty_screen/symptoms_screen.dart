import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../common/card/common_card.dart';
import '../data_model/data_model.dart';

class SymptomsScreen extends StatelessWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: 'Find Your Health Concern',
        addBackButton: true,
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: Dimensions.d6, left: Dimensions.d6, right: Dimensions.d6),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions.d8,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(Dimensions.d2),
                    color: Colors.white),
                height: Dimensions.d12,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Dimensions.d4,
                    ),
                    const Icon(Icons.search),
                    SizedBox(
                      width: Dimensions.d4,
                    ),
                    const Text("Search Symptoms/Specialities")
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.d8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Most Searched Specialities",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                ),
              ),
              SizedBox(
                height: Dimensions.d4,
              ),
              Wrap(
                spacing: Dimensions.d8,
                runSpacing: Dimensions.d4,
                children: List<Widget>.generate(8, (index) {
                  return SymptomsWidgets(commonSymptoms[index]);
                }),
              ),
              SizedBox(
                height: Dimensions.d8,
              ),
              CommonContainerButton(
                callback: () {
                  ModalBottomSheet.moreModalBottomSheet(context);
                },
                txt: 'View All Specialities',
              ),
              SizedBox(
                height: Dimensions.d8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Conditions that can be treated through surgeries",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                ),
              ),
              SizedBox(
                height: Dimensions.d2,
              ),
              const Text(
                  "Find top surgeons near you for your surgical procedure"),
              SizedBox(
                height: Dimensions.d4,
              ),
              Wrap(
                spacing: Dimensions.d8,
                runSpacing: Dimensions.d4,
                children: List<Widget>.generate(8, (index) {
                  return SymptomsWidgets(surgeriesSymptoms[index]);
                }),
              ),
              SizedBox(
                height: Dimensions.d8,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Most common symptoms",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                  )),
              SizedBox(
                height: Dimensions.d4,
              ),
              Wrap(
                spacing: Dimensions.d8,
                runSpacing: Dimensions.d4,
                children: List<Widget>.generate(8, (index) {
                  return SymptomsWidgets(mostCommonSymptoms[index]);
                }),
              ),
              SizedBox(
                height: Dimensions.d8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
                ),
              ),
              SizedBox(height:20),
              Wrap(
                spacing: Dimensions.d6,
                runSpacing: Dimensions.d6,
                children: List<Widget>.generate(
                    CommonCardModelDummyData.length, (index) {
                  return CommonCard(
                    bottomLeftRadius:Dimensions.d2,
                    bottomRightRadius: Dimensions.d2,
                    height: Dimensions.commomcardheight,
                    commonCardModel: symptomCommonCardModelDummyData[index],
                    defaultSubTextSize: Dimensions.d3,
                    defaultTextHeaderSize: Dimensions.d4,
                    width: Dimensions.commomcardwidth,
                    //callback: ,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
