// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductReview _$ProductReviewFromJson(Map<String, dynamic> json) =>
    ProductReview(
      oid: json['oid'] as String?,
      rating: json['rating'] as String?,
      description: json['description'] as String?,
      profileImageFile: json['profileImageFile'] as String?,
      profileName: json['profileName'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductReviewToJson(ProductReview instance) =>
    <String, dynamic>{
      'oid': instance.oid,
      'rating': instance.rating,
      'description': instance.description,
      'profileImageFile': instance.profileImageFile,
      'profileName': instance.profileName,
      'products': instance.products?.map((e) => e.toJson()).toList(),
    };
