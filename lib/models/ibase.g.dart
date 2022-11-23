// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IBase _$IBaseFromJson(Map<String, dynamic> json) => IBase(
      oid: json['oid'] as String?,
      message: json['message'] as String?,
      resultCode: json['resultCode'] as String?,
      httpStatus: json['http_status'] as String?,
      total: json['total'] as int?,
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$IBaseToJson(IBase instance) => <String, dynamic>{
      'resultCode': instance.resultCode,
      'oid': instance.oid,
      'http_status': instance.httpStatus,
      'message': instance.message,
      'total': instance.total,
      'data': instance.data,
    };
