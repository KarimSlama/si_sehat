import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';


@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
