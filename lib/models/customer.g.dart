// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      json['personCode'] as String?,
      json['firstName'] as String?,
      json['midleName'] as String?,
      json['lastName'] as String?,
      json['placeOfBirth'] as String?,
      json['dateOfBirth'] as String?,
      json['gender'] as bool?,
      json['address'] as String?,
      json['postalCode'] as String?,
      json['contact'] as String?,
      json['contactNumber'] as String?,
      json['billingAddress'] as String?,
      json['billingPostalCode'] as String?,
      json['billingContact'] as String?,
      json['billingContactNumber'] as String?,
      json['homePhone'] as String?,
      json['mobilePhone'] as String?,
      json['workPhone'] as String?,
      json['joinDate'] as String?,
      json['comfirmDate'] as String?,
      json['terminationDate'] as String?,
      json['email'] as String?,
      json['workEmail'] as String?,
      json['rating'] as int?,
      json['tempBlackList'] as bool?,
      json['fullBlackList'] as bool?,
      json['active'] as bool?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'personCode': instance.personCode,
      'firstName': instance.firstName,
      'midleName': instance.midleName,
      'lastName': instance.lastName,
      'placeOfBirth': instance.placeOfBirth,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'contact': instance.contact,
      'contactNumber': instance.contactNumber,
      'billingAddress': instance.billingAddress,
      'billingPostalCode': instance.billingPostalCode,
      'billingContact': instance.billingContact,
      'billingContactNumber': instance.billingContactNumber,
      'homePhone': instance.homePhone,
      'mobilePhone': instance.mobilePhone,
      'workPhone': instance.workPhone,
      'joinDate': instance.joinDate,
      'comfirmDate': instance.comfirmDate,
      'terminationDate': instance.terminationDate,
      'email': instance.email,
      'workEmail': instance.workEmail,
      'rating': instance.rating,
      'tempBlackList': instance.tempBlackList,
      'fullBlackList': instance.fullBlackList,
      'active': instance.active,
    };
