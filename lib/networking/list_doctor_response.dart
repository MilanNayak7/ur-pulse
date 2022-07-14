//
// import 'package:json_annotation/json_annotation.dart';
//
// import 'doctor.dart';
//
//
// part 'list_doctor_response.g.dart';
//
// @JsonSerializable(explicitToJson: true)
//
// class ListDoctorResponse{
//
// ListDoctorResponse({required this.doctors});
//
// @JsonKey(name:"posts")
// List<Doctor> doctors;
//
// factory ListDoctorResponse.fromJson(Map<String, dynamic> json) => _$ListDoctorResponseFromJson(json);
// Map<String, dynamic> toJson() => _$ListDoctorResponseToJson(this);
//
// }