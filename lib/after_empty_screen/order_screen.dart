import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../ad_card/ad_card.dart';
import '../common/app_bar/app_bar_action_widget.dart';
import '../common/card/common_card.dart';
import '../data_model/data_model.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        addBackButton: true,
        appBarTitle: 'UrPulse Pharmacy',
        actionWidgets: appBarBaseActionWidgets,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: Dimensions.d2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blueGrey,
                height: Dimensions.d8,
                width: MediaQuery.of(context).size.width,
                child:
                    Center(child: Text("Place for display delivery location")),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: Dimensions.d3, right: Dimensions.d3),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.d4,
                    ),
                    CommonContainerButton(
                      callback: () {},
                      txt: 'Search Symptoms/ Specialities',
                      icon: Icons.search,
                    ),
                    SizedBox(
                      height: Dimensions.d8,
                    ),
                    OrderScreenAdvertisementCard(),
                    SizedBox(
                      height: Dimensions.d8,
                    ),
                    Text(
                      "Shop Health Products By Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: Dimensions.d6),
                    ),
                    SizedBox(
                      height: Dimensions.d5,
                    ),
                    Wrap(
                      children: List<Widget>.generate(
                          MedicineCategoryCardModelDummyData.length, (index) {
                        return InkWell(
                          onTap: () {
                            print(MedicineCategoryCardModelDummyData[index]
                                .mainText);
                            Get.toNamed('/medOrderList');
                            switch (MedicineCategoryCardModelDummyData[index]
                                .mainText) {
                              case 'Skin and hair':
                                {
                                  ModalBottomSheet.moreModalBottomSheet(context,
                                      heading: 'Skin & Hair',
                                      listOfData: skinAndHair);
                                }
                                break;
                              case "Women's health":
                                {
                                  ModalBottomSheet.moreModalBottomSheet(context,
                                      heading: "Women's health concerns",
                                      listOfData: womensHealthConcerns);
                                }
                                break;
                              case "Chronic problems":
                                {
                                  ModalBottomSheet.moreModalBottomSheet(context,
                                      heading: 'Chronic problems',
                                      listOfData: chronicProblems);
                                }
                                break;
                              case "Bone and joint":
                                {
                                  ModalBottomSheet.moreModalBottomSheet(context,
                                      heading: 'Bone and joint issues',
                                      listOfData: boneAndJoint);
                                }
                                break;
                            }
                          },
                          child: CommonCard(
                            bottomLeftRadius: Dimensions.d2,
                            bottomRightRadius: Dimensions.d2,
                            width: Dimensions.d30,
                            height: Dimensions.d40,
                            commonCardModel:
                                MedicineCategoryCardModelDummyData[index],
                            defaultSubTextSize: Dimensions.d3,
                            defaultTextHeaderSize: Dimensions.d4,
                            imageBackground: null,
                            borderColor: Colors.white,

                            //callback: ,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.d6,
              ),
              const OrderScreenAdvertisement2(),
              SizedBox(
                height: Dimensions.d6,
              ),
              PractoShowOffCard(
                showOffCardModel: showoffcarddata2,
                text:
                    'UrPulse aims to safeguard your health and ensures all products are genuine and have passed mandatory safety checks for delivery',
              )
            ],
          ),
        ),
      ),
    );
  }
}
