import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/cubit/quoteCubit.dart';
import 'package:quotes/model/quotes.dart';

class Quotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Random Quotes'),
        ),
        body: BlocBuilder<QuoteCubit, List<QuoteModel>>(
          builder: (context, quote) {
            if (quote.isEmpty) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      color: Colors.red,
                      elevation: 5.0,
                      child: ListTile(
                        title: Text(
                          quote[index].text,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                );
              });
            }
          },
        ));
  }
}
