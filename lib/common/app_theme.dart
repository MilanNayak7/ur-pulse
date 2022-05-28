import 'package:get/get.dart';

abstract class Dimensions {
 static double screenHeight = Get.context!.height; //813
 static double screenWidth = Get.context!.width;  //392
 static double commomcardheight = screenHeight/4.00;
 static double commomcardwidth = screenWidth/2.48;



 static double d1 = screenWidth/98;
 static double d2 = screenWidth/49;
 static double d3  = screenWidth/32.6;
 static double d4 = screenWidth/24.5;
 static double d5 = screenWidth/19.6;
 static double d6 = screenWidth/16.3;
 static double d7 = screenWidth/14;
 static double d8 = screenWidth/12.2;
 static double d9 = screenWidth/10.8;
 static double d10 = screenWidth/9.8;
 static double d11 = screenWidth/8.9;
 static double d12 = screenWidth/8.1;
 static double d15 = screenWidth/6.5;
 static double d20 = screenWidth/4.9;
 static double d25 = screenWidth/3.9;
 static double d30 = screenWidth/3.2;
 static double d35 = screenWidth/2.8;
 static double d40 = screenWidth/2.4;
 static double d75 = screenWidth/1.30;
 static double d95 = screenWidth/1.0;
 // static double d30 = screenWidth/3.2;
 // static double d35 = screenWidth/4.9;
 // static double d20 = screenWidth/4.9;
 // static double d40 = screenWidth/2.45;
 // static double d75 = screenWidth/5.22;
 // static double d95 = screenWidth/4.12;
  static arbitrary(double value) => value;
}