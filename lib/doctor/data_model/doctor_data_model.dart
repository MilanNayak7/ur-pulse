import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DoctorDataModel {
  String cardName;
  String bottomString;
  String iconData;
  VoidCallback callBack;

  DoctorDataModel(
      {required this.cardName,
        required this.bottomString,
        required this.iconData,
        required this.callBack});
}

List<DoctorDataModel> doctorDataModel = [
  DoctorDataModel(
      cardName: 'Request',
      iconData: 'assets/admin/hospital.png',
      bottomString: 'View Hospitals',
      callBack: () {
        Get.toNamed('/doctorRequest');
      }),
  DoctorDataModel(
      cardName: 'All Appointments',
      iconData: 'assets/admin/patient.png',
      bottomString: 'All Patient',
      callBack: () {
        Get.toNamed('/adminPatient');
      }),
  DoctorDataModel(
      cardName: 'Update Profile Data',
      iconData: 'assets/admin/patient.png',
      bottomString: 'All Patient',
      callBack: () {
        Get.toNamed('/adminPatient');
      }),
];