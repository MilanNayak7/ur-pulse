import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ur_pulse_modified/after_empty_screen/consult_a_doctor.dart';
import 'package:ur_pulse_modified/after_empty_screen/doctor_list_screen.dart';
import 'package:ur_pulse_modified/common/main_drawer/drawer_body.dart';

import 'after_empty_screen/appointment_conformation_screen.dart';
import 'after_empty_screen/doctor_detail.dart';
import 'after_empty_screen/medicine_order_list.dart';
import 'after_empty_screen/order_screen.dart';
import 'after_empty_screen/symptoms_screen.dart';
import 'features_module/appointments.dart';
import 'features_module/are_you_a_doctor.dart';
import 'features_module/consultation.dart';
import 'features_module/help_center.dart';
import 'features_module/like_us_give_us_5_stars.dart';
import 'features_module/medical_records.dart';
import 'features_module/my_doctors.dart';
import 'features_module/my_insurance_policy.dart';
import 'features_module/orders.dart';
import 'features_module/payments_health_cash.dart';
import 'features_module/read_about_health.dart';
import 'features_module/reminder.dart';
import 'features_module/setting.dart';
import 'features_module/test_booking.dart';
import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name:"/drawer", page:()=>const DrawerBody()),
        GetPage(name:"/appointment", page:()=>const Appointment()),
        GetPage(name:"/testBooking", page:()=>const TestBooking()),
        GetPage(name:"/orders", page:()=>const Orders()),
        GetPage(name:"/consultations", page:()=>const Consultation()),
        GetPage(name:"/myDoctors", page:()=>const MyDoctors()),
        GetPage(name:"/medicalRecords", page:()=>const MedicalRecords()),
        GetPage(name:"/myInsurance", page:()=>const Insurance()),
        GetPage(name:"/reminders", page:()=>const Reminder()),
        GetPage(name:"/payments", page:()=>const Payment()),
        GetPage(name:"/readAboutHealth", page:()=>const AboutHealth()),
        GetPage(name:"/helpCenter", page:()=>const HelpCenter()),
        GetPage(name:"/setting", page:()=>const Setting()),
        GetPage(name:"/likeUs", page:()=>const LikeUs()),
        GetPage(name:"/areYouADoctor", page:()=>const AreYouADoctor()),
        GetPage(name:"/symptoms", page:()=> const SymptomsScreen()),
        GetPage(name:"/doctorList", page:()=> const DoctorListScreen()),
        GetPage(name:"/consultADoctor", page:()=> const ConsultADoctor()),
        GetPage(name:"/doctorDetail", page:()=> const DoctorDetail()),
        GetPage(name:"/appointmentConform", page:()=> const AppointmentConformationScreen()),
        GetPage(name:"/orderScreen", page:()=> const OrderScreen()),
        GetPage(name:"/medOrderList", page:()=> const MedicineOrderList()),
      ],
    );
  }
}

