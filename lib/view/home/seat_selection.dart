import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/loading_manager.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/view/home/booking_detail_view.dart';
import 'package:sawari_pk/view/home/widgets/seat_container.dart';
import '../../model/home_vehical_modal.dart';
import '../../model/vehical_detail_modal.dart';
import '../../repository/vehicle_detail_repo.dart';
import '../../utils/routes/utils.dart';
import '../../view_model/user_view_model.dart';

class SelectSeatView extends StatefulWidget {
  const SelectSeatView({super.key, required this.popularSchedule});
  final PopularSchedule popularSchedule;

  @override
  State<SelectSeatView> createState() => _SelectSeatViewState();
}

class _SelectSeatViewState extends State<SelectSeatView> {
  bool _isLoading = false;
  // Function to call the API
  Future<void> checkoutSession(BuildContext context, String seatNumber) async {
    setState(() {
      _isLoading = true;
    });
    Map<String, dynamic> requestData = {
      "fare_rates": widget.popularSchedule.vehicle.fareRates,
      "seat_number": int.parse(seatNumber),
      "schedule_id": widget.popularSchedule.id,
    };
    try {
      setState(() {
        _isLoading = true;
      });
      final userPreference = Provider.of<UserViewModel>(context, listen: false);
      userPreference.getUser().then((userModel) async {
        final token = userModel.token;
        final extractedToken =
            token.replaceAll('{key: ', '').replaceAll('}', '');
        print('User token: $token');
        Map<String, String> headers = {
          'accept': 'application/json',
          'Content-Type': 'application/json',
          'X-CSRFToken':
              'SEN1qEu3q8W07ioVFDJ7FyEuvoxUQK8Wqv9KrxEyrSOEYdZGd1ZlgPS6Zw75ihlR',
          'authorization': 'Token $extractedToken',
        };

        // Make the API request
        http.Response apiResponse = await http.post(
          Uri.parse('http://13.50.255.37:8000/api/v1/create-checkout-session/'),
          headers: headers,
          body: jsonEncode(requestData),
        );

        if (apiResponse.statusCode == 201) {
          setState(() {
            _isLoading = false;
          });
          Utils.toastMessage('Checkout Successful');
          debugPrint(
              '.........Data : ${apiResponse.body}...........................');
          final responseData = jsonDecode(apiResponse.body);
          final String id = responseData['id'];
          final int userId = responseData['user_id'];
          final String url = responseData['url'];
          print('Id: $id  : url: $url');
          // Handle success and navigate to the desired screen
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => BookingDetailView(
                      id: id,
                      userId: userId,
                      url: url,
                    )),
            (Route<dynamic> route) => false,
          );
        } else {
          Utils.toastMessage(
            'Checkout failed. Status Code: ${apiResponse.statusCode}',
          );
        }
      });
    } catch (e) {
      Utils.toastMessage('Error during checkout: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  VehicleDetailModel? vehicleDetail;

  @override
  void initState() {
    super.initState();
    fetchDetails();
  }

  void fetchDetails() async {
    VehicleDetailModel? details =
        await fetchVehicleDetails(widget.popularSchedule.vehicle.id);
    setState(() {
      vehicleDetail = details;
      _isLoading = false;
    });
  }

  String? _selectedSeatNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEBEBEB),
        body: LoadingManager(
          isLoading: _isLoading,
          child: SafeArea(
            child: Column(
              children: [
                const VerticalSpeacing(20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBox(
                        icon: Icons.arrow_back,
                        color: AppColor.primaryColor,
                      ),
                      Text(
                        widget.popularSchedule.vehicle.agency.toString() ??
                            'Agency Name', // Check for null
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColor.titleColor,
                          ),
                        ),
                      ),
                      const ProfileBox(
                        bgImg:
                            "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?size=338&ext=jpg&ga=GA1.1.553209589.1714521600&semt=ais",
                      ),
                    ],
                  ),
                ),
                const VerticalSpeacing(20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: widget.popularSchedule.vehicle.image != null
                        ? Image.network(
                            widget.popularSchedule.vehicle.image.toString(),
                            fit: BoxFit.cover,
                          )
                        : const Text(
                            "No image available"), // Fallback if no image
                  ),
                ),
                const VerticalSpeacing(40),
                if (vehicleDetail != null &&
                    vehicleDetail?.seats !=
                        null) // Check if vehicleDetail and seats exist
                  Container(
                    height: MediaQuery.of(context).size.height / 2.1,
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Select the Available Seats",
                                style: GoogleFonts.getFont(
                                  "Urbanist",
                                  textStyle: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.titleColor,
                                  ),
                                ),
                              ),
                            ),
                            const VerticalSpeacing(40),
                            Text(
                              "Available Seats",
                              style: GoogleFonts.getFont(
                                "Urbanist",
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.titleColor,
                                ),
                              ),
                            ),
                            const VerticalSpeacing(10),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: AppColor.titleColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: vehicleDetail!.seats
                                      .where((seat) => !seat
                                          .isBooked) // Only show available seats
                                      .map((seat) => Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SeatContainer(
                                                selectColor: _selectedSeatNumber ==
                                                        seat.seatNumber
                                                            .toString()
                                                    ? Colors
                                                        .blue // Highlight selected seat
                                                    : Colors.transparent,
                                                seatno: seat.seatNumber
                                                    .toString(), // Convert seat number to String
                                                isSelected:
                                                    _selectedSeatNumber ==
                                                        seat.seatNumber
                                                            .toString(),
                                                onSeatSelected: (seatNo) {
                                                  setState(() {
                                                    _selectedSeatNumber =
                                                        seatNo; // Select only one seat
                                                  });
                                                },
                                              ),
                                            ],
                                          ))
                                      .toList(),
                                ),
                              ),
                            ),
                            const VerticalSpeacing(40),
                            RoundedButton(
                              title: "Book Now",
                              onpress: () async {
                                if (_selectedSeatNumber == null) {
                                  // Show an alert if no seat is selected
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Please select a seat before proceeding")),
                                  );
                                } else {
                                  final userPreferences =
                                      Provider.of<UserViewModel>(context,
                                          listen: false);
                                  final userModel =
                                      await userPreferences.getUser();
                                  final token = userModel.token;
                                  final extractedToken = token
                                      .replaceAll('{key: ', '')
                                      .replaceAll('}', '');
                                  print('Extracted Token: $extractedToken');
                                  await checkoutSession(context,
                                      _selectedSeatNumber!); // Pass the selected seat number
                                }
                              },
                            ),
                            const VerticalSpeacing(40),
                          ],
                        ),
                      ),
                    ),
                  )
                else
                  const Center(
                      child:
                          CircularProgressIndicator()), // Show a loader while data is being fetched
              ],
            ),
          ),
        ));
  }
}
