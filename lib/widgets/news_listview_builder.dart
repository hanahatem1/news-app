import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/servies/news_service.dart';
import 'package:news_app/widgets/holder.dart';
import 'package:news_app/widgets/news_listview.dart';
import 'package:news_app/widgets/news_tile.dart';



class newsListViewBuilder extends StatefulWidget{
    const newsListViewBuilder({super.key,required this.category});

    final String category;
  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
   @override
   void initState(){
     super.initState();
    future= NewsService(Dio()).getGeneralNews(
        category: widget.category
    );
   }
   @override
  Widget build(BuildContext context) {

     return FutureBuilder<List<ArticleModel>>(
         future: future,
         builder: (context,snapshot){
        if(snapshot.hasData){
      return NewsListView(
       articles: snapshot.data!,
      );
     } else if(snapshot.hasError){
          return const SliverToBoxAdapter(
            child: Text("oops there was an error, try again"),
          );
        } else{
            return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
     });

   }
}

