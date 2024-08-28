import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService{

  final Dio dio;
  NewsService(this.dio);


  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
   try {
     var response = await dio.get(
         'https://newsapi.org/v2/top-headlines?apiKey=f7a1a8c8232b41d0880f9116a530d28d&category=$category&country=us');
     Map <String, dynamic> jsonData = response.data;
     List<dynamic> articles = jsonData['articles'];

     List <ArticleModel> articleList = [];

     for (var article in articles) {
       ArticleModel articleModel = ArticleModel.fromjson(article);
       articleList.add(articleModel);
     }
     return articleList;
   }on Exception catch(e){
     return [];
   }
  }
    }

