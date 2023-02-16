import 'dart:io';

class Molil {
  int? id;
  String? title;
  int? price;
  String? description;
  String? category;
  File? image;

  Molil({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  factory Molil.fromJson({required json}) {
    return Molil(
      id: json['0']['id'],
      title: json['title'],
      price: json['0']['price'],
      description: json['0']['description'],
      category: json['0']['category'],
      image: json['0']['image'],
    );
  }
}
