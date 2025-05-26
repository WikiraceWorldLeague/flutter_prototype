import 'package:freezed_annotation/freezed_annotation.dart';

part 'guide.freezed.dart';
part 'guide.g.dart';

@freezed
class Guide with _$Guide {
  const factory Guide({
    required String id,
    required String nickname,
    required String nationality,
    required String birthPlace,
    required String residenceCity,
    required String ageRange,
    required String realName,
    required DateTime birthDate,
    String? email,
    String? phoneNumber,
    @Default('https://images.unsplash.com/photo-1494790108377-be9c29b29330')
    String profileImageUrl,
    required List<String> languages,
    required List<String> specialties,
    required String introduction,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
    @Default(true) bool isAvailable,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool isVerified,
    @Default(30000) int pricePerHour,
  }) = _Guide;

  factory Guide.fromJson(Map<String, dynamic> json) => _$GuideFromJson(json);
}
