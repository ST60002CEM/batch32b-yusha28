import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String? id;
  final String fullname;
  final String email;
  final String password;

  const AuthEntity({
    this.id,
    required this.fullname,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [id, fullname, email, password];
}
