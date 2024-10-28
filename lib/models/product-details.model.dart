import 'category.model.dart';

class ProductDetailsModel {
  late String id;
  late String title;
  late String tag;
  late double price;
  late String description;
  late String brand;
  late List<String> images;
  late CategoryModel category;

  ProductDetailsModel(
      {required this.id,
      required this.title,
      required this.tag,
      required this.price,
      required this.description,
      required this.brand,
      required this.images,
      required this.category});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    tag = json['tag'];
    price = json['price'];
    description = json['description'];
    brand = json['brand'];
    images = json['images'].cast<String>();
    category = (json['category'] != null
        ? CategoryModel.fromJson(json['category'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['tag'] = tag;
    data['price'] = price;
    data['description'] = description;
    data['brand'] = brand;
    data['images'] = images;
    if (category != null) {
      data['category'] = category.toJson();
    }
    return data;
  }
}
