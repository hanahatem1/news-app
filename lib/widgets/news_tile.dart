import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key,required this.articleModel});

 final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.network(articleModel.image??"assests/download (3).jpg",

              height: 200,width: double.infinity,fit: BoxFit.cover)
        ),
        SizedBox(height: 12),
        Text(articleModel.title,overflow: TextOverflow.ellipsis,maxLines: 2,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
        Text(articleModel.subTitle??"",
          overflow: TextOverflow.ellipsis,
           maxLines: 2,
          style: TextStyle(color: Colors.grey,fontSize: 14),
        )
      ],
    );
  }
}