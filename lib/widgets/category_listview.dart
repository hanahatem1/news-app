
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import '../models/category_model.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class category_listView extends StatelessWidget{
  category_listView({super.key});


final List<CtegoryModel> categories =[
  CtegoryModel(image: "assests/bis.jpg", categoryName: "Business"),
  CtegoryModel(image: "assests/science1.jpg", categoryName: "Science"),
  CtegoryModel(image: "assests/entern.jpg", categoryName: "Entertainment"),
  CtegoryModel(image: "assests/ssport.jpg", categoryName: "Sports"),
  CtegoryModel(image: "assests/tech.jpg", categoryName: "Technology"),
  CtegoryModel(image: "assests/general.jpg", categoryName: "General")

];
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context ,index)
          {
            return categoryCard(
              category: categories[index],
            );
          }
      ),
    );
  }
}