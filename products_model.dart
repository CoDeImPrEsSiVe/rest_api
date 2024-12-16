import 'package:rest_api/models/catagories_model.dart';

class ProductsModel {
  int? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  CategoriesModel? category;

  ProductsModel(
      {
      this.id,
      this.title,
      this.price,
      this.description,
      this.images,
      this.category});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    images = json['images'].cast<String>();
    category = json['category'] != null
        ? CategoriesModel.fromJson(json['category'])
        : images = json['images'].cast<String>();
  }
  static List<ProductsModel> productsFromSnapshot(List productSnaphot) {
    // ignore: avoid_print
    print('data %{productsFromSnapshot[0]}');
    return productSnaphot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }
}
