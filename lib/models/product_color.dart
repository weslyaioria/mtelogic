import 'package:json_annotation/json_annotation.dart';
part 'product_color.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductColor {
  String? oid;
  String? colorName;

  ProductColor({
    this.oid,
    this.colorName,
  });

  factory ProductColor.fromJson(Map<String, dynamic> data) =>
      _$ProductColorFromJson(data);
  Map<String, dynamic> toJson() => _$ProductColorToJson(this);
}
