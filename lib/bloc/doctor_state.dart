

import '../network_operation/doctor.dart';

abstract class DoctorItemState{
  DoctorItemState([List props = const []]);
}

class DoctorItemRequesting extends DoctorItemState{}
class DoctorItemLoading extends DoctorItemState{}

class DoctorItemCompleted extends DoctorItemState{
  late final List<Doctor> doctor;
  DoctorItemCompleted({required this.doctor});
}

class DoctorOnError extends DoctorItemState{}
