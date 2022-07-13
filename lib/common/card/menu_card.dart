
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../user/data_model/data_model.dart';
import '../theme/app_theme.dart';

class MenuCard extends StatelessWidget {
  final DrawerMenuModel menuModel;

  MenuCard(this.menuModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (menuModel.Header) {
          case "Appointments":
            {
              Get.toNamed('appointment');
            }
            break;
          case "Test Bookings":
            {
              Get.toNamed('testBooking');
            }
            break;
          case "Orders":
            {
              Get.toNamed('orders');
            }
            break;
          case "Consultations":
            {
              Get.toNamed('consultations');
            }
            break;
          case "My Doctors":
            {
              Get.toNamed('myDoctors');
            }
            break;
          case "Medical Records":
            {
              Get.toNamed('medicalRecords');
            }
            break;
          case "My Insurance Policy":
            {
              Get.toNamed('myInsurance');
            }
            break;
          case "Reminders":
            {
              Get.toNamed('reminders');
            }
            break;
          case "Payments & HealthCash":
            {
              Get.toNamed('payments');
            }
            break;
          case "Read about health":
            {
              Get.toNamed('readAboutHealth');
            }
            break;
          case "Help Center":
            {
              Get.toNamed('helpCenter');
            }
            break;
          case "Settings":
            {
              Get.toNamed('setting');
            }
            break;
          case "Like us? Give us 5 stars":
            {
              Get.toNamed('likeUs');
            }
            break;
          case "Are you a doctor ?":
            {
              Get.toNamed('areYouADoctor');
            }
            break;
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.d3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Dimensions.d1),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.d4,
                    right: Dimensions.d4,
                    bottom: Dimensions.d4),
                child: Image.asset(
                  menuModel.imageUrl,
                  width: Dimensions.d7,
                  height: Dimensions.d7,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(menuModel.Header),
                  const SizedBox(height: 2),
                ],
              ),
            ),
            const Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}