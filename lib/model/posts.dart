class PostModel {
  final String title;
  final String body;
  final int userId;
  PostModel({
    required this.title,
    required this.body,
    required this.userId,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
      body: json['body'], userId: json['id'], title: json['title']);
}
