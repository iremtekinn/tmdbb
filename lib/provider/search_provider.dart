import 'package:flutter/material.dart';
import 'package:tmdbb/models/search_model.dart';

import '../services/api_services.dart';

class SearchProvider extends ChangeNotifier {
  SearchModel? searchlist = SearchModel();
  String query = "Baba";
  bool isSearchLoaded = false;

  getSearchData() async {
    isSearchLoaded = false;
    searchlist = (await getSearchListService(query));
    isSearchLoaded = true;
    notifyListeners();
  }

  getQuery(String query3) {
    query = query3;
    getSearchData();
    notifyListeners();
  }
}