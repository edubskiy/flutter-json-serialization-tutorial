import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';


@freezed
class User with _$User {
  const User._();
  
  const factory User({ 
    required String email, 
    @JsonKey(name: 'number') required int phoneNumber 
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}