import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String nickname,
    required String nationality,
    required String residenceCity,
    required String realName,
    required String passportEnglishName,
    required DateTime birthDate,
    String? email,
    String? phoneNumber,
    String? profileImageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool isVerified,
    @Default('ko') String preferredLanguage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

