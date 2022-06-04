import 'package:flutter/material.dart';
import 'package:ur_pulse_modified/common/app_bar/common_app_bar.dart';
import 'package:ur_pulse_modified/common/theme/app_theme.dart';
class SymptomsScreen extends StatelessWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(appBarTitle: 'Find Your Health Concern', addBackButton: true, context: context,),
      body: Padding(
        padding: EdgeInsets.only(top:Dimensions.d6,left:Dimensions.d6,right:Dimensions.d6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:Dimensions.d8,),
            Container(
              decoration:BoxDecoration(border:Border.all(color:Colors.brown),borderRadius:BorderRadius.circular(Dimensions.d2),color:Colors.white),
              height:Dimensions.d12,
              width: MediaQuery.of(context).size.width,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  SizedBox(width:Dimensions.d4,),
                  const Icon(Icons.search),
                  SizedBox(width:Dimensions.d4,),
                  const Text("Search Symptoms/Specialities")
                ],
              ),
            ),
            SizedBox(height:Dimensions.d8,),
            Text("Most Searched Specialities",style:TextStyle(fontWeight:FontWeight.w800,fontSize:Dimensions.d5),),
            SizedBox(height:Dimensions.d4,),
          ],
        ),
      ),
    );
  }
}
