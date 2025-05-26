// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      nationality: json['nationality'] as String,
      residenceCity: json['residenceCity'] as String,
      realName: json['realName'] as String,
      passportEnglishName: json['passportEnglishName'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isVerified: json['isVerified'] as bool? ?? false,
      preferredLanguage: json['preferredLanguage'] as String? ?? 'ko',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'nationality': instance.nationality,
      'residenceCity': instance.residenceCity,
      'realName': instance.realName,
      'passportEnglishName': instance.passportEnglishName,
      'birthDate': instance.birthDate.toIso8601String(),
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profileImageUrl': instance.profileImageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isVerified': instance.isVerified,
      'preferredLanguage': instance.preferredLanguage,
    };
