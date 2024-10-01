import 'package:sawari_pk/model/home_vehical_modal.dart';

import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServiecs.dart';
import '../res/app_url.dart';

class HomeRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<HomeVehicalModal> fetchVehicalLists() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.homeEndPoint);
      return response = HomeVehicalModal.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
