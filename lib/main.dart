import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/cubit/quoteCubit.dart';
import 'package:quotes/screen/quotesview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.black),
        home: BlocProvider<QuoteCubit>(
            child: Quotes(), create: (context) => QuoteCubit()..getQuotes()));
  }
}
