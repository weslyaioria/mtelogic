import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable(explicitToJson: true)
class Users {
  String? uid;
  String? name;
  String? keyName;
  String? email;
  String? creationTime;
  String? lastSignInTime;
  String? photoUrl;
  String? status;
  String? updatedTime;

  Users({
    this.uid,
    this.name,
    this.keyName,
    this.email,
    this.creationTime,
    this.lastSignInTime,
    this.photoUrl,
    this.status,
    this.updatedTime,
  });

  factory Users.fromJson(Map<String, dynamic> data) => _$UsersFromJson(data);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
