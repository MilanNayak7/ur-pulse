import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ur_pulse_modified/auth/login_page.dart';
import 'package:ur_pulse_modified/common/main_drawer/drawer_body.dart';
import 'package:ur_pulse_modified/provider/auth_provider.dart';
import 'package:ur_pulse_modified/user/features_module/appointments/appointment_conformation_screen.dart';
import 'package:ur_pulse_modified/user/features_module/appointments/appointments.dart';
import 'package:ur_pulse_modified/user/features_module/appointments/doctor_detail.dart';
import 'package:ur_pulse_modified/user/features_module/appointments/doctor_list_screen.dart';
import 'package:ur_pulse_modified/user/features_module/appointments/symptoms_screen.dart';
import 'package:ur_pulse_modified/user/features_module/are_you_a_doctor/are_you_a_doctor.dart';
import 'package:ur_pulse_modified/user/features_module/consultation/consultation.dart';
import 'package:ur_pulse_modified/user/features_module/consultation/model/user_model.dart';
import 'package:ur_pulse_modified/user/features_module/help_center/help_center.dart';
import 'package:ur_pulse_modified/user/features_module/like_us_give_us_starts/like_us_give_us_5_stars.dart';
import 'package:ur_pulse_modified/user/features_module/medical_records/medical_records.dart';
import 'package:ur_pulse_modified/user/features_module/my_doctors/my_doctors.dart';
import 'package:ur_pulse_modified/user/features_module/my_insurance_policy/my_insurance_policy.dart';
import 'package:ur_pulse_modified/user/features_module/orders/medicine_order_list.dart';
import 'package:ur_pulse_modified/user/features_module/orders/order_conformation_screen.dart';
import 'package:ur_pulse_modified/user/features_module/orders/order_screen.dart';
import 'package:ur_pulse_modified/user/features_module/orders/orders.dart';
import 'package:ur_pulse_modified/user/features_module/payments_&_healthcash/payments_health_cash.dart';
import 'package:ur_pulse_modified/user/features_module/read_about_health/read_about_health.dart';
import 'package:ur_pulse_modified/user/features_module/reminders/reminder.dart';
import 'package:ur_pulse_modified/user/features_module/settings/setting.dart';
import 'package:ur_pulse_modified/user/features_module/test_bookings/test_booking.dart';
import 'admin/admin_home/admin.dart';
import 'admin/screen/appointments/appointments.dart';
import 'admin/screen/disease/disease.dart';
import 'admin/screen/doctor_request/doctor_request.dart';
import 'admin/screen/doctors/doctor_data_modification.dart';
import 'admin/screen/doctors/doctors.dart';
import 'admin/screen/earning/earning.dart';
import 'admin/screen/hospitals/hospital.dart';
import 'admin/screen/orders/admin_orders.dart';
import 'admin/screen/patient/patient.dart';
import 'auth/check_user.dart';
import 'auth/firebase_helper.dart';
import 'auth/sign_up_page.dart';
import 'doctor/doctor_home/doctor_home_page.dart';
import 'doctor/screen/request_screen.dart';
import 'home/home.dart';
import 'home/home2.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await  Firebase.initializeApp();
//runApp(const MyApp());

  User? currentUser = FirebaseAuth.instance.currentUser;

  if(currentUser!= null){
    UserModel?  thisUserModel = await FirebaseHelper.getUserModelById(currentUser.uid);
    if(thisUserModel != null){
      return runApp(const MyApp());
      //return runApp(const NotSignUp());
    }else{
      return Get.to(LoginPage());
    }
  }else{
    return runApp(NotSignUp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider>(create: (_)=>
        AuthProvider(),
      child:GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  home: const HomePage(),
      home: HomePage(),
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
        GetPage(name:"/doctorList", page:()=> DoctorListScreen()),
        GetPage(name:"/doctorDetail", page:()=>  DoctorDetail()),
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
        GetPage(name:"/addDoctorPage", page:()=> const DoctorDataModification()),
        GetPage(name:"/doctorRequest", page:()=> DoctorRequest()),
        GetPage(name:"/doctorApproval", page:()=> DoctorApprovalRequest()),
      ],
    ),);
  }
}

class NotSignUp extends StatelessWidget {
  const NotSignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider>(create: (_)=>
        AuthProvider(),
      child:GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //  home: const HomePage(),
        home: LoginPage(),
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
          GetPage(name:"/doctorList", page:()=> DoctorListScreen()),
          GetPage(name:"/doctorDetail", page:()=>  DoctorDetail()),
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
          GetPage(name:"/addDoctorPage", page:()=> const DoctorDataModification()),
          GetPage(name:"/doctorRequest", page:()=> DoctorRequest()),
          GetPage(name:"/doctorApproval", page:()=> DoctorApprovalRequest()),
        ],
      ),);
  }
}

