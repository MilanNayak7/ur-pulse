

class CommonCardModel{
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
   CommonCardModel(mainText: "Instant Video consultation", subText: "Connect within 60 secs", img: "assets/images/doctor1.png"),
  CommonCardModel(mainText: "Book appointment", subText: "Confirmed appointments", img: "assets/images/doctor1.png"),

];

List<CommonCardModel> CommonServiceModelDummyData = [
  CommonCardModel(mainText: "Medicines", img: "assets/images/doctor1.png"),
  CommonCardModel(mainText: "Lab Tests", img: "assets/images/doctor1.png"),
  CommonCardModel(mainText: "Surgeries", img: "assets/images/doctor1.png"),
];