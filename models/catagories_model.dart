// lib/categories_model.dart

class CategoriesModel {
  int? id;
  String? name;
  String? image;

  CategoriesModel({this.id, this.name, this.image});

  // From JSON
  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  // To JSON (for sending data, e.g., API calls)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }
}



// class CatagoriesModel {
//   int? id;
//   String? name;
//   String? image;

//   CatagoriesModel({this.id, this.name, this.image});

//   CatagoriesModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//   }

//   toJson() {}
// }


//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     data['id'] = id;
//     data['title'] = title;
//     data['price'] = price;
//     data['description'] = description;
//     if (category != null) {
//       data['category'] = category!.toJson();
//     }
//     data['images'] = images;
//     return data;
//   }
// }