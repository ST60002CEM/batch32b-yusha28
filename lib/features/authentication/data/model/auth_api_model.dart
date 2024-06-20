
import 'package:json_annotation/json_annotation.dart';
import 'package:workwise/features/authentication/domain/entity/auth_entity.dart';

part 'auth_api_model.g.dart';

@JsonSerializable()
class AuthApiModel{
  @JsonKey(name: '_id')
  final String id;
  final String fullname;
  final String email;
  final String? password;

  AuthApiModel({
    required this.id,
    required this.fullname,
    required this.password,
    required this.email,
});

  factory AuthApiModel.fromJson(Map<String, dynamic> json) =>
      _$AuthApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthApiModelToJson(this);

  AuthEntity toEntity(){
    return AuthEntity(
        id: id,
        fullname: fullname,
        email: email,
        password: password ?? ''
    );
  }
}