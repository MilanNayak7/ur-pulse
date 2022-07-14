// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['time', 'index', 'status'],
  );
  return Booking(
    id: json['_id'] as String?,
    index: json['index'] as int,
    time: json['time'] as String,
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      '_id': instance.id,
      'time': instance.time,
      'index': instance.index,
      'status': instance.status,
    };
