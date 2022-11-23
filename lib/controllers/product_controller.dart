import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mtelogic/getx/route_name.dart';
import 'package:mtelogic/models/product.dart';
import 'package:mtelogic/models/product_review.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var flashSales = <Product>[].obs;
  var megaSales = <Product>[].obs;
  var recomendeds = <Product>[].obs;
  var favorites = <Product>[].obs;
  var productReviews = <ProductReview>[].obs;
  TextEditingController searchText = TextEditingController(text: '');
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
    fetchFlashSale();
    megaFlashSale();
    fetchRecomended();
    favoriteProduct();
    fetchProductReviews();
  }

  Future<List<ProductReview>?> fetchProductReviews() async {
    final String response =
        await rootBundle.loadString('assets/data/product_review.json');
    List<ProductReview> productData = (json.decode(response) as List)
        .map((data) => ProductReview.fromJson(data))
        .toList();
    // productReviews.value = productData.where((i) => i.flashSale == "1").toList();
    productReviews.value = productData;
    return productReviews;
  }

  Future<List<Product>?> fetchFlashSale() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    List<Product> productData = (json.decode(response) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    flashSales.value = productData.where((i) => i.flashSale == "1").toList();
    // flashSales.value = productData;
    return flashSales;
  }

  Future<List<Product>?> fetchRecomended() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    List<Product> productData = (json.decode(response) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    recomendeds.value = productData.where((i) => i.recomended == "1").toList();
    // recomendeds.value = productData;
    return recomendeds;
  }

  Future<List<Product>?> megaFlashSale() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    List<Product> productData = (json.decode(response) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    megaSales.value = productData.where((i) => i.megasale == "1").toList();
    return flashSales;
  }

  Future<List<Product>?> fetchProducts() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    List<Product> productData = (json.decode(response) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    products.value = productData;
    return products;
  }

  Future<List<Product>?> favoriteProduct() async {
    final String response =
        await rootBundle.loadString('assets/data/product.json');
    List<Product> productData = (json.decode(response) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    favorites.value = productData.where((i) => i.favorite == "1").toList();
    // flashSales.value = productData;
    return favorites;
  }

  goToProductDetail(Product product) {
    Get.toNamed(RouteName.productDetail, arguments: [
      product,
    ]);
  }

  goToCart() {
    Get.toNamed(RouteName.cart);
  }

  goToReview() {
    Get.toNamed(RouteName.review);
  }

  goToSearchProduct() {
    Get.toNamed(RouteName.searchProduct);
  }

  goToNotification() {
    Get.toNamed(RouteName.notification);
  }

  goToFavorite() {
    Get.toNamed(RouteName.favorite);
  }

  @override
  void onClose() {
    searchText.dispose();
  }
}
