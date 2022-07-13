import 'package:json_annotation/json_annotation.dart';

import 'doctor.dart';

part'single_doctor_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SingleDoctorResponse{
SingleDoctorResponse({required this.doctor});

@JsonKey(name:"posts")
Doctor doctor;

factory SingleDoctorResponse.fromJson(Map<String, dynamic> json) => _$SingleDoctorResponseFromJson(json);
Map<String, dynamic> toJson() => _$SingleDoctorResponseToJson(this);
}