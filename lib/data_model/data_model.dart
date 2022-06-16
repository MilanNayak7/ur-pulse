import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CommonCardModel {
  final String mainText;
  String? subText;
  final String img;

  CommonCardModel({
    required this.mainText,
    this.subText,
    required this.img,
  });
}

List<CommonCardModel> CommonCardModelDummyData = [
  CommonCardModel(
      mainText: "Instant Video consultation",
      subText: "Connect within 60 secs",
      img: "assets/images/mobile.png"),
  CommonCardModel(
      mainText: "Book appointment",
      subText: "Confirmed appointments",
      img: "assets/doctors/maleDoctor2.png"),
  CommonCardModel(
      mainText: "Book appointment",
      subText: "Confirmed appointments",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Book appointment",
      subText: "Confirmed appointments",
      img: "assets/images/doctor1.png"),
];

List<CommonCardModel> symptomCommonCardModelDummyData = [
  CommonCardModel(
      mainText: "Skin and hair",
      subText:
          "Find doctors for issues like acne, hair fall, and other skin & hair ",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Women's health",
      subText: "Find doctors for women's gynaecological issue",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Chronic problems",
      subText:
          "Find doctors who treat diabetes, asthma and other chronic problems",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Bone and joint",
      subText: "Find doctors body aches and other bone & joints",
      img: "assets/images/doctor1.png"),
];

List<CommonCardModel> MedicineCategoryCardModelDummyData = [
  CommonCardModel(
      mainText: "Covid Essentials",
      subText: "",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Skin Care",
      subText:"",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Vitamins And Minerals",
      subText: "",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Health Food and Drinks",
      subText:"",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Baby Care",
      subText:"",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Pain Relief",
      subText:"",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Diabetic Care",
      subText:"",
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Protien and Suppplements",
      subText:"",
      img: "assets/images/doctor1.png"),
];

List<CommonCardModel> CommonServiceModelDummyData = [
  CommonCardModel(mainText: "Medicines", img: "assets/doctors/delever.png"),
  CommonCardModel(mainText: "Lab Tests", img: "assets/doctors/lab.png"),
  CommonCardModel(mainText: "Surgeries", img: "assets/doctors/femaleDoctor1.png"),
];

///////////////////////////////////////////////////////
class DrawerMenuModel {
  final String Header;
  final String imageUrl;

  DrawerMenuModel({
    required this.Header,
    required this.imageUrl,
  });
}

List<DrawerMenuModel> dummyData = [
  DrawerMenuModel(
    Header: 'Appointments',
    imageUrl: 'assets/drawer/appointment.png',
  ),
  DrawerMenuModel(
    Header: 'Test Bookings',
    imageUrl: 'assets/drawer/test.png',
  ),
  DrawerMenuModel(
    Header: 'Orders',
    imageUrl: 'assets/drawer/order.png',
  ),
  DrawerMenuModel(
    Header: 'Consultations',
    imageUrl: 'assets/drawer/consultation.png',
  ),
  DrawerMenuModel(
    Header: 'My Doctors',
    imageUrl: 'assets/drawer/doctor.png',
  ),
  DrawerMenuModel(
    Header: 'Medical Records',
    imageUrl: 'assets/drawer/record.png',
  ),
  DrawerMenuModel(
    Header: 'My Insurance Policy',
    imageUrl: 'assets/drawer/insurance.png',
  ),
  DrawerMenuModel(
    Header: 'Reminders',
    imageUrl: 'assets/drawer/notification.png',
  ),
  DrawerMenuModel(
    Header: 'Payments & HealthCash',
    imageUrl: 'assets/drawer/card.png',
  ),
];

List<DrawerMenuModel> dummyData2 = [
  DrawerMenuModel(
    Header: 'Read about health',
    imageUrl: 'assets/drawer/healthcare.png',
  ),
  DrawerMenuModel(
    Header: 'Help Center',
    imageUrl: 'assets/drawer/help.png',
  ),
  DrawerMenuModel(
    Header: 'Settings',
    imageUrl: 'assets/drawer/settings.png',
  ),
  DrawerMenuModel(
    Header: 'Like us? Give us 5 stars',
    imageUrl: 'assets/drawer/like.png',
  ),
  DrawerMenuModel(
    Header: 'Are you a doctor ?',
    imageUrl: 'assets/drawer/doctor_1.png',
  ),
];

