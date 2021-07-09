import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/cubit/postCubit.dart';
import 'package:quotes/screen/postviews.dart';

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
        home: BlocProvider<PostCubit>(
            child: Posts(), create: (context) => PostCubit()..getPosts()));
  }
}
