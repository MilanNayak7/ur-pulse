import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../../data_model/data_model.dart';
import '../main_drawer/main_drawer.dart';

class CommonCard extends StatelessWidget {
  CommonCard(
      {Key? key,
      this.containerColor,
      required this.commonCardModel,
      required this.height,
      required this.width,
      this.callback,
      required this.bottomLeftRadius,
      required this.bottomRightRadius,
      required this.defaultSubTextSize,
      required this.defaultTextHeaderSize})
      : super(key: key);

  Color? containerColor;
  double height;
  double width;
  double defaultTextHeaderSize = Dimensions.d4;
  double defaultSubTextSize = Dimensions.d3;
  CommonCardModel commonCardModel;
  double bottomLeftRadius = 1.0;
  double bottomRightRadius = 1.0;
  Callback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.d2),
                        bottomLeft: Radius.circular(bottomLeftRadius),
                        bottomRight: Radius.circular(bottomRightRadius),
                        topRight: Radius.circular(Dimensions.d2))),
                child: Image.asset(commonCardModel.img),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Dimensions.d2),
                        bottomRight: Radius.circular(Dimensions.d2))),
                height: height,
                width: width,
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.d2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        commonCardModel.mainText,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                            fontSize: defaultTextHeaderSize,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        commonCardModel.subText ?? '',
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: defaultSubTextSize),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicalCardWidget extends StatelessWidget {
  const MedicalCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Dimensions.d25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.d3),
        color: Colors.lightGreen,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.d2),
        child: Row(
          children: [
            Flexible(
                flex: 3,
                child: Container(
                  child: Image.asset(''),
                )),
            Flexible(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.d2),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Practo Care Surgeries",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.d5),
                          )),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Multispeciality Hospital",
                            style: TextStyle(fontSize: Dimensions.d4),
                          )),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Nayapalli")),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class CommonContainerButton extends StatelessWidget {
  CommonContainerButton(
      {Key? key, this.icon, required this.txt, required this.callback})
      : super(key: key);
  Callback? callback;
  String txt;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: Dimensions.d11,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.d2),
          border: Border.all(
            color: Colors.black45,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(fit: FlexFit.loose, child: Icon(icon)),
            Center(
              child: Flexible(fit: FlexFit.loose, child: Text(txt)),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.img, required this.productType})
      : super(key: key);
  String img;
  String productType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.d3),
              topRight: Radius.circular(Dimensions.d3))),
      width: Dimensions.d35,
      height: Dimensions.d35,
      child: Column(
        children: [
          Flexible(
            flex: 5,
            child: Container(
              width: Dimensions.d35,
              height: Dimensions.d35,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(Dimensions.d3)),
              child: Image.asset(img),
            ),
          ),
          SizedBox(
            height: Dimensions.d2,
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: Dimensions.d35,
              height: Dimensions.d40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.d3)),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  productType,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: Dimensions.d4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PractoDataWidget extends StatelessWidget {
  const PractoDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.person),
          Text(
            "Our Users",
            style:
                TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.d4),
          ),
          Text(
            "30 Crores",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: Dimensions.d7),
          )
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final DrawerMenuModel menuModel;

  MenuCard(this.menuModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (menuModel.Header) {
          case "Appointments":
            {
              Get.toNamed('appointment');
            }
            break;
          case "Test Bookings":
            {
              Get.toNamed('testBooking');
            }
            break;
          case "Orders":
            {
              Get.toNamed('orders');
            }
            break;
          case "Consultations":
            {
              Get.toNamed('consultations');
            }
            break;
          case "My Doctors":
            {
              Get.toNamed('myDoctors');
            }
            break;
          case "Medical Records":
            {
              Get.toNamed('medicalRecords');
            }
            break;
          case "My Insurance Policy":
            {
              Get.toNamed('myInsurance');
            }
            break;
          case "Reminders":
            {
              Get.toNamed('reminders');
            }
            break;
          case "Payments & HealthCash":
            {
              Get.toNamed('payments');
            }
            break;
          case "Read about health":
            {
              Get.toNamed('readAboutHealth');
            }
            break;
          case "Help Center":
            {
              Get.toNamed('helpCenter');
            }
            break;
          case "Settings":
            {
              Get.toNamed('setting');
            }
            break;
          case "Like us? Give us 5 stars":
            {
              Get.toNamed('likeUs');
            }
            break;
          case "Are you a doctor ?":
            {
              Get.toNamed('areYouADoctor');
            }
            break;
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.d3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Dimensions.d1),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.d4,
                    right: Dimensions.d4,
                    bottom: Dimensions.d4),
                child: Image.asset(
                  menuModel.imageUrl,
                  width: Dimensions.d7,
                  height: Dimensions.d7,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${menuModel.Header}'),
                  SizedBox(height: 2),
                ],
              ),
            ),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}

class SymptomsWidgets extends StatelessWidget {
  SymptomsWidgets(this.symptomsModel);
  final DrawerMenuModel symptomsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/doctorList');
      },
      child: Column(
        children: [
          Container(
            width: Dimensions.d12,
            height: Dimensions.d12,
            decoration: BoxDecoration(
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(Dimensions.d6),
            ),
            child: Image.asset(
              symptomsModel.imageUrl,
              width: Dimensions.d2,
              height: Dimensions.d2,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: Dimensions.d3,
          ),
          Container(
            width: Dimensions.d12,
            child: Text(
              symptomsModel.Header,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: Dimensions.d3,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ModalBottomSheet {
  static void moreModalBottomSheet(
    BuildContext context, {
    required String heading,
    required List<DrawerMenuModel> listOfData,
  }) {
   // Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.d10),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: Dimensions.dh650,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.d5),
                topLeft: Radius.circular(Dimensions.d5),
              ),
            ),
            child: Padding(
                padding:  EdgeInsets.fromLTRB(Dimensions.d5, Dimensions.d5, Dimensions.d5, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimensions.d8,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.close),
                      ),
                      SizedBox(
                        height: Dimensions.d2,
                      ),
                      Text(
                        heading,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: Dimensions.d6),
                      ),
                      CustomDrawer(
                        dummydata: listOfData,
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}

class ConsultationTypeWidget extends StatelessWidget {
  ConsultationTypeWidget({Key? key, required this.consultationType})
      : super(key: key);
  ConsultationType consultationType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(Dimensions.d5)),
        child: Padding(
          padding: EdgeInsets.all(Dimensions.d3),
          child: Text(
            consultationType.type,
            style: TextStyle(fontSize: Dimensions.d4),
          ),
        ),
      ),
    );
  }
}

class DoctorDetailCard extends StatelessWidget {
  DoctorDetailCard(
      {Key? key, required this.commonDoctorDetailCard, required this.visible})
      : super(key: key);
  CommonDoctorDetailCard commonDoctorDetailCard;
  bool visible;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
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
              Divider(
                height: 1,
                thickness: 1,
              ),
              Visibility(
                visible: visible,
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
                              borderRadius: BorderRadius.circular(Dimensions.d5)),
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
                        Column(
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
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Book Appointment"),
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

class TimeSlotHorizontalBar extends StatelessWidget {
  TimeSlotHorizontalBar({Key? key, required this.slotTimeModel})
      : super(key: key);
  SlotTimeModel slotTimeModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.d3),
      child: Container(
        // width:110,
        // color:Colors.black26,
        child: Row(
          children: [
            Text(
              slotTimeModel.day,
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: Dimensions.d4),
            ),
            SizedBox(
              width: Dimensions.d1,
            ),
            Text(slotTimeModel.month,
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: Dimensions.d4)),
            SizedBox(
              width: Dimensions.d1,
            ),
            Text(
              '${slotTimeModel.slotNo} Slot',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeCard extends StatelessWidget {
  TimeCard({Key? key, required this.timeModel}) : super(key: key);
  TimeModel timeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:Dimensions.d3),
      child: InkWell(
        onTap: (){Get.toNamed('/appointmentConform');},
        child: Container(
          decoration:BoxDecoration(color: Colors.blue,borderRadius:BorderRadius.circular(Dimensions.d1)),
          child: Center(
              child: Padding(
                padding: EdgeInsets.only(left:Dimensions.d2,right:Dimensions.d2),
                child: Text(
            "${timeModel.time} ${timeModel.hour}",
            style:
                  const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
              )),
        ),
      ),
    );
  }
}
