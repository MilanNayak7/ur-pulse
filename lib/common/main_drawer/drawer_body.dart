import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_theme.dart';

import 'main_drawer.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  State<DrawerBody> createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:0),
      child: Container(
        width: Dimensions.d290,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(Dimensions.d3),
            topRight: Radius.circular(Dimensions.d3),
            bottomLeft: Radius.circular(Dimensions.d3),
            topLeft: Radius.circular(Dimensions.d3),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    // bottomRight: Radius.circular(10),
                    topRight: Radius.circular(Dimensions.d3),
                    topLeft: Radius.circular(Dimensions.d3),
                  ),
                ),
                height:110,
              ),
              const CustomDrawer(),
            ],
          ),
        ),
      ),
    );
  }
}
