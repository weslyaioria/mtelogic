import 'package:json_annotation/json_annotation.dart';
import 'package:mtelogic/models/product_color.dart';
import 'package:mtelogic/models/product_size.dart';
part 'product.g.dart';

@JsonSerializable(explicitToJson: true)
class Product {
  String? oid;
  String? productName;
  String? category;
  String? rating;
  String? type;
  String? favorite;
  String? recomended;
  String? flashSale;
  String? megasale;
  String? description;
  String? price;
  String? priceDiscount;
  String? discount;
  final List<ProductColor>? productColors;
  final List<ProductSize>? productSizes;
  String? imageFile;

  Product({
    this.oid,
    this.productName,
    this.category,
    this.rating,
    this.type,
    this.favorite,
    this.recomended,
    this.flashSale,
    this.megasale,
    this.description,
    this.price,
    this.priceDiscount,
    this.discount,
    this.productColors,
    this.productSizes,
    this.imageFile,
  });

  factory Product.fromJson(Map<String, dynamic> data) =>
      _$ProductFromJson(data);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
