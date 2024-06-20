import 'package:json_annotation/json_annotation.dart';
import 'package:workwise/features/authentication/domain/entity/auth_entity.dart';

part 'get_current_user_dto.g.dart';

@JsonSerializable()
class GetCurrentUserDto {
  @JsonKey(name: "_id")
  final String id;
  final String fullname;
  final String email;
  final String password;

  GetCurrentUserDto({
    required this.id,
    required this.fullname,
    required this.email,
    required this.password,
  });

  AuthEntity toEntity() {
    return AuthEntity(id: id, fullname: fullname, email: email, password: '');
  }

  factory GetCurrentUserDto.fromJson(Map<String, dynamic> json) =>
      _$GetCurrentUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GetCurrentUserDtoToJson(this);
}
