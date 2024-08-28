
/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/servies/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  NewsListView({super.key, required  articles});


  @override
  State<NewsListView> createState() => _NewsListViewState();
}
class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles=[];

  bool isLoading=true;
  @override
  void initState()  {
    super.initState();
    getAllNews();
  }
  Future<void> getAllNews() async{
    articles = await NewsService(Dio()).getGeneralNews();
    isLoading=false;
    setState((){});
  }

  @override
  Widget build(BuildContext context){

    NewsService(Dio()).getGeneralNews();

    return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) : SliverList(
        delegate:SliverChildBuilderDelegate(
            childCount: articles.length,
                (context,index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            }
        ) );
  }

}
 */
