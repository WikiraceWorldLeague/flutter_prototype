import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

enum ReservationStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
}

@freezed
class Reservation with _$Reservation {
  const factory Reservation({
    required String id,
    required String userId,
    required String guideId,
    required DateTime appointmentDate,
    required String hospitalName,
    required String procedure,
    @Default(ReservationStatus.pending) ReservationStatus status,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}

