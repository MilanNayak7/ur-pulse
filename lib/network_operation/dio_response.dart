import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:ur_pulse_modified/network_operation/doctor.dart';
import 'package:ur_pulse_modified/network_operation/list_doctor_response.dart';

class DoctorDioClient {
  final Dio _dio = Dio();
  final _baseUrl = 'http://10.0.2.2:8080/feed';

   List<Doctor> allDoctor=[];

  getDoctor() async {
    Response getDoctorData =
    await _dio.get(_baseUrl + '/post/62bde9750ccda9ccbd7d547f');
    //Response doctorData = await _dio.get(_baseUrl+'/posts');
  }

  getAllDoctor() async {
    Response response = await _dio.get(_baseUrl + '/all_doctors');
    ListDoctorResponse listDoctorResponse;
    List<Doctor> doctor;
    listDoctorResponse = ListDoctorResponse.fromJson(response.data);
    doctor = listDoctorResponse.doctors;
    print(doctor[0].doctorType);
  }

  getNonApprovedDoctor() async {
    Response response = await _dio.get(_baseUrl + '/get_non_approved_doctor');
    ListDoctorResponse listDoctorResponse;
    List<Doctor> doctor;
    listDoctorResponse = ListDoctorResponse.fromJson(response.data);
    doctor = listDoctorResponse.doctors;
  }

  getApprovedDoctor() async {
    Response response = await _dio.get(_baseUrl + '/get_non_approved_doctor');
    ListDoctorResponse listDoctorResponse;
    List<Doctor> doctor;
    listDoctorResponse = ListDoctorResponse.fromJson(response.data);
    doctor = listDoctorResponse.doctors;
  }

 // Future<List<Doctor>> getApprovedDiseasesDoctor() async {
 //    Response response = await _dio.get(_baseUrl + '/all_doctors');
 //    ListDoctorResponse listDoctorResponse;
 //    List<Doctor> allDoctor;
 //    listDoctorResponse = ListDoctorResponse.fromJson(response.data);
 //    List<Doctor> doctor = listDoctorResponse.doctors;
 //    List<Doctor> _doctor = doctor
 //        .where((element) =>
 //            (element.doctorType!.contains("general physician")) &&
 //            (element.doctorStatus == true))
 //        .toList();
 //    allDoctor = _doctor;
 //    return allDoctor;
 //  }

  Future<List<Doctor>> getApprovedDiseasesDoctor() async {
    Response response = await _dio.get(_baseUrl + '/all_doctors');
    ListDoctorResponse listDoctorResponse;
    listDoctorResponse = ListDoctorResponse.fromJson(response.data);
    List<Doctor> doctor = listDoctorResponse.doctors;
    List<Doctor> _doctor = doctor
        .where((element) =>
    (element.doctorType!.contains("general physician")) &&
        (element.doctorStatus == true))
        .toList();
    allDoctor = _doctor;
    return allDoctor;
  }


// postDoctor(Data postDoctorData)async{
//      try{
//        Response response = await _dio.post('$_baseUrl/post',data:postDoctorData.toJson());
//        return response;
//      }catch(e){
//        print(e);
//        return null;
//      }
//
// }
}
