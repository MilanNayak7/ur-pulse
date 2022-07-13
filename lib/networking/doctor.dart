import 'package:json_annotation/json_annotation.dart';

part 'doctor.g.dart';

@JsonSerializable(explicitToJson: true)
class Doctor{
  Doctor({
    required this.doctorName,
    required this.appointmentDetail,
    required this.medicalName,
    required this.mailId,
    required this.mobileNumber,
    this.id
  });

  @JsonKey(name:"_id")
  String?id;

  @JsonKey(required:true,name:"doctorName")
  String doctorName;

  @JsonKey(required:true,name:"appointmentDetail")
  String appointmentDetail;

  @JsonKey(required:true,name:"medicalName")
  String medicalName;

  @JsonKey(required:true,name:"mobileNumber")
  String mobileNumber;

  @JsonKey(required:true,name:"mailId")
  String mailId;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}
