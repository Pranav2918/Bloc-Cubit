import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/model/quotes.dart';
import 'package:quotes/service/quoteservice.dart';

class QuoteCubit extends Cubit<List<QuoteModel>> {
  final _data = DataService();
  QuoteCubit() : super([]);

  //Method to access quotes
  Future<void> getQuotes() async => emit(await _data.getQuotes());
}
