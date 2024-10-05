import '../model/vehical_detail_modal.dart';
import 'package:http/http.dart' as http;

Future<VehicleDetailModel?> fetchVehicleDetails(int vehicleId) async {
  final response = await http.get(
    Uri.parse('http://13.50.255.37:8000/api/v1/api/cars/$vehicleId/'),
    headers: {
      'accept': 'application/json',
      'X-CSRFToken':
          'J7PpahvKLkB91wn3bVWZx9ij6GYqAUASkiLEixubRHWccc6G4nNkvC8ds69DJCY9'
    },
  );

  if (response.statusCode == 200) {
    return vehicleDetailModelFromJson(response.body);
  } else {
    // Handle any errors here
    print('Failed to load vehicle details');
    return null;
  }
}
