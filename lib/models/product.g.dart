// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      oid: json['oid'] as String?,
      productName: json['productName'] as String?,
      category: json['category'] as String?,
      rating: json['rating'] as String?,
      type: json['type'] as String?,
      favorite: json['favorite'] as String?,
      recomended: json['recomended'] as String?,
      flashSale: json['flashSale'] as String?,
      megasale: json['megasale'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      priceDiscount: json['priceDiscount'] as String?,
      discount: json['discount'] as String?,
      productColors: (json['productColors'] as List<dynamic>?)
          ?.map((e) => ProductColor.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSizes: (json['productSizes'] as List<dynamic>?)
          ?.map((e) => ProductSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageFile: json['imageFile'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'oid': instance.oid,
      'productName': instance.productName,
      'category': instance.category,
      'rating': instance.rating,
      'type': instance.type,
      'favorite': instance.favorite,
      'recomended': instance.recomended,
      'flashSale': instance.flashSale,
      'megasale': instance.megasale,
      'description': instance.description,
      'price': instance.price,
      'priceDiscount': instance.priceDiscount,
      'discount': instance.discount,
      'productColors': instance.productColors?.map((e) => e.toJson()).toList(),
      'productSizes': instance.productSizes?.map((e) => e.toJson()).toList(),
      'imageFile': instance.imageFile,
    };
