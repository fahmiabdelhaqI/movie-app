import 'package:json_annotation/json_annotation.dart';

part 'guest_response.g.dart';

@JsonSerializable()
class GuestResponse {
  @JsonKey(name: 'success')
  final bool? success;

  @JsonKey(name: 'guest_session_id')
  final String? guestSessionId;

  @JsonKey(name: 'expires_at')
  final String? expiresAt;

  GuestResponse({
    this.success,
    this.guestSessionId,
    this.expiresAt,
  });

  factory GuestResponse.fromJson(Map<String, dynamic> json) =>
      _$GuestResponseFromJson(json);
}
