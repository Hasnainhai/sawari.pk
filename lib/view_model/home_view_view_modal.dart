import 'package:flutter/material.dart';
import 'package:sawari_pk/model/home_vehical_modal.dart';
import '../data/response/api_response.dart';
import '../repository/home_repo.dart';

class HomeViewViewModel with ChangeNotifier {
  final _myRepo = HomeRepository();

  ApiResponse<HomeVehicalModal> vehicalsList = ApiResponse.loading();
  setVehicalsList(ApiResponse<HomeVehicalModal> response) {
    vehicalsList = response;
    notifyListeners();
  }
  Future<void> fetchVehicalList() async {
    setVehicalsList(ApiResponse.loading());
    _myRepo.fetchVehicalLists().then((value) {
      setVehicalsList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setVehicalsList(ApiResponse.error(error.toString()));
    });
  }
}
