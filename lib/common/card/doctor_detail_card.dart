


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class DoctorDetailCard extends StatelessWidget {

  DoctorDetailCard({
    Key? key,
    required this.commonDoctorDetailCard,
    required this.address_and_fee_visibility,
     required this.next_available_time_visibility,
    required this.callback,
    required this.buttonText
  })
      : super(key: key);
  CommonDoctorDetailCard commonDoctorDetailCard;

  bool address_and_fee_visibility;
  bool next_available_time_visibility;
  String buttonText;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed('/doctorDetail');
        Get.toNamed('/doctorDetail');
      },
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.d2),
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.d1,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.dh140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        width: Dimensions.dw120,
                        height: Dimensions.dh120,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                            borderRadius:
                            BorderRadius.circular(Dimensions.d15)),
                        child: Image.asset(
                          'assets/images/doctor1.png',
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              commonDoctorDetailCard.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.d5),
                            ),
                            Text(commonDoctorDetailCard.type,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                )),
                            Text(
                              '${commonDoctorDetailCard.experience}  years experience overall',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.message),
                                SizedBox(
                                  width: Dimensions.d1,
                                ),
                                Text("1 Patient Story",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.d4))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.check_circle)],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              Visibility(
                visible:address_and_fee_visibility,
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.d2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          commonDoctorDetailCard.medicalName,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.d4),
                        ),
                        SizedBox(
                          width: Dimensions.d1,
                        ),
                        Container(
                          height: Dimensions.d1,
                          width: Dimensions.d1,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                              BorderRadius.circular(Dimensions.d5)),
                        ),
                        SizedBox(
                          width: Dimensions.d1,
                        ),
                        Text(
                          commonDoctorDetailCard.medicalName,
                          style: TextStyle(fontSize: Dimensions.d3),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.d1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "~",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.d4),
                        ),
                        Text(
                          "Rs.",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.d4),
                        ),
                        SizedBox(
                          width: Dimensions.d1,
                        ),
                        Text(
                          commonDoctorDetailCard.fees,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.d4),
                        ),
                        SizedBox(
                          width: Dimensions.d1,
                        ),
                        Text(
                          "Consultation Fees",
                          style: TextStyle(fontSize: Dimensions.d4),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.d2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          visible: next_available_time_visibility,
                          child: Column(
                            children: [
                              Text(
                                "NEXT AVAILABLE AT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                    fontSize: Dimensions.d4),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.home),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text(commonDoctorDetailCard.availableTime,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: Dimensions.d4)),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text("AM,",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: Dimensions.d4)),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text("tomorrow",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: Dimensions.d4)),
                                ],
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed:callback,
                          child: Text(buttonText),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.d5,
                    ),
                    Divider(
                      thickness: Dimensions.d2,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}