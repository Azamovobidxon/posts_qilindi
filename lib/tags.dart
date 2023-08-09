class Posts {
  int id;
  String title;
  String body;
  int userId;
  List tags;
  Posts({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
  });

  factory Posts.fromJson(Map<String, Object?> json) => Posts(
        tags: json["tags"] as List,
        userId: json["userId"] as int,
        id: json["id"] as int,
        title: json ["title"] as String,
        body: json["body"] as String,
      );

  @override
  String toString(){
    return "$runtimeType(id:$id,title:$title,body:$body,userId:$userId,tags:$tags)";
  }
}
