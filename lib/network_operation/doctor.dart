import 'package:json_annotation/json_annotation.dart';
import 'package:ur_pulse_modified/network_operation/booking.dart';

part'doctor.g.dart';

@JsonSerializable(explicitToJson:true)
class Doctor{
  Doctor({
    this.id,
    required this.doctorName,
    this.mailId,
    this.medicalName,
    this.mobileNumber,
    this.appointmentAddress,
    this.doctorExperience,
    this.doctorImage,
    this.doctorStatus,
    this.videoConsult,
    this.booking,

  required this.doctorType
});

@JsonKey(name:"_id")
String?id;

@JsonKey(name:"doctorImage")
String? doctorImage;

@JsonKey(required:true,name:"doctorName")
String? doctorName;

@JsonKey(name:"videoConsult")
bool? videoConsult;

@JsonKey(name:"doctorExperience")
String? doctorExperience;

@JsonKey(name:"appointmentAddress")
String? appointmentAddress;

@JsonKey(name:"medicalName")
String? medicalName;

@JsonKey(name:"mobileNumber")
String? mobileNumber;

@JsonKey(name:"doctorStatus")
bool? doctorStatus;

@JsonKey(name:"doctorType")
String? doctorType;

@JsonKey(name:"consultFee")
String? consultFee;

@JsonKey(name:"mailId")
String? mailId;

@JsonKey(name:"booking")
  List<Booking>? booking;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}