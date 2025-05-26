// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      guideId: json['guideId'] as String,
      appointmentDate: DateTime.parse(json['appointmentDate'] as String),
      hospitalName: json['hospitalName'] as String,
      procedure: json['procedure'] as String,
      status: $enumDecodeNullable(_$ReservationStatusEnumMap, json['status']) ??
          ReservationStatus.pending,
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'guideId': instance.guideId,
      'appointmentDate': instance.appointmentDate.toIso8601String(),
      'hospitalName': instance.hospitalName,
      'procedure': instance.procedure,
      'status': _$ReservationStatusEnumMap[instance.status]!,
      'notes': instance.notes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.pending: 'pending',
  ReservationStatus.confirmed: 'confirmed',
  ReservationStatus.completed: 'completed',
  ReservationStatus.cancelled: 'cancelled',
};
