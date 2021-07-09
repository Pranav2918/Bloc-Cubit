class QuoteModel {
  final String text;

  QuoteModel({
    required this.text,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) =>
      QuoteModel(text: json['text']);
}
