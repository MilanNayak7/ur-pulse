import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../common/app_bar/app_bar_action_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CommonAppBar(context: context, addBackButton:true, appBarTitle: 'Practo Pharmacy', actionWidgets: appBarBaseActionWidgets,),
      body:Padding(
        padding: EdgeInsets.only(top:Dimensions.d2),
        child: Column(
          children: [
            Container(
              color:Colors.blueGrey,
              height:Dimensions.d8,
              width:MediaQuery.of(context).size.width,
              child:Text("Place for display delivery location"),
            )
          ],
        ),
      ),
    );
  }
}
