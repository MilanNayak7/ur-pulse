// import 'package:flutter/material.dart';
//
// import '../../../data_model/data_model.dart';
// import '../../common_card.dart';
//
// class custom_drawer2 extends StatefulWidget {
//   const custom_drawer2({Key? key}) : super(key: key);
//
//   @override
//   State<custom_drawer2> createState() => _custom_drawer2State();
// }
//
// class _custom_drawer2State extends State<custom_drawer2> {
//   late Future<List<DrawerMenuModel>> _drawerMenuList2;
//
//   Future<List<DrawerMenuModel>> _getContacts() async {
//     List<DrawerMenuModel> contacts = dummyData2;
//     return Future.value(contacts);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _drawerMenuList2 = _getContacts();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         child: FutureBuilder<List<DrawerMenuModel>>(
//           future: _drawerMenuList2,
//           builder: (ctx, snapshot) {
//             List<DrawerMenuModel>? contacts = snapshot.data;
//             switch (snapshot.connectionState) {
//               case ConnectionState.done:
//                 return _buildListView(contacts!);
//               default:
//                 return const CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );
//     // MenuCard()
//   }
// }
//
// Widget _buildListView(List<DrawerMenuModel> contacts) {
//   return ListView.builder(
//     padding: EdgeInsets.zero,
//     physics: NeverScrollableScrollPhysics(),
//     scrollDirection: Axis.vertical,
//     shrinkWrap: true,
//     itemBuilder: (ctx, idx) {
//       return Container(color:Colors.yellow,child: MenuCard(contacts[idx]));
//     },
//     itemCount: contacts.length,
//   );
// }
