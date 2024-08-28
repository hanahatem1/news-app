import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_listview_builder.dart';

class CatgoryView extends StatelessWidget {
  CatgoryView({super.key,required this.category});

  final String category;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(
              category:category
          ),
        ],
      )
    );
  }
}