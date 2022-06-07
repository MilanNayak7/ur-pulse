import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../../data_model/data_model.dart';
import 'main_drawer.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  State<DrawerBody> createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
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
                   //topRight: Radius.circular(Dimensions.d3),
                    topLeft: Radius.circular(Dimensions.d3),
                  ),
                ),
                height:Dimensions.dh110,
              ),
              Container(
                height:Dimensions.d91,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text("Practo"),
                             SizedBox(width:Dimensions.d2,),
                            Container(
                              decoration: BoxDecoration( color: Colors.green,borderRadius:BorderRadius.circular(Dimensions.d1)),
                              child:  Padding(
                                padding: EdgeInsets.all(Dimensions.d1),
                                child: Text("Plus"),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height:Dimensions.d2,),
                        const Text("Health Plan for your Family")
                      ],
                    ),
                    const Icon(Icons.arrow_right)
                  ],
                ),
              ),
              Divider(thickness:Dimensions.d2,color:Colors.indigo,),
               //CustomDrawer(dummydata: dummyData,),
              CustomDrawer(dummydata:dummyData,),
              Divider(thickness:Dimensions.d2,color:Colors.indigo,),
              CustomDrawer(dummydata:dummyData2,),
            ],
          ),
        ),
      ),
    );
  }
}
