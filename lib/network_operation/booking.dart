import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

@JsonSerializable(explicitToJson: true)
class Booking {
  Booking(
      {this.id, required this.index, required this.time, required this.status});

  @JsonKey(name: "_id")
  String? id;

  @JsonKey(required: true, name: "time")
  String time;

  @JsonKey(required: true, name: "index")
  int index;

  @JsonKey(required: true, name: "status")
  bool status;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
  Map<String, dynamic> toJson() => _$BookingToJson(this);
}
