import 'package:json_annotation/json_annotation.dart';
import 'package:ur_pulse_modified/network_operation/booking.dart';

part'doctor.g.dart';

@JsonSerializable(explicitToJson:true)
class Doctor{
  Doctor({
    this.id,
    required this.doctorName,
    required this.mailId,
    required this.medicalName,
    required this.mobileNumber,
    required this.appointmentAddress,
    required this.doctorExperience,
    this.doctorImage,
    this.doctorStatus,
    required this.videoConsult,
    this.booking
});

@JsonKey(name:"_id")
String?id;

@JsonKey(required:true,name:"doctorImage")
String? doctorImage;

@JsonKey(required:true,name:"doctorName")
String doctorName;

@JsonKey(required:true,name:"videoConsult")
bool videoConsult;

@JsonKey(required:true,name:"doctorExperience")
String doctorExperience;

@JsonKey(required:true,name:"appointmentAddress")
String appointmentAddress;

@JsonKey(required:true,name:"medicalName")
String medicalName;

@JsonKey(required:true,name:"mobileNumber")
String mobileNumber;

@JsonKey(name:"doctorStatus")
bool? doctorStatus;

@JsonKey(required:true,name:"mailId")
String mailId;

@JsonKey(name:"booking")
  List<Booking>? booking;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}