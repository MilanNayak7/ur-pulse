// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['doctorName'],
  );
  return Doctor(
    id: json['_id'] as String?,
    doctorName: json['doctorName'] as String?,
    mailId: json['mailId'] as String?,
    medicalName: json['medicalName'] as String?,
    mobileNumber: json['mobileNumber'] as String?,
    appointmentAddress: json['appointmentAddress'] as String?,
    doctorExperience: json['doctorExperience'] as String?,
    doctorImage: json['doctorImage'] as String?,
    doctorStatus: json['doctorStatus'] as bool?,
    videoConsult: json['videoConsult'] as bool?,
    booking: (json['booking'] as List<dynamic>?)
        ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
        .toList(),
    doctorType: json['doctorType'] as String?,
  )..consultFee = json['consultFee'] as String?;
}

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
      '_id': instance.id,
      'doctorImage': instance.doctorImage,
      'doctorName': instance.doctorName,
      'videoConsult': instance.videoConsult,
      'doctorExperience': instance.doctorExperience,
      'appointmentAddress': instance.appointmentAddress,
      'medicalName': instance.medicalName,
      'mobileNumber': instance.mobileNumber,
      'doctorStatus': instance.doctorStatus,
      'doctorType': instance.doctorType,
      'consultFee': instance.consultFee,
      'mailId': instance.mailId,
      'booking': instance.booking?.map((e) => e.toJson()).toList(),
    };
