import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';

import '../../../common/card/common_container_button.dart';

class OrderConformation extends StatelessWidget {
  const OrderConformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBarTitle: 'Choose Delivery Option',
        addBackButton: true,
        actionWidgets: [],
        context: context,
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(vertical:Dimensions.d2),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical:Dimensions.d2),
              child: SizedBox(
                width:MediaQuery.of(context).size.width,
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal:Dimensions.d2),
                  child: Row(
                    children:[
                      Expanded(flex:1,child: Icon(Icons.home)),
                      Expanded(
                        flex:5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Deliver to HOME",style:TextStyle(fontWeight:FontWeight.bold,fontSize:Dimensions.d4),),
                            SizedBox(height:Dimensions.d1,),
                           Text("Sahu mess, acharya Vihar, 751022, Bhubaneswar, Odisha",style:TextStyle(fontSize:Dimensions.d3,overflow:TextOverflow.ellipsis),),
                          ],
                        ),
                      ),
                    Expanded(flex:2,child: Center(child: Text("Change",style:TextStyle(fontWeight:FontWeight.bold,fontSize:Dimensions.d4,color:Colors.blue),)))
                    ],
                  ),
                ),
              ),
            ),
            Divider(color:Colors.black12,thickness:Dimensions.d2,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:Dimensions.d2,vertical:Dimensions.d4),
              child: Align(
                  alignment:Alignment.topLeft,
                  child: Text("DELIVERY OPTION",style:TextStyle(fontWeight:FontWeight.bold),)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:Dimensions.d2),
              child: Card(
                elevation:Dimensions.d1,
                child:SizedBox(
                  width:MediaQuery.of(context).size.width,
                  child:Padding(
                    padding:EdgeInsets.all(Dimensions.d4),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text("Standard Delivery",style:TextStyle(fontWeight:FontWeight.bold,fontSize:Dimensions.d5),),
                        SizedBox(height:Dimensions.d2,),
                        Text("Delivery by UrPulse Powered Pharmacy",style:TextStyle(fontSize:Dimensions.d4),),
                         Divider(thickness:1,),
                         Text("All items are available",style:TextStyle(fontSize:Dimensions.d4),),
                         Row(
                           children: [
                             Text("Delivery by",style:TextStyle(fontSize:Dimensions.d4),),
                             Text(" jun 29",style:TextStyle(fontSize:Dimensions.d4,fontWeight:FontWeight.bold),),
                           ],
                         ),
                        Divider(thickness:1,),
                        Row(
                          children: [
                            Expanded(
                              flex:4,
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Text("Rs. 320",style:TextStyle(fontWeight:FontWeight.bold,fontSize:Dimensions.d5),),
                                  SizedBox(height:Dimensions.d1,),
                                  Text("rs 180.00 + rs 59 Delivery fee",style:TextStyle(fontSize:Dimensions.d3)),
                                ],
                              ),
                            ),
                            Expanded(
                                flex:2,
                                child: CommonContainerButton(icon:Icons.thumb_up,txt:"Confirm", callback:(){}))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
