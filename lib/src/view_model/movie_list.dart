import 'package:flutter/cupertino.dart';
import '../model/search.dart';
import '../service/api_service.dart';

class MovieListViewModel extends ChangeNotifier {

  ApiService apiService = new ApiService();

  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyword) async {
    final results = await apiService.getSearch(keyword);
    print('results : $results');
    this.movies = results.map((e) => MovieViewModel(movie: e)).toList();
    print(this.movies);
    notifyListeners();
  }

}

class MovieViewModel {

  final Search movie;

  MovieViewModel({this.movie});

  String get title {
    return this.movie.title;
  }

  String get poster {
    return this.movie.poster;
  }

}