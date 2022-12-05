import 'package:flutter/cupertino.dart';

import '../models/get_movie_model2.dart';
import '../services/api_services.dart';

class TMDBProvider2 with ChangeNotifier{
  GetMovieModel2 getmovieResponse2 =GetMovieModel2();
  bool isGetMovieResponseLoading2 = false;

  String? movie_id2;
  int? index2;

  getGetMovieData2({required String movie_id2,required int index2})async{
    isGetMovieResponseLoading2=true;
    getmovieResponse2=(await getCurrentGetMovieData2(movie_id2:movie_id2,))!;

    isGetMovieResponseLoading2= false;
    notifyListeners();
  }
}