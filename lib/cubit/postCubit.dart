import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/model/posts.dart';

import 'package:quotes/service/postservice.dart';

class PostCubit extends Cubit<List<PostModel>> {
  final _dataService = DataService();

  PostCubit() : super([]);

  void getPosts() async => emit(await _dataService.fetchPosts());
}
