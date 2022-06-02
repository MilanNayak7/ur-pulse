import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/main_drawer/drawer_body.dart';

import 'app_theme.dart';

class CommonAppBar extends StatefulWidget with PreferredSizeWidget {
  const CommonAppBar({Key? key}) : super(key: key);
  @override
  State<CommonAppBar> createState() => _CommonAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Image.asset("assets/images/menu.png",
            width: Dimensions.d6, height: Dimensions.d6),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DrawerBody()),
          );
        },
      ),
      title: Text("Appbar"),
      elevation: 0,
      backgroundColor: Colors.greenAccent,
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
}
