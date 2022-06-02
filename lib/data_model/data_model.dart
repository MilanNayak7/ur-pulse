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
