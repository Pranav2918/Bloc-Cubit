import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/cubit/postCubit.dart';
import 'package:quotes/model/posts.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Random Quotes'),
        ),
        body: BlocBuilder<PostCubit, List<PostModel>>(
          builder: (context, post) {
            if (post.isEmpty) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: post.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Center(
                          child: Text(
                            post[index].userId.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      title: Text(post[index].title),
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}
