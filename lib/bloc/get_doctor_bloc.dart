import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ur_pulse_modified/bloc/doctor_repository.dart';
import 'package:ur_pulse_modified/bloc/doctor_state.dart';
import 'package:ur_pulse_modified/bloc/fetch_doctor_event.dart';
import 'package:ur_pulse_modified/network_operation/doctor.dart';
import '../network_operation/dio_response.dart';

class DoctorBloc extends Bloc<DoctorFetchEvent,DoctorItemState>{
late final DoctorRepository doctorRepository;

     DoctorBloc(super.initialState);
 //DoctorBloc({required this.doctorRepository}):assert(doctorRepository !=null), super()
@override
DoctorItemState get iniState => DoctorItemRequesting();


@override
  Stream<DoctorItemState>mapEventToState(DoctorFetchEvent event)async* {
  if(event is FetchDoctor){
    yield DoctorItemLoading();
    try{
      final List<Doctor> doctor = await doctorRepository.fetchAllDoctor();
      yield DoctorItemCompleted(doctor:doctor);
    }catch(e){
      print(e);
      yield DoctorOnError();
  }
  }
}
}

