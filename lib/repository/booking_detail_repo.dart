import 'package:sawari_pk/model/booking_detail_modal.dart';
import 'package:http/http.dart' as http;

Future<BookingDetailModel?> fetchBookingDetails(String token) async {
  final response = await http.get(
    Uri.parse('http://13.50.255.37:8000/api/v1/api/invoices/'),
    headers: {
      'accept': 'application/json',
      'X-CSRFToken':
          '25QlZqOtFcXro6k2nEezT4Cs56d7ysQFDgMA7GNULziuzM3Fg65URxsmrwokHaeW'
              'authorization'
              'Token $token',
    },
  );

  if (response.statusCode == 200) {
    return bookingDetailModelFromJson(response.body);
  } else {
    // Handle any errors here
    print('Failed to load vehicle details');
    return null;
  }
}
