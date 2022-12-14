import 'package:dio/dio.dart';

import '../models/film1_response.dart';
import '../models/film2_response.dart';
import '../models/get_movie_model.dart';
import '../models/get_movie_model2.dart';
import '../models/get_movie_model3.dart';
//import '../models/get_movie_model4.dart';
import '../models/search_model.dart';
 
//https://developers.themoviedb.org/3/movies/get-popular-movies
//pageone 1.film listesi
final Dio _dio1 = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/movie/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<Film1Response?> getCurrent1Data() async {
  Film1Response filmResponse;
  try {
    final response = await _dio1.get(
        "popular?api_key=9c6ac40cb2e7c6e33a57a0e49d6bee75&language=en-US&page=1");
    filmResponse = Film1Response.fromJson(response.data);
    print(response.data);
    return filmResponse;
  } catch (e) {}
}

//https://developers.themoviedb.org/3/tv/get-popular-tv-shows
//pageone 2.film listesi
final Dio _dio2 = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/tv/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<Film2Response?> getCurrent2Data() async {
  Film2Response filmResponse;
  try {
    final response = await _dio2.get(
        "popular?api_key=90f4e503d2ae67affe23a46f2a5bfb2f&language=en-US&page=1");
    filmResponse = Film2Response.fromJson(response.data);
    print(response.data);
    return filmResponse;
  } catch (e) {}
}


//https://developers.themoviedb.org/3/movies/get-movie-details
//1.sayfadaki 1.listview deki resimlerden birine tıklayınca 2.sayfaya geçişi sağlıyor
final Dio _dio3 = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/movie/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<GetMovieModel?> getCurrentGetMovieData({required String? movie_id}) async {
  GetMovieModel getMovieResponse;
  try {
    final response = await _dio3.get(
        "$movie_id?api_key=90f4e503d2ae67affe23a46f2a5bfb2f");
    getMovieResponse = GetMovieModel.fromJson(response.data);
    print(response.data);
    return getMovieResponse;
  } catch (e) {}
}

//https://developers.themoviedb.org/3/movies/get-movie-credits
//2.sayfadki oyucu listesi
final Dio _dio4 = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/movie/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<GetMovieModel2?> getCurrentGetMovieData2({required String? movie_id2}) async {
  GetMovieModel2 getMovieResponse2;
  try {
    final response = await _dio4.get(
        "$movie_id2/credits?api_key=90f4e503d2ae67affe23a46f2a5bfb2f&language=en-US");
    getMovieResponse2 = GetMovieModel2.fromJson(response.data);
    print(response.data);
    return getMovieResponse2;
  } catch (e) {}
}


//https://developers.themoviedb.org/3/movies/get-movie-recommendations
//2.sayfa film tavsiye 
final Dio _dio5 = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/movie/",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));
Future<GetMovieModel3?> getCurrentGetMovieData3({required String? movie_id3}) async {
  GetMovieModel3 getMovieResponse3;
  try {
    final response = await _dio5.get(
        "$movie_id3/recommendations?api_key=90f4e503d2ae67affe23a46f2a5bfb2f&language=en-US&page=1");
    getMovieResponse3 = GetMovieModel3.fromJson(response.data);
    print(response.data);
    return getMovieResponse3;
  } catch (e) {}
}





//https://developers.themoviedb.org/3/search/search-movies
//aşağıdaki api url ini oluşturmak için api key ini girdim sonra query kısmına herhangi bir  yazı ya da rakam yazdım (10)sonra bunu koda dahil ederken
//10 kısmı sürekli değişeceği için başına '$' işareti koydum ve 10 u silip 'query' adında değişkenimi yazdım.  
//include_adult= true ?
// https://api.themoviedb.org/3/search/movie?api_key=1b258cebbacdf3b382888ffa108d4084&language=en-US&query=10&page=1&include_adult=true 
//movie search
final Dio _dio7 = Dio(BaseOptions(
  baseUrl: "https://api.themoviedb.org/3/search/movie",
));
Future<SearchModel?> getSearchListService(String query) async {
  SearchModel searchlist = SearchModel();



  try {
    final response = await _dio7.get(
        "?api_key=1b258cebbacdf3b382888ffa108d4084&language=en-US&query=$query&page=1&include_adult=true");
    searchlist = SearchModel.fromJson(response.data);
    print(response.data);
    // Çalışıp çalışmadığını kontrol ediliyor
    if (response.statusCode == 200) {
      print("Search page çalışıyor");
    } else {
      print("Search page çalışmıyor.");
    }
    return searchlist;
  } catch (e) {
    // print(e);
  }

  return null;
}

