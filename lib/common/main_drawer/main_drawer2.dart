import 'package:flutter/material.dart';

import '../../data_model/data_model.dart';
import '../card/common_card.dart';


class CustomDrawer2 extends StatefulWidget {
  const CustomDrawer2({Key? key, required this.dummydata}) : super(key: key);
  final List<DrawerMenuModel> dummydata;


  @override
  State<CustomDrawer2> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer2> {
  late Future<List<DrawerMenuModel>> _contacts;

  Future<List<DrawerMenuModel>> _getContacts() async {
    List<DrawerMenuModel> contacts =widget.dummydata;
    return Future.value(contacts);
  }

  @override
  void initState() {
    super.initState();
    _contacts = _getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder<List<DrawerMenuModel>>(
          future: _contacts,
          builder: (ctx, snapshot) {
            List<DrawerMenuModel>? contacts = snapshot.data;
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return _buildListView(contacts!);
              default:
                return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
    // MenuCard()
  }
}

Widget _buildListView(List<DrawerMenuModel> drawerTitle) {
  return ListView.builder(
    padding: EdgeInsets.zero,
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (ctx, idx) {
      return SymptomsWidgets(drawerTitle[idx]);
    },
    itemCount: drawerTitle.length,
  );
}
