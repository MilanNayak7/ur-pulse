// import 'package:flutter/material.dart';
// import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
// import 'package:ur_pulse_modified/common/theme/app_theme.dart';
//
// import '../common/card/common_card.dart';
// import '../common/carousel/carousel.dart';
//
// class ConsultADoctor extends StatelessWidget {
//   const ConsultADoctor({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CommonAppBar(
//         context: context,
//         addBackButton: true,
//         appBarTitle: 'Consult a Doctor',
//         actionWidgets: const [],
//       ),
//       body: Container(
//         child: Padding(
//           padding: EdgeInsets.only(
//               left: Dimensions.d5, right: Dimensions.d5, top: Dimensions.d5),
//           child: Column(
//             children: [
//               Container(color: Colors.yellow, child: ImageCarousel()),
//               SizedBox(
//                 height: Dimensions.d8,
//               ),
//               Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     "Search Health Problem / Symptoms",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w800, fontSize: Dimensions.d5),
//                   )),
//               CommonContainerButton(
//                 callback: () {},
//                 txt: 'Search Symptoms/ Specialities',
//                 icon: Icons.search,
//               ),
//               SizedBox(
//                 height: Dimensions.d5,
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
