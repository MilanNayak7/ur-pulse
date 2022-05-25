import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_theme.dart';

class CommonCard extends StatelessWidget {
  CommonCard(
      {Key? key,
      required this.img,
      required this.mainText,
      this.subText,
      required this.containerColor,
      required this.height,
      required this.width,
      required this.defaultSubText,
      required this.defaultTextHeader})
      : super(key: key);
  String img;
  String mainText;
  String? subText;
  Color containerColor;
  double height;
  double width;
  double defaultTextHeader = Dimensions.d4;
  double defaultSubText = Dimensions.d3;
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
              height: 190,
              width: 160,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9))),
              // child:Image.asset(img,width:140,),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(9),
                      bottomRight: Radius.circular(9))),
              height: 190,
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      mainText,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          fontSize: defaultTextHeader,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subText ?? '',
                      overflow: TextOverflow.visible,
                      style: TextStyle(fontSize: defaultSubText),
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
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(img),
        ),
        const SizedBox(
          height: Dimensions.d3,
        ),
        Container(
          child: Text(
            symptoms,
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.visible,
            style: const TextStyle(
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
      width: 350,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightGreen,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
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
      child:Center(child: Text(txt)),
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