List<DrawerMenuModel> commonSymptoms = [
  DrawerMenuModel(Header: "COVID", imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(Header: "Skin & Hair", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(
      Header: "Women's\nHealth", imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(
      Header: "General\nPhysician", imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(
      Header: "Dental Care", imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(
      Header: "Bones &\nJoints", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(
      Header: "Mental\nWellness", imageUrl: 'assets/symptoms/headache.png'),
  DrawerMenuModel(
      Header: "Ear,\nNose, Throat", imageUrl: 'assets/symptoms/ear.png'),
  DrawerMenuModel(
      Header: "Sexual Health", imageUrl: 'assets/symptoms/sextual.png'),
  DrawerMenuModel(
      Header: "Child \nSpecialist", imageUrl: 'assets/symptoms/child.png'),
  DrawerMenuModel(
      Header: "Homeopathy", imageUrl: 'assets/symptoms/ayurveda.png'),
  DrawerMenuModel(
      Header: "Digestive \nIssues", imageUrl: 'assets/symptoms/digestive.png'),
  DrawerMenuModel(
      Header: "Eye \nSpecialist", imageUrl: 'assets/symptoms/digestive.png'),
  DrawerMenuModel(Header: "Heart", imageUrl: 'assets/symptoms/heart.png'),
  DrawerMenuModel(
      Header: "Physiotherapy", imageUrl: 'assets/symptoms/physiotherapy.png'),
  DrawerMenuModel(
      Header: "Brain \nand Nerves", imageUrl: 'assets/symptoms/brain.png'),
  DrawerMenuModel(
      Header: "Lungs \nand Breathing", imageUrl: 'assets/symptoms/lungs.png'),
  DrawerMenuModel(
      Header: "Kidney Issues", imageUrl: 'assets/symptoms/kidney.png'),
  DrawerMenuModel(
      Header: "General Surgery", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(
      Header: "Diabetes \nManagement", imageUrl: 'assets/symptoms/diabetes.png'),
  DrawerMenuModel(Header: "Ayurveda ", imageUrl: 'assets/symptoms/ayurveda.png'),
  DrawerMenuModel(Header: "Cancer", imageUrl: 'assets/symptoms/cancer.png'),
  DrawerMenuModel(
      Header: "Urinary \nIssues", imageUrl: 'assets/symptoms/urinaryInfectin.png'),
  DrawerMenuModel(
      Header: "Veterinary", imageUrl: 'assets/symptoms/veterinary.png'),
  DrawerMenuModel(
      Header: "Diet & \nNutrition", imageUrl: 'assets/symptoms/diet.png'),
];

List<DrawerMenuModel> surgeriesSymptoms = [
  DrawerMenuModel(
      Header: "Piles\n/Hemorrhoids",
      imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(Header: "Hernia", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(
      Header: "Appendicitis", imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(
      Header: "AnalFissure", imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(
      Header: "Varicose \nVein", imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(
      Header: "Kidney \nStone", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(
      Header: "Gall stones", imageUrl: 'assets/symptoms/headache.png'),
  DrawerMenuModel(Header: "Circumcision", imageUrl: 'assets/symptoms/ear.png'),
];

List<DrawerMenuModel> mostCommonSymptoms = [
  DrawerMenuModel(Header: "COVID", imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(Header: "Stomach Pain", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(Header: "Headache", imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(Header: "Sinusitis", imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(Header: "Vertigo", imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(
      Header: "Cold & Cough", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(Header: "Fever", imageUrl: 'assets/symptoms/headache.png'),
  DrawerMenuModel(Header: "Constipation", imageUrl: 'assets/symptoms/ear.png'),
];

List<DrawerMenuModel> skinAndHair = [
  DrawerMenuModel(
      Header: "Psoriasis/Scaly patches",
      imageUrl: 'assets/skin/eczema.png'),
  DrawerMenuModel(
      Header: "Skin Allergies", imageUrl: 'assets/skin/skinAllergies.png'),
  DrawerMenuModel(
      Header: "Eczema/itchy red skin", imageUrl: 'assets/skin/fungal.png'),
  DrawerMenuModel(Header: "Acne", imageUrl: 'assets/skin/ance.png'),
  DrawerMenuModel(
      Header: "Vitiligo/ white patches",
      imageUrl: 'assets/skin/eczema.png'),
  DrawerMenuModel(Header: "Hair loss", imageUrl: 'assets/skin/hairLoss.png'),
  DrawerMenuModel(
      Header: "Fungal Infection", imageUrl: 'assets/skin/fungal.png'),
  DrawerMenuModel(
      Header: "Dandruff problems", imageUrl: 'assets/skin/dandruff.png'),
];

List<DrawerMenuModel> womensHealthConcerns = [
  DrawerMenuModel(Header: "PCOS", imageUrl: 'assets/women/pcos.png'),
  DrawerMenuModel(Header: "Menopause", imageUrl: 'assets/women/pcos.png'),
  DrawerMenuModel(
      Header: "Ovarian Cysts", imageUrl: 'assets/women/ovarian.png'),
  DrawerMenuModel(Header: "Pregnancy", imageUrl: 'assets/women/preg.png'),
  DrawerMenuModel(
      Header: "Infertility", imageUrl: 'assets/women/infertility.png'),
  DrawerMenuModel(
      Header: "Vaginal Discharge", imageUrl: 'assets/women/vaginalDischarge.png'),
  DrawerMenuModel(
      Header: "Irregular Periods", imageUrl: 'assets/women/irregularPeriods.png'),
  DrawerMenuModel(
      Header: "Urinary Tract Infection", imageUrl: 'assets/women/urinaryInfectin.png'),
];

List<DrawerMenuModel> chronicProblems = [
  DrawerMenuModel(
      Header: "Diabetes", imageUrl: 'assets/chronic/diabetes.png'),
  DrawerMenuModel(Header: "Cholestrol", imageUrl: 'assets/chronic/cancer.png'),
  DrawerMenuModel(Header: "Asthma", imageUrl: 'assets/chronic/asthma.png'),
  DrawerMenuModel(
      Header: "Hypertension", imageUrl: 'assets/chronic/hypertension.png'),
  DrawerMenuModel(Header: "Cancer", imageUrl: 'assets/chronic/cancer.png'),
  DrawerMenuModel(
      Header: "Insomnia/sleeplessness", imageUrl: 'assets/chronic/insomnia.png'),
  DrawerMenuModel(
      Header: "Kidney failure", imageUrl: 'assets/chronic/kidneyFailure.png'),
  DrawerMenuModel(Header: "Thyroid", imageUrl: 'assets/chronic/thyroid.png'),
];

List<DrawerMenuModel> boneAndJoint = [
  DrawerMenuModel(
      Header: "Knee Pain", imageUrl: 'assets/bone/kneePain.png'),
  DrawerMenuModel(Header: "Arthritis", imageUrl: 'assets/bone/arthritis.png'),
  DrawerMenuModel(
      Header: "Osteoporosis/ week bones",
      imageUrl: 'assets/bone/osteoporosis.png'),
  DrawerMenuModel(
      Header: "Fibromyalgia/Muscle pain",
      imageUrl: 'assets/bone/musclePain.png'),
  DrawerMenuModel(
      Header: "Lower Back Pain", imageUrl: 'assets/bone/backPain.png'),
  DrawerMenuModel(
      Header: "Fractures/Sprains", imageUrl: 'assets/bone/fractu.png'),
  DrawerMenuModel(
      Header: "Carpal Tunnel", imageUrl: 'assets/bone/carpal.png'),
];

class ConsultationType {
  final String type;
  ConsultationType({required this.type});
}

List<ConsultationType> consultation = [
  ConsultationType(type: "Now or Later"),
  ConsultationType(type: "Video Consult"),
  ConsultationType(type: "Plus"),
  ConsultationType(type: "Sort/Filters")
];

class CommonDoctorDetailCard {
  String type;
  String name;
  String experience;
  String address;
  String medicalName;
  String fees;
  String availableTime;
  String flag;
  CommonDoctorDetailCard(
      {required this.type,
      required this.name,
      required this.flag,
      required this.experience,
      required this.address,
      required this.medicalName,
      required this.fees,
      required this.availableTime});
}

List<CommonDoctorDetailCard> doctorDetail = [
  CommonDoctorDetailCard(
      type: 'General Physician',
      name: 'Dr. Manish Kumar',
      experience: '16',
      address: 'Saheed Nagar',
      medicalName: 'Apoorv Multispeciality Clinic',
      fees: '500',
      availableTime: '08:00',
      flag: 'generalPhysician'),
  CommonDoctorDetailCard(
      type: 'General Physician',
      name: 'Dr. Manish Kumar',
      experience: '16',
      address: 'Saheed Nagar',
      medicalName: 'Apoorv Multispeciality Clinic',
      fees: '500',
      availableTime: '08:00',
      flag: 'generalPhysician'),
  CommonDoctorDetailCard(
      type: 'General Physician',
      name: 'Dr. Manish Kumar',
      experience: '16',
      address: 'Saheed Nagar',
      medicalName: 'Apoorv Multispeciality Clinic',
      fees: '500',
      availableTime: '08:00',
      flag: 'generalPhysician'),
  CommonDoctorDetailCard(
      type: 'General Physician',
      name: 'Dr. Manish Kumar',
      experience: '16',
      address: 'Saheed Nagar',
      medicalName: 'Apoorv Multispeciality Clinic',
      fees: '500',
      availableTime: '08:00',
      flag: 'generalPhysician'),
];

class SlotTimeModel {
  String day;
  String month;
  String slotNo;
  SlotTimeModel({required this.day, required this.month, required this.slotNo});
}
List<SlotTimeModel> slotTimeData =[
  SlotTimeModel(day: 'Today', slotNo: 'No', month: 'Jun'),
  SlotTimeModel(day: 'Tomorrow', slotNo: '6', month: 'Jun'),
  SlotTimeModel(day: '8',month: 'Jun',slotNo: '6'),
  SlotTimeModel(day: '9',month: 'Jun', slotNo: '6'),
  SlotTimeModel(day: '10',month: 'Jun', slotNo: '6'),
  SlotTimeModel(day: '11',month: 'Jun', slotNo: '6'),
  SlotTimeModel(day: '12',month: 'Jun', slotNo: 'No'),
  SlotTimeModel(day: '13',month: 'Jun', slotNo: '6'),
];

class TimeModel {
  String time;
  String hour;
  TimeModel({required this.time,required this.hour});
}

List<TimeModel> timedata = [
  TimeModel(time:'11:00', hour: 'AM'),
  TimeModel(time:'11:00', hour: 'AM'),
  TimeModel(time:'11:00', hour: 'AM'),
  TimeModel(time:'11:00', hour: 'AM'),
  TimeModel(time:'11:00', hour: 'AM'),
  TimeModel(time:'11:00', hour: 'AM'),
  TimeModel(time:'11:00', hour: 'AM'),

];

class ShowOffCardModel {
  Icon icon;
  String text1;
  String text2;
  ShowOffCardModel({required this.icon,required this.text1,required this.text2});
}

List<ShowOffCardModel> showoffcarddata = [
  ShowOffCardModel(icon: const Icon(Icons.person), text1:'Our Users', text2: '30 Crores'),
  ShowOffCardModel(icon:const Icon(Icons.medical_services), text1:'Our Users', text2: '1 Lakh'),
  ShowOffCardModel(icon:const Icon(Icons.local_hospital), text1:'Our Users', text2: '20,000'),
  ShowOffCardModel(icon:const Icon(Icons.message_outlined), text1:'Our Users', text2: '40 Lakh'),
];


List<ShowOffCardModel> showoffcarddata2 = [
  ShowOffCardModel(icon: const Icon(Icons.person), text1:'Our Users', text2: '1 Crore+'),
  ShowOffCardModel(icon:const Icon(Icons.medical_services), text1:'Our Products', text2: '1 Lakh'),
  ShowOffCardModel(icon:const Icon(Icons.star), text1:'Original Products', text2: '100%'),
  ShowOffCardModel(icon:const Icon(Icons.message_outlined), text1:'Secured Transaction', text2: '5 Lakh+'),
];


class OrderProductModel{
  Icon icon;
  String header;
  String subText;
  String price;
  Callback callback;

  OrderProductModel({required this.icon,required this.header,required this.subText,required this.price,required this.callback});
}

List<OrderProductModel> orderProductData =[
  OrderProductModel(subText: '', header: '', callback: () {  }, price: '', icon: Icon(Icons.person)),
  OrderProductModel(subText: '', header: '', callback: () {  }, price: '', icon: Icon(Icons.person)),
  OrderProductModel(subText: '', header: '', callback: () {  }, price: '', icon: Icon(Icons.person)),
  OrderProductModel(subText: '', header: '', callback: () {  }, price: '', icon: Icon(Icons.person)),

];
