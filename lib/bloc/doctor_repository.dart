
import 'package:ur_pulse_modified/network_operation/doctor.dart';
import '../network_operation/dio_response.dart';

class DoctorRepository{
  late final DoctorDioClient doctorDioClient;

 // DoctorRepository({required this.doctorDioClient});

  Future<List<Doctor>> fetchAllDoctor()async{
    return await doctorDioClient.getApprovedDiseasesDoctor();
  }
}