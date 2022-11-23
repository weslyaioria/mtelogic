import 'package:json_annotation/json_annotation.dart';
part 'ibase.g.dart';

@JsonSerializable(explicitToJson: true)
class IBase {
  String? resultCode, oid, message, httpStatus;
  int? total;
  List<dynamic>? data;

  IBase(
      {this.oid,
      this.message,
      this.resultCode,
      this.total,
      this.httpStatus,
      this.data});

  factory IBase.fromJson(Map<String, dynamic> data) => _$IBaseFromJson(data);
  Map<String, dynamic> toJson() => _$IBaseToJson(this);
}
