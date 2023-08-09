import 'package:posts/tags.dart';

class PostsModel {
  int total;
  int skip;
  int limit;
  List<Posts> posts;
  PostsModel({
    required this.total,
    required this.skip,
    required this.limit,
    required this.posts,
  });

  factory PostsModel.fromJson(Map<String, Object?> json) => PostsModel(
        total: json["total"] as int,
        skip: json["skip"] as int,
        limit: json["limit"]  as int,
        posts: (json["posts"] as List).map((e) => Posts.fromJson(e)).toList()
      );
}
