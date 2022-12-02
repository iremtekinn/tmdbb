import 'package:flutter/cupertino.dart';

import '../models/film2_response.dart';
import '../services/api_services.dart';

class Film2Provider with ChangeNotifier{
  Film2Response response =Film2Response();
  bool isLoading = false;

  getFilm2Data(context)async{
    isLoading=true;
    response=(await getCurrent2Data())!;

    isLoading= false;
    notifyListeners();
  }
}
