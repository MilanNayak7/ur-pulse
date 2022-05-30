import 'package:flutter/material.dart';

import '../../data_model/data_model.dart';
import '../common_card.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late Future<List<DrawerMenuModel>> _contacts;

  Future<List<DrawerMenuModel>> _getContacts() async {
    List<DrawerMenuModel> contacts = dummyData;
    // await Future.delayed(Duration(seconds:3));
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

Widget _buildListView(List<DrawerMenuModel> contacts) {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemBuilder: (ctx, idx) {
      return MenuCard(contacts[idx]);
    },
    itemCount: contacts.length,
  );
}
