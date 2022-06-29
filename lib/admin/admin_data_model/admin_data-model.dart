import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AdminDataModel {
  String cardName;
  String totalNo;
  String bottomString;
  String iconData;
  VoidCallback callBack;

  AdminDataModel(
      {required this.cardName,
      required this.totalNo,
      required this.bottomString,
      required this.iconData,
      required this.callBack});
}

List<AdminDataModel> adminDataModel = [
  AdminDataModel(
      cardName: 'Hospitals',
      totalNo: '6',
      iconData: 'assets/admin/hospital.png',
      bottomString: 'View Hospitals',
      callBack: () {Get.toNamed('/adminHospital');}),
  AdminDataModel(
      cardName: 'Patient',
      totalNo: '6',
      iconData: 'assets/admin/patient.png',
      bottomString: 'All Patient',
      callBack: () {Get.toNamed('/adminPatient');}),
  AdminDataModel(
      cardName: 'Earning',
      totalNo: '6',
      iconData: 'assets/admin/salary.png',
      bottomString: 'Earning',
      callBack: () {Get.toNamed('/adminEarning');}),
  AdminDataModel(
      cardName: 'Appointments',
      totalNo: '6',
      iconData: 'assets/admin/checklist.png',
      bottomString: 'Appointments',
      callBack: () {Get.toNamed('/adminAppointment');}),
  AdminDataModel(
      cardName: 'Doctors',
      totalNo: '6',
      iconData: 'assets/admin/doctor.png',
      bottomString: 'Doctors',
      callBack: () {Get.toNamed('/adminDoctors');}),
  AdminDataModel(
      cardName: 'Disease',
      totalNo: '6',
      iconData: 'assets/admin/deases.png',
      bottomString: 'Disease',
      callBack: () {Get.toNamed('/adminDisease');}),
  AdminDataModel(
      cardName: 'Orders',
      totalNo: '6',
      iconData: 'assets/admin/cart.png',
      bottomString: 'Orders',
      callBack: () {Get.toNamed('/adminOrders');}),
];
