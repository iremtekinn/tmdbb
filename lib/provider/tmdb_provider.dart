import 'package:flutter/cupertino.dart';

import '../models/get_movie_model.dart';
import '../services/api_services.dart';

class TMDBProvider with ChangeNotifier{
  GetMovieModel getmovieResponse =GetMovieModel();
  bool isGetMovieResponseLoading = false;

  String? movie_id;
  int? index;

  getGetMovieData({required String movie_id,required int index})async{
    isGetMovieResponseLoading=true;
    getmovieResponse=(await getCurrentGetMovieData(movie_id:movie_id,))!;

    isGetMovieResponseLoading= false;
    notifyListeners();
  }
}