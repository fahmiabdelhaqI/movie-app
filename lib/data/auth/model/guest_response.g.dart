// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestResponse _$GuestResponseFromJson(Map<String, dynamic> json) {
  return GuestResponse(
    success: json['success'] as bool?,
    guestSessionId: json['guest_session_id'] as String?,
    expiresAt: json['expires_at'] as String?,
  );
}

Map<String, dynamic> _$GuestResponseToJson(GuestResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'guest_session_id': instance.guestSessionId,
      'expires_at': instance.expiresAt,
    };
