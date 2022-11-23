import 'package:json_annotation/json_annotation.dart';
part 'product_image.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductImage {
  String? oid;
  String? imageFile;

  ProductImage({
    this.oid,
    this.imageFile,
  });

  factory ProductImage.fromJson(Map<String, dynamic> data) =>
      _$ProductImageFromJson(data);
  Map<String, dynamic> toJson() => _$ProductImageToJson(this);
}
