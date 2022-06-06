import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../common/card/common_card.dart';
import '../data_model/data_model.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        context: context,
        addBackButton: true,
        appBarTitle: 'Find your Health Concern',
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom:Dimensions.d4),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.d8, right: Dimensions.d8, top: Dimensions.d8),
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
                        color:Colors.black12,
                        height: Dimensions.d15,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left:Dimensions.d2),
                              child: Text("Results offering Prime benefits",style:TextStyle(fontWeight:FontWeight.w600,fontSize:Dimensions.d4),),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right:Dimensions.d2),
                              child: Icon(Icons.info),
                            )
                          ],
                        ),
                      ),

                      //Doctor card

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Dimensions.d1,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.d15)),
                                        child: Image.asset(
                                          'assets/images/doctor1.png',
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dr. Manoj Kishor Chhotray",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Dimensions.d5),
                                            ),
                                            Text("General Physican",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("51 years experience overall",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
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
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gajapati Nagar",
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
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text(
                                    "Apollo Hospitals",
                                    style: TextStyle(fontSize: Dimensions.d4),
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
                                    "1000",
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.home),
                                          SizedBox(
                                            width: Dimensions.d1,
                                          ),
                                          Text("10:00",
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
                                      child: Text("Book Appointment"))
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.d5,
                              ),
                              Divider(
                                thickness: 8,
                                height: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Dimensions.d1,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.d15)),
                                        child: Image.asset(
                                          'assets/images/doctor1.png',
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dr. Manoj Kishor Chhotray",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Dimensions.d5),
                                            ),
                                            Text("General Physican",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("51 years experience overall",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
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
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gajapati Nagar",
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
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text(
                                    "Apollo Hospitals",
                                    style: TextStyle(fontSize: Dimensions.d4),
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
                                    "1000",
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.home),
                                          SizedBox(
                                            width: Dimensions.d1,
                                          ),
                                          Text("10:00",
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
                                      child: Text("Book Appointment"))
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.d5,
                              ),
                              Divider(
                                thickness: 8,
                                height: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Dimensions.d1,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.d15)),
                                        child: Image.asset(
                                          'assets/images/doctor1.png',
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dr. Manoj Kishor Chhotray",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Dimensions.d5),
                                            ),
                                            Text("General Physican",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("51 years experience overall",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
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
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gajapati Nagar",
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
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text(
                                    "Apollo Hospitals",
                                    style: TextStyle(fontSize: Dimensions.d4),
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
                                    "1000",
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.home),
                                          SizedBox(
                                            width: Dimensions.d1,
                                          ),
                                          Text("10:00",
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
                                      child: Text("Book Appointment"))
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.d5,
                              ),
                              Divider(
                                thickness: 8,
                                height: 1,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Dimensions.d1,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 140,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.d15)),
                                        child: Image.asset(
                                          'assets/images/doctor1.png',
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dr. Manoj Kishor Chhotray",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Dimensions.d5),
                                            ),
                                            Text("General Physican",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("51 years experience overall",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                )),
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
                              SizedBox(
                                height: Dimensions.d2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gajapati Nagar",
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
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    width: Dimensions.d1,
                                  ),
                                  Text(
                                    "Apollo Hospitals",
                                    style: TextStyle(fontSize: Dimensions.d4),
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
                                    "1000",
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.home),
                                          SizedBox(
                                            width: Dimensions.d1,
                                          ),
                                          Text("10:00",
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
                                      child: Text("Book Appointment"))
                                ],
                              ),
                              SizedBox(
                                height: Dimensions.d5,
                              ),
                              Divider(
                                thickness: 8,
                                height: 1,
                              )
                            ],
                          ),
                        ),
                      ),
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
