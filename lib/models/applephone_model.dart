// To parse this JSON data, do
//
//     final applePhones = applePhonesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ApplePhones> applePhonesFromJson(String str) => List<ApplePhones>.from(
    json.decode(str).map((x) => ApplePhones.fromJson(x)));

class ApplePhones {
  final String id;
  final String name;
  final String category;
  final List<String> imageUrl;
  final String oldPrice;
  final List<dynamic> sizes;
  final String price;
  final String description;
  final String title;

  ApplePhones({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.oldPrice,
    required this.sizes,
    required this.price,
    required this.description,
    required this.title,
  });

  factory ApplePhones.fromJson(Map<String, dynamic> json) => ApplePhones(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        imageUrl: List<String>.from(json["imageUrl"].map((x) => x)),
        oldPrice: json["oldPrice"],
        sizes: List<dynamic>.from(json["sizes"].map((x) => x)),
        price: json["price"],
        description: json["description"],
        title: json["title"],
      );
}
