import 'package:dio/dio.dart';

import '../models/film1_response.dart';
import '../models/film2_response.dart';
 
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