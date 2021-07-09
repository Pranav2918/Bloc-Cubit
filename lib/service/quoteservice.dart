import 'dart:convert';

import 'package:quotes/model/quotes.dart';
import 'package:http/http.dart' as http;

class DataService {
  final baseUrl = "type.fit";
  Future<List<QuoteModel>> getQuotes() async {
    try {
      final uri = Uri.https(baseUrl, 'api/quotes');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;

      final quotes = json.map((q) => QuoteModel.fromJson(q)).toList();
      return quotes;
    } on Exception catch (e) {
      print(e);
      throw (e);
    }
  }
}
