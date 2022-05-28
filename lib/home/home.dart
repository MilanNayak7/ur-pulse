import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_theme.dart';

import '../common/carousel/carousel.dart';
import '../common/common_card.dart';
import '../data_model/data_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Dimensions.d10,
              color: Colors.cyan,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.d6,
                  right: Dimensions.d6,
                  top: Dimensions.d9),
              child: Column(
                children: [
                  posterOneContainer(),
                  SizedBox(
                    height: Dimensions.d9,
                  ),
                  // CardCommonComp()
                  Wrap(
                    spacing: Dimensions.d6,
                    runSpacing: Dimensions.d6,
                    children: List<Widget>.generate(
                        CommonCardModelDummyData.length, (index) {
                      return CommonCard(
                        containerColor: Colors.blue,
                        height: Dimensions.commomcardheight,
                        commonCardModel: CommonCardModelDummyData[index],
                        defaultSubTextSize: Dimensions.d3,
                        defaultTextHeaderSize: Dimensions.d4,
                        width: Dimensions.commomcardwidth,
                      );
                    }),
                  ),
                  SizedBox(
                    height: Dimensions.d6,
                  ),
                  Wrap(
                    spacing: Dimensions.d5,
                    runSpacing: Dimensions.d5,
                    children: List<Widget>.generate(
                        CommonServiceModelDummyData.length,
                        (index) => CommonCard(
                            containerColor: Colors.blue,
                            commonCardModel: CommonServiceModelDummyData[index],
                            height: Dimensions.d30,
                            width: Dimensions.d25,
                            defaultSubTextSize: Dimensions.d3,
                            defaultTextHeaderSize: Dimensions.d4)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.d9,
            ),
            Container(
              height: Dimensions.d75,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.d8, top: Dimensions.d4),
                    child: Text(
                      "In the spotlight",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: Dimensions.d5),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.d8,
                        bottom: Dimensions.d3,
                        top: Dimensions.d1),
                    child: Text(
                        "Explore deals, offers, health updates and more",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: Dimensions.d4)),
                  ),
                  ImageCarousel(),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.d9,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.d6, right: Dimensions.d6),
              child: Column(
                children: [
                  TermLifeInsurancePoster(context),
                  SizedBox(
                    height: Dimensions.d11,
                  ),
                  Padding(
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
                  SizedBox(
                    height: Dimensions.d4,
                  ),
                  Wrap(
                    //direction: Axis.horizontal,
                    spacing: Dimensions.d8,
                    runSpacing: Dimensions.d5,
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
                  SizedBox(
                    height: Dimensions.d6,
                  ),
                  CommonContainerButton(
                    txt: 'View All Symptoms',
                  ),
                  SizedBox(
                    height: Dimensions.d10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(Dimensions.d1),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Top hospitals that are open and safe",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.d5),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(Dimensions.d1),
                    child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            "Maximum safety followed for you and your family")),
                  ),
                  SizedBox(
                    height: Dimensions.d5,
                  ),
                  Wrap(
                    spacing: Dimensions.d2,
                    runSpacing: Dimensions.d4,
                    children: const [
                      MedicalCardWidget(),
                      MedicalCardWidget(),
                      MedicalCardWidget(),
                      MedicalCardWidget(),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d8,
                  ),
                  CommonContainerButton(
                    txt: 'See All Hospitals',
                  ),
                  SizedBox(
                    height: Dimensions.d20,
                  ),
                  Text(
                    "Order medicines, health and wellness products",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d4,
                  ),
                  Wrap(
                    spacing: Dimensions.d6,
                    children: [
                      ProductCard(
                        img: '',
                        productType: 'Ayurveda',
                      ),
                      ProductCard(
                        img: '',
                        productType: 'Oral Health',
                      ),
                      ProductCard(
                        img: '',
                        productType: 'Summer Care',
                      ),
                      ProductCard(
                        img: '',
                        productType: 'Surgical and Consumables',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.d8,
                  ),
                  CommonContainerButton(txt: 'View More Products'),
                  SizedBox(
                    height: Dimensions.d8,
                  ),
                  Text(
                    "Preventive Full Body Health Checkups",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: Dimensions.d5),
                  ),
                  SizedBox(
                    height: Dimensions.d2,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.pinkAccent,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    EdgeInsets.only(left: Dimensions.d8, right: Dimensions.d8),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: Dimensions.d8, bottom: Dimensions.d8),
                      child: Text(
                        "Our community of doctors and patients drive us to create technologies for better and affordable healthcare",
                        style: TextStyle(fontSize: Dimensions.d6),
                      ),
                    ),
                    Container(
                      //color:Colors.blue,
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        spacing: Dimensions.d11,
                        runSpacing: Dimensions.d8,
                        children: [
                          PractoDataWidget(),
                          PractoDataWidget(),
                          PractoDataWidget(),
                          PractoDataWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.d8,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: Dimensions.d95,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo,
              child: Padding(
                padding: EdgeInsets.all(Dimensions.d6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/ur_pulse.png',
                      width: Dimensions.d40,
                    ),
                    Text(
                      "Our vision is to help mankind live healthier,longer lives by making quality healthcare accessible, affordable and convenient.",
                      style: TextStyle(
                          color: Colors.white70, fontSize: Dimensions.d6),
                    ),
                    SizedBox(
                      height: Dimensions.d4,
                    ),
                    Text(
                      "Made by Milan @ Odisha University of Technology and research ",
                      style: TextStyle(
                          color: Colors.white60, fontSize: Dimensions.d4),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container posterOneContainer() {
    return Container(
      height: Dimensions.d35,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(Dimensions.d2),
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
                width: Dimensions.d35,
                height: Dimensions.d10,
              ),
              Text(
                'You are in safe hands',
                style: TextStyle(
                    fontSize: Dimensions.d4,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text('Choose the experts in \nend to end surgical care',
                  style: TextStyle(
                      fontSize: Dimensions.d4, color: Colors.white60)),
              SizedBox(
                height: Dimensions.d3,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(Dimensions.d1)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.d4,
                      right: Dimensions.d4,
                      top: Dimensions.d1,
                      bottom: Dimensions.d1),
                  child: Text(
                    'Know More',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
              height: Dimensions.d30,
              width: Dimensions.d25,
              child: Image.asset(
                'assets/images/doctor1.png',
                fit: BoxFit.fitHeight,
              )),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Image.asset(
          'assets/images/menu.png',
          width: Dimensions.d5,
          height: Dimensions.d5,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: Dimensions.d3, bottom: Dimensions.d3),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(Dimensions.d1)),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.d1),
              child: Row(
                children: [
                  const Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: Dimensions.d1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(Dimensions.d1)),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.d1),
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
            width: Dimensions.d6,
            height: Dimensions.d6,
          ),
        )
      ],
    );
  }

  Container TermLifeInsurancePoster(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.d3),
        border: Border.all(color: Colors.blueGrey, width: 1.5),
      ),
      child: Column(
        children: [
          Container(
            height: Dimensions.d30,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.d3),
                  topRight: Radius.circular(Dimensions.d3)),
              gradient: LinearGradient(
                  colors: [Colors.blueGrey, Colors.pinkAccent],
                  begin: Alignment.bottomCenter),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(Dimensions.d2),
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
                children: [
                  Padding(
                    padding: EdgeInsets.all(Dimensions.d1),
                    child: Icon(Icons.add_alert_rounded),
                  ),
                  Text('Protect your loved ones in 3 easy steps'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(Dimensions.d1),
                    child: Icon(Icons.add_alert_rounded),
                  ),
                  Text('Protect your loved ones in 3 easy steps'),
                ],
              ),
              Row(
                children: [
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
                  Text(
                    "Rs. 120/annum",
                    style:
                        TextStyle(color: Colors.red, fontSize: Dimensions.d4),
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
    );
  }
}
