import 'package:json_annotation/json_annotation.dart';
part 'product_size.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductSize {
  String? oid;
  String? sizeName;

  ProductSize({
    this.oid,
    this.sizeName,
  });

  factory ProductSize.fromJson(Map<String, dynamic> data) =>
      _$ProductSizeFromJson(data);
  Map<String, dynamic> toJson() => _$ProductSizeToJson(this);
}
