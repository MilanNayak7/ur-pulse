import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_theme.dart';

import '../common/common_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/menu.png',
            width: 20,
            height: 20,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(3)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    const Text(
                      "Explore",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('PLUS'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/purse.png',
              width: 25,
              height: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              color: Colors.cyan,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.d6,
                  right: Dimensions.d6,
                  top: Dimensions.d6),
              child: Column(
                children: [
                  Container(
                    height: Dimensions.d35,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(9),
                      gradient: const LinearGradient(colors: [
                        Colors.blue,
                        Colors.indigo,
                      ], begin: Alignment.bottomLeft),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/ur_pulse.png',
                              width: 140,
                              height: 40,
                            ),
                            const Text(
                              'You are in safe hands',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                                'Choose the experts in \nend to end surgical care',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white60)),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 4, bottom: 4),
                                child: Text(
                                  'Know More',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 120,
                            width: 100,
                            child: Image.asset(
                              'assets/images/doctor1.png',
                              fit: BoxFit.fitHeight,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.d6,
                  ),
                  // CardCommonComp()
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 24.0,
                    runSpacing: 24.0,
                    children: [
                      CommonCard(
                        img: 'assets/images/doctor1.png',
                        subText: 'Connect within 60 sec',
                        mainText: 'Instant Video Consultation',
                        containerColor: Colors.blue,
                        width: 160,
                        height: 190,
                        defaultTextHeader: Dimensions.d4,
                        defaultSubText: Dimensions.d3,
                      ),
                      CommonCard(
                        img: 'assets/images/doctor1.png',
                        subText: 'Connect within 60 sec',
                        mainText: 'Instant Video Consultation',
                        containerColor: Colors.blue,
                        width: 160,
                        height: 190,
                        defaultSubText: Dimensions.d3,
                        defaultTextHeader: Dimensions.d4,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: Dimensions.d6,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: [
                      CommonCard(
                        img: 'assets/images/doctor1.png',
                        mainText: 'Medicines',
                        containerColor: Colors.blue,
                        width: 100,
                        height: 120,
                        defaultSubText: Dimensions.d3,
                        defaultTextHeader: Dimensions.d4,
                      ),
                      CommonCard(
                        img: 'assets/images/doctor1.png',
                        //subText: 'test',
                        mainText: 'Lab Tests',
                        containerColor: Colors.blue,
                        width: 100,
                        height: 120,
                        defaultSubText: Dimensions.d3,
                        defaultTextHeader: Dimensions.d4,
                      ),
                      CommonCard(
                        img: 'assets/images/doctor1.png',
                        mainText: 'Surgeries',
                        containerColor: Colors.blue,
                        width: 100,
                        height: 120,
                        defaultSubText: Dimensions.d3,
                        defaultTextHeader: Dimensions.d4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Dimensions.d6,
            ),
            Container(
              height: 250,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: Dimensions.d6,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.d6, right: Dimensions.d6),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: Dimensions.d1),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Not Feeling too well?",
                        style: TextStyle(
                            fontSize: Dimensions.d6,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Treat common symptoms instantly via video consultation",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.d6,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 34.0,
                    runSpacing: 34.0,
                    children: [
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Fever',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Toothache',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Pregnancy \nIssues',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Pimples &\n Acne',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Cough In\n Children',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Flu',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Ear Pain',
                      ),
                      SymptomsWidgets(
                        img: '',
                        symptoms: 'Breathing \nProblems',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimensions.d8,
                  ),
                  CommonContainerButton(txt: 'View All Symptoms',),
                  const SizedBox(
                    height: Dimensions.d8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blueGrey, width: 1.5),),
                    child: Column(
                      children: [
                        Container(
                          height: Dimensions.d30,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            gradient: LinearGradient(
                                colors: [Colors.blueGrey, Colors.pinkAccent],
                                begin: Alignment.bottomCenter),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Text(
                                    'Term Life \nInsurance',
                                    style: TextStyle(fontSize: Dimensions.d5),
                                  ),
                                ),
                              ),
                              Container(
                                child: Image.asset(''),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: Dimensions.d1,
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(Dimensions.d1),
                                  child: Icon(Icons.add_alert_rounded),
                                ),
                                Text('Protect your loved ones in 3 easy steps'),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(Dimensions.d1),
                                  child: Icon(Icons.add_alert_rounded),
                                ),
                                Text('Protect your loved ones in 3 easy steps'),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(Dimensions.d1),
                                  child: Icon(Icons.add_alert_rounded),
                                ),
                                Text('Protect your loved ones in 3 easy steps'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Rs. 120/annum",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: Dimensions.d4),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "View Plan",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height:Dimensions.d20,),
                  const Padding(
                    padding: EdgeInsets.all(Dimensions.d1),
                    child: Align(alignment:Alignment.bottomLeft,child: Text("Top hospitals that are open and safe",style:TextStyle(fontWeight:FontWeight.bold,fontSize:Dimensions.d5),)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(Dimensions.d1),
                    child: Align(alignment:Alignment.bottomLeft,child: Text("Maximum safety followed for you and your family")),
                  ),
                  SizedBox(height:Dimensions.d2,),
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 8,
                    runSpacing:8,
                    children: const [
                      MedicalCardWidget(),
                      MedicalCardWidget(),
                      MedicalCardWidget(),
                      MedicalCardWidget(),
                    ],
                  ),
                  const SizedBox(height:Dimensions.d4,),
                  CommonContainerButton(txt:'See All Hospitals',),
                  const SizedBox(height:Dimensions.d8,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
