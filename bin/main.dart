
import 'dart:convert';

import 'package:http/http.dart';
import 'package:posts/tags.dart';

import 'tags_model.dart';


Future<void> main() async{
 String urPosts = "https://dummyjson.com/posts";

 Uri uri = Uri.parse(urPosts);

 Response response = await get(uri);

  PostsModel postsModel = PostsModel.fromJson(jsonDecode(response.body));
  print(postsModel.posts);
}
