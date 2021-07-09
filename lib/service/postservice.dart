import 'dart:convert';

import 'package:quotes/model/posts.dart';
import 'package:http/http.dart' as http;

class DataService {
  final baseUrl = "jsonplaceholder.typicode.com";
  Future<List<PostModel>> fetchPosts() async {
    try {
      final uri = Uri.https(baseUrl, '/posts');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;

      final quotes = json.map((q) => PostModel.fromJson(q)).toList();
      return quotes;
    } on Exception catch (e) {
      print(e);
      throw (e);
    }
  }
}
