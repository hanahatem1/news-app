import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/category_view.dart';

class categoryCard extends StatelessWidget{
 const categoryCard({super.key,required this.category});

 final CtegoryModel category;
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return  CatgoryView(
                category:category.categoryName
            );
          })
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height:85,
          width:160,
          decoration: BoxDecoration(
              image:  DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage(category.image)
              ),
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
              child: Text(category.categoryName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}