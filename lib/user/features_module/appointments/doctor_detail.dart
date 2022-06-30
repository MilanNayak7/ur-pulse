import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';
import '../../../common/card/common_card.dart';
import '../../data_model/data_model.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        appBarTitle: 'Doctor Detail',
        addBackButton: true,
        actionWidgets: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                //scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return DoctorDetailCard(
                    commonDoctorDetailCard: doctorDetail[index],
                    visible: false,
                  );
                }),
            SizedBox(
              height: Dimensions.d6,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.d2, right: Dimensions.d2),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: Padding(
                        padding: EdgeInsets.all(Dimensions.d3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.video_call_outlined),
                                SizedBox(
                                  width: Dimensions.d2,
                                ),
                                Text(
                                  "Video Consultation",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.d4),
                                )
                              ],
                            ),
                            Text("Rs 500 Fees",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.d4)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Dimensions.d3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Apollo Hospital",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.d1,
                          ),
                          Text("Gajapati Nagar",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            height: Dimensions.d1,
                          ),
                          Text("60 mins or less wait time"),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: Dimensions.d13,
                      child: Scrollbar(
                        thumbVisibility: true,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: slotTimeData.length,
                            itemBuilder: (context, index) {
                              return TimeSlotHorizontalBar(
                                slotTimeModel: slotTimeData[index],
                              );
                            }),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: Dimensions.d4,
                    ),
                    Column(
                      children: [
                        const Visibility(
                          child:
                              Text("No in-clinic appointments slots available"),
                        ),
                        Visibility(
                          child: SizedBox(
                            height: Dimensions.d10,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: timedata.length,
                                itemBuilder: (context, index) {
                                  return TimeCard(                                    timeModel: timedata[index],
                                  );
                                }),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.d3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  "View all Slots",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: Dimensions.d4,
                                      color: Colors.blue),
                                )),
                            ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.phone),
                                    Text("Contact Clinic"),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.d8,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.d2, right: Dimensions.d2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Highly Recommended for",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: Dimensions.d6),
                  ),
                  SizedBox(
                    height: Dimensions.d4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Flexible(flex: 2, child: Icon(Icons.heart_broken)),
                      Flexible(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Doctor Friendliness",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimensions.d4),
                            ),
                            SizedBox(
                              height: Dimensions.d1,
                            ),
                            const Text(
                                "100% patients find the doctor friendly and approachable"),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Flexible(flex: 2, child: Icon(Icons.message_outlined)),
                      Flexible(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Detailed Treatment Explanation",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Dimensions.d4),
                            ),
                            SizedBox(
                              height: Dimensions.d1,
                            ),
                            const Text(
                                "100% patients recommend the doctor for in-depth explanation of their health issues"),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d5,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: Dimensions.d6,
                  ),
                  Text("Services by Dr. Akanksha s Bajpai",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Dimensions.d5)),
                  SizedBox(
                    height: Dimensions.d3,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: Dimensions.d3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimensions.d2,
                        width: Dimensions.d2,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(Dimensions.d5)),
                      ),
                      SizedBox(
                        width: Dimensions.d3,
                      ),
                      Text("Viral Fever Treatment",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.d4))
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimensions.d2,
                        width: Dimensions.d2,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(Dimensions.d5)),
                      ),
                      SizedBox(
                        width: Dimensions.d3,
                      ),
                      Text("Coronavirus Symptoms Treatment",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.d4))
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimensions.d2,
                        width: Dimensions.d2,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(Dimensions.d5)),
                      ),
                      SizedBox(
                        width: Dimensions.d3,
                      ),
                      Text("Diabetes Management",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.d4))
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimensions.d2,
                        width: Dimensions.d2,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(Dimensions.d5)),
                      ),
                      SizedBox(
                        width: Dimensions.d3,
                      ),
                      Text("Piles Treatment",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.d4))
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
