
import 'dart:convert';


List<CategoryModel> categoriesFromJson(dynamic str) => List<CategoryModel>.from(
    (str).map(
          (x)=>CategoryModel.fromJson(x),
    ));

//String categoryToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel{

  final String id;
  final String nem;

  CategoryModel({required this.id, required this.nem, });


  factory CategoryModel.fromJson(Map<String,dynamic> json){

    return CategoryModel(
        id:json['category_id'],
        nem:json['category_name'],
    );
  }


  factory CategoryModel.toJson(Map<String,dynamic> json){

    return CategoryModel(
        id:json['category_id'],
        nem:json['category_name'],
    );
  }


  Map<String,dynamic> toMap(){

    return {
      "category_id":id,
      "category_name":nem,
    };
  }


  Map<String,dynamic> fromMap(){

    return {
      "category_id":id,
      "category_name":nem,
    };
  }
}