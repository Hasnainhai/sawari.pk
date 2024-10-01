import 'package:flutter/material.dart';
import 'package:sawari_pk/model/home_vehical_modal.dart';

import '../data/response/api_response.dart';
import '../repository/home_repo.dart';

class HomeViewViewModel with ChangeNotifier {
  final _myRepo = HomeRepository();

  ApiResponse<HomeVehicalModal> moviesList = ApiResponse.loading();
  setMoviesList(ApiResponse<HomeVehicalModal> response) {
    moviesList = response;
    notifyListeners();
  }
  Future<void> fetchMoviesListApi() async {
    setMoviesList(ApiResponse.loading());
    _myRepo.fetchVehicalList().then((value) {
      setMoviesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setMoviesList(ApiResponse.error(error.toString()));
    });
  }
}
