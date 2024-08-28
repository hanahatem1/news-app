
import 'dart:convert';

class ArticleModel{
   final String? image;
   final String title;
   final String? subTitle;

  ArticleModel({required this.image,required this.title,required this.subTitle});

  factory ArticleModel.fromjson(Map<String,dynamic> json){
    return ArticleModel(image: json['urlToImage'], title: json['title'], subTitle: json['description']);
   }
}