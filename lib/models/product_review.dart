import 'package:json_annotation/json_annotation.dart';
import 'package:mtelogic/models/product_image.dart';
part 'product_review.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductReview {
  String? oid;
  String? rating;
  String? description;
  String? profileImageFile;
  String? profileName;
  final List<ProductImage>? products;
  ProductReview(
      {this.oid,
      this.rating,
      this.description,
      this.profileImageFile,
      this.profileName,
      this.products});

  factory ProductReview.fromJson(Map<String, dynamic> data) =>
      _$ProductReviewFromJson(data);
  Map<String, dynamic> toJson() => _$ProductReviewToJson(this);
}
