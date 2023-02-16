import 'Rating.dart';

class Model1 {
  Model1({
      this.id, 
      this.title, 
      this.price, 
      this.description, 
      this.category, 
      this.image, 
  //    this.rating
  });

  Model1.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
  //  rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  //Rating rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['description'] = description;
    map['category'] = category;
    map['image'] = image;
    // if (rating != null) {
    //   map['rating'] = rating.toJson();
    // }
    return map;
  }

}