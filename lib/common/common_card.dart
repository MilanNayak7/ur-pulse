import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_theme.dart';

import '../data_model/data_model.dart';

class CommonCard extends StatelessWidget {
  CommonCard(
      {Key? key,
      required this.containerColor,
      required this.commonCardModel,
      required this.height,
      required this.width,
      required this.defaultSubTextSize,
      required this.defaultTextHeaderSize})
      : super(key: key);

  Color containerColor;
  double height;
  double width;
  double defaultTextHeaderSize = Dimensions.d4;
  double defaultSubTextSize = Dimensions.d3;
  CommonCardModel commonCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: Container(
               height: height,
               width: width,
              decoration:  BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.d2),
                      topRight: Radius.circular(Dimensions.d2))),
               child:Image.asset(commonCardModel.img),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(Dimensions.d2),
                      bottomRight: Radius.circular(Dimensions.d2))),
               height:height,
               width: width,
              child: Padding(
                padding:  EdgeInsets.all(Dimensions.d2),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      commonCardModel.mainText,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          fontSize: defaultTextHeaderSize,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      commonCardModel.subText??'',
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
    );
  }
}

class SymptomsWidgets extends StatelessWidget {
  SymptomsWidgets({Key? key, required this.img, required this.symptoms})
      : super(key: key);
  String img;
  String symptoms;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Dimensions.d15,
          height: Dimensions.d15,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(Dimensions.d12),
          ),
          child: Image.asset(img),
        ),
         SizedBox(
          height: Dimensions.d3,
        ),
        Container(
          child: Text(
            symptoms,
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.visible,
            style:  TextStyle(
              fontSize: Dimensions.d3,
            ),
          ),
        )
      ],
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
        padding:  EdgeInsets.all(Dimensions.d2),
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
                  padding:  EdgeInsets.all(Dimensions.d2),
                  child: Column(
                    children:  [
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
  CommonContainerButton({Key? key, required this.txt}) : super(key: key);
  String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.d11,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.d2),
          border: Border.all(
            color: Colors.black45,
            width: 1.5,
          )),
      child: Center(child: Text(txt)),
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
      decoration:  BoxDecoration(
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
        children:  [
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

// Widget CardCommonComp() {
//   return SizedBox(
//     // height:Dimensions.d40,
//     width: 150,
//     child: Column(
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 topRight: Radius.circular(10),
//               )),
//           height: 110,
//           child: Image.asset(
//             'assets/images/mobile.png',
//             fit: BoxFit.fitHeight,
//           ),
//         ),
//         Container(
//           decoration: const BoxDecoration(
//               color: Colors.amberAccent,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               )),
//           // height:90,
//           child: Padding(
//             padding: const EdgeInsets.all(Dimensions.d2),
//             child: Column(
//               children: const [
//                 Text(
//                   "Instant Video Consultation",
//                   overflow: TextOverflow.visible,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "Connect within 60 sec",
//                   overflow: TextOverflow.visible,
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }
