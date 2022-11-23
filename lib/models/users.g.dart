// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      keyName: json['keyName'] as String?,
      email: json['email'] as String?,
      creationTime: json['creationTime'] as String?,
      lastSignInTime: json['lastSignInTime'] as String?,
      photoUrl: json['photoUrl'] as String?,
      status: json['status'] as String?,
      updatedTime: json['updatedTime'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'keyName': instance.keyName,
      'email': instance.email,
      'creationTime': instance.creationTime,
      'lastSignInTime': instance.lastSignInTime,
      'photoUrl': instance.photoUrl,
      'status': instance.status,
      'updatedTime': instance.updatedTime,
    };
