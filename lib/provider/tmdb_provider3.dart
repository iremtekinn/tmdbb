import 'package:flutter/cupertino.dart';

import '../models/get_movie_model3.dart';
import '../services/api_services.dart';

class TMDBProvider3 with ChangeNotifier{
  GetMovieModel3 getmovieResponse3 =GetMovieModel3();
  bool isGetMovieResponseLoading3 = false;

  String? movie_id3;
  int? index3;

  getGetMovieData3({required String movie_id3,required int index3})async{
    isGetMovieResponseLoading3=true;
    getmovieResponse3=(await getCurrentGetMovieData3(movie_id3:movie_id3,))!;

    isGetMovieResponseLoading3= false;
    notifyListeners();
  }
}