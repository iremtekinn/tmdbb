import 'package:flutter/cupertino.dart';

import '../models/film1_response.dart';
import '../services/api_services.dart';

class Film1Provider with ChangeNotifier{
  Film1Response response =Film1Response();
  bool isLoading = false;

  getFilm1Data(context)async{
    isLoading=true;
    response=(await getCurrent1Data())!;

    isLoading= false;
    notifyListeners();
  }
}

