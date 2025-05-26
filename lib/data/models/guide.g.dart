// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuideImpl _$$GuideImplFromJson(Map<String, dynamic> json) => _$GuideImpl(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      nationality: json['nationality'] as String,
      birthPlace: json['birthPlace'] as String,
      residenceCity: json['residenceCity'] as String,
      ageRange: json['ageRange'] as String,
      realName: json['realName'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      profileImageUrl: json['profileImageUrl'] as String? ??
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
      languages:
          (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
      specialties: (json['specialties'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      introduction: json['introduction'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
      isAvailable: json['isAvailable'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isVerified: json['isVerified'] as bool? ?? false,
      pricePerHour: (json['pricePerHour'] as num?)?.toInt() ?? 30000,
    );

Map<String, dynamic> _$$GuideImplToJson(_$GuideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'nationality': instance.nationality,
      'birthPlace': instance.birthPlace,
      'residenceCity': instance.residenceCity,
      'ageRange': instance.ageRange,
      'realName': instance.realName,
      'birthDate': instance.birthDate.toIso8601String(),
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profileImageUrl': instance.profileImageUrl,
      'languages': instance.languages,
      'specialties': instance.specialties,
      'introduction': instance.introduction,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'isAvailable': instance.isAvailable,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isVerified': instance.isVerified,
      'pricePerHour': instance.pricePerHour,
    };
