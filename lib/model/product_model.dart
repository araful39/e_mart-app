// lib/product.dart
class ProductModel {
  final String id;
  final String name;
  final double regularPrice;
  final double discountPrice;
  final String status;
  final String brand;
  final List<String> images;
  final double ratings;
  final int totalRatings;
  final String description;
  final List<String> colors;
  final List<String> sizes;
  final String category;

  ProductModel({
    required this.id,
    required this.name,
    required this.regularPrice,
    required this.discountPrice,
    required this.status,
    required this.brand,
    required this.images,
    required this.ratings,
    required this.totalRatings,
    required this.description,
    required this.colors,
    required this.sizes,
    required this.category,
  });
}