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
      img: "assets/images/doctor1.png"),
  CommonCardModel(
      mainText: "Book appointment",
      subText: "Confirmed appointments",
      img: "assets/images/doctor1.png"),
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

List<CommonCardModel> CommonServiceModelDummyData = [
  CommonCardModel(mainText: "Medicines", img: "assets/images/doctor1.png"),
  CommonCardModel(mainText: "Lab Tests", img: "assets/images/doctor1.png"),
  CommonCardModel(mainText: "Surgeries", img: "assets/images/doctor1.png"),
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
      Header: "Homeopathy", imageUrl: 'assets/symptoms/medicine.png'),
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
      Header: "Lungs \nand Breathing", imageUrl: 'assets/symptoms/brain.png'),
  DrawerMenuModel(
      Header: "Kidney Issues", imageUrl: 'assets/symptoms/kidney.png'),
  DrawerMenuModel(
      Header: "General Surgery", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(
      Header: "Diabetes \nManagement", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(Header: "Ayurveda ", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(Header: "Cancer", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(
      Header: "Urinary \nIssues", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(
      Header: "Veterinary", imageUrl: 'assets/symptoms/surgery.png'),
  DrawerMenuModel(
      Header: "Diet & \nNutrition", imageUrl: 'assets/symptoms/surgery.png'),
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
      imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(
      Header: "Skin Allergies", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(
      Header: "Eczema/itchy red skin", imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(Header: "Acne", imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(
      Header: "Vitiligo/ white patches",
      imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(Header: "Hair loss", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(
      Header: "Fungal Infection", imageUrl: 'assets/symptoms/headache.png'),
  DrawerMenuModel(
      Header: "Dandruff problems", imageUrl: 'assets/symptoms/ear.png'),
];

List<DrawerMenuModel> womensHealthConcerns = [
  DrawerMenuModel(Header: "PCOS", imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(Header: "Menopause", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(
      Header: "Ovarian Cysts", imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(Header: "Pregnancy", imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(
      Header: "Infertility", imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(
      Header: "Vaginal Discharge", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(
      Header: "Irregular Periods", imageUrl: 'assets/symptoms/headache.png'),
  DrawerMenuModel(
      Header: "Urinary Tract Infection", imageUrl: 'assets/symptoms/ear.png'),
];

List<DrawerMenuModel> chronicProblems = [
  DrawerMenuModel(
      Header: "Diabetes", imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(Header: "Cholestrol", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(Header: "Asthma", imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(
      Header: "Hypertension", imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(Header: "Cancer", imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(
      Header: "Insomnia/sleeplessness", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(
      Header: "Kidney failure", imageUrl: 'assets/symptoms/headache.png'),
  DrawerMenuModel(Header: "Thyroid", imageUrl: 'assets/symptoms/ear.png'),
];

List<DrawerMenuModel> boneAndJoint = [
  DrawerMenuModel(
      Header: "Knee Pain", imageUrl: 'assets/symptoms/coronavirus.png'),
  DrawerMenuModel(Header: "Arthritis", imageUrl: 'assets/symptoms/hair.png'),
  DrawerMenuModel(
      Header: "Osteoporosis/ week bones",
      imageUrl: 'assets/symptoms/women.png'),
  DrawerMenuModel(
      Header: "Fibromyalgia/Muscle pain",
      imageUrl: 'assets/symptoms/general.png'),
  DrawerMenuModel(
      Header: "Lower Back Pain", imageUrl: 'assets/symptoms/dental.png'),
  DrawerMenuModel(
      Header: "Fractures/Sprains", imageUrl: 'assets/symptoms/bones.png'),
  DrawerMenuModel(
      Header: "Carpal Tunnel", imageUrl: 'assets/symptoms/headache.png'),
];

class ConsultationType {
  final String type;
  ConsultationType({required this.type});
}

List<ConsultationType> consultation = [
  ConsultationType(type:"Now or Later"),
  ConsultationType(type:"Video Consult"),
  ConsultationType(type:"Plus"),
  ConsultationType(type: "Sort/Filters")
];
