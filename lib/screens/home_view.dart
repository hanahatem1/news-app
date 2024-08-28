
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_listview.dart';
import 'package:news_app/widgets/news_listview_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class homeView extends StatelessWidget{
  homeView({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
            children:[
              Text("News",style: TextStyle(color: Colors.black),),
              Text("Cloud",style: TextStyle(color: Colors.orange),),
            ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:12),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: category_listView()),
            SliverToBoxAdapter(child: SizedBox(height:30)),
           newsListViewBuilder(
               category:"general"
           ),

          ],
        ),
      )
    );
  }
}