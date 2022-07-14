// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_doctor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDoctorResponse _$ListDoctorResponseFromJson(Map<String, dynamic> json) =>
    ListDoctorResponse(
      doctors: (json['posts'] as List<dynamic>)
          .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListDoctorResponseToJson(ListDoctorResponse instance) =>
    <String, dynamic>{
      'posts': instance.doctors.map((e) => e.toJson()).toList(),
    };
