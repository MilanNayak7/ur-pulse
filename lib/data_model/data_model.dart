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
  final String lastName;
  final String imageUrl;
  final String phone;

  DrawerMenuModel({
    required this.Header,
    required this.lastName,
    required this.imageUrl,
    required this.phone,
  });
}


List<DrawerMenuModel> dummyData = [
  DrawerMenuModel(
    Header: 'Bryan',
    lastName: 'Adams',
    imageUrl: 'https://picsum.photos/id/1005/100',
    phone: '+91 98120 43912',
  ),
  DrawerMenuModel(
    Header: 'Julia',
    lastName: 'Roberts',
    imageUrl: 'https://picsum.photos/id/1012/100',
    phone: '+91 78230 21385',
  ),
  DrawerMenuModel(
    Header: 'Samantha',
    lastName: 'Drisco',
    imageUrl: 'https://picsum.photos/id/1011/100',
    phone: '+91 89067 24129',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),
  DrawerMenuModel(
    Header: 'Sean',
    lastName: 'Connery',
    imageUrl: 'https://picsum.photos/id/1066/100',
    phone: '+91 92143 79785',
  ),


];
