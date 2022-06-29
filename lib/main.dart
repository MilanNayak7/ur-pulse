import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ur_pulse_modified/after_empty_screen/consult_a_doctor.dart';
import 'package:ur_pulse_modified/features_module/appointments/doctor_list_screen.dart';
import 'package:ur_pulse_modified/common/main_drawer/drawer_body.dart';

import 'admin/admin_home/admin.dart';
import 'admin/screen/appointments/appointments.dart';
import 'admin/screen/disease/disease.dart';
import 'admin/screen/doctors/doctors.dart';
import 'admin/screen/earning/earning.dart';
import 'admin/screen/hospitals/hospital.dart';
import 'admin/screen/orders/admin_orders.dart';
import 'admin/screen/patient/patient.dart';
import 'features_module/appointments/appointment_conformation_screen.dart';
import 'features_module/orders/cart_screen.dart';
import 'features_module/appointments/doctor_detail.dart';
import 'features_module/orders/medicine_order_list.dart';
import 'features_module/orders/order_conformation_screen.dart';
import 'features_module/orders/order_screen.dart';
import 'features_module/appointments/symptoms_screen.dart';
import 'features_module/appointments/appointments.dart';
import 'features_module/are_you_a_doctor/are_you_a_doctor.dart';
import 'features_module/consultation/consultation.dart';
import 'features_module/help_center/help_center.dart';
import 'features_module/like_us_give_us_starts/like_us_give_us_5_stars.dart';
import 'features_module/medical_records/medical_records.dart';
import 'features_module/my_doctors/my_doctors.dart';
import 'features_module/my_insurance_policy/my_insurance_policy.dart';
import 'features_module/orders/orders.dart';
import 'features_module/payments_&_healthcash/payments_health_cash.dart';
import 'features_module/read_about_health/read_about_health.dart';
import 'features_module/reminders/reminder.dart';
import 'features_module/settings/setting.dart';
import 'features_module/test_bookings/test_booking.dart';
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
    //  home: const HomePage(),
      home:AdminHomePage(),
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
        GetPage(name:"/doctorDetail", page:()=> const DoctorDetail()),
        GetPage(name:"/appointmentConform", page:()=> const AppointmentConformationScreen()),
        GetPage(name:"/orderScreen", page:()=> const OrderScreen()),
        GetPage(name:"/medOrderList", page:()=> const MedicineOrderList()),
        GetPage(name:"/orderPayment", page:()=> const OrderConformation()),
        GetPage(name:"/adminAppointment", page:()=> const AdminAppointments()),
        GetPage(name:"/adminDisease", page:()=> const AdminDisease()),
        GetPage(name:"/adminDoctors", page:()=> const AdminDoctors()),
        GetPage(name:"/adminEarning", page:()=> const AdminEarning()),
        GetPage(name:"/adminHospital", page:()=> const AdminHospital()),
        GetPage(name:"/adminPatient", page:()=> const AdminPatient()),
        GetPage(name:"/adminOrders", page:()=> const AdminOrders()),
      ],
    );
  }
}

