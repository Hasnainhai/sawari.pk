// To parse this JSON data, do
//
//     final vehicleDetailModel = vehicleDetailModelFromJson(jsonString);

import 'dart:convert';

VehicleDetailModel vehicleDetailModelFromJson(String str) =>
    VehicleDetailModel.fromJson(json.decode(str));

String vehicleDetailModelToJson(VehicleDetailModel data) =>
    json.encode(data.toJson());

class VehicleDetailModel {
  int id;
  Vehicle vehicle;
  DateTime departureTime;
  DateTime arrivalTime;
  String departurePlace;
  String destination;
  String price;
  int availableSeats;
  DateTime scheduleDate;
  bool status;
  List<Seat> seats;

  VehicleDetailModel({
    required this.id,
    required this.vehicle,
    required this.departureTime,
    required this.arrivalTime,
    required this.departurePlace,
    required this.destination,
    required this.price,
    required this.availableSeats,
    required this.scheduleDate,
    required this.status,
    required this.seats,
  });

  factory VehicleDetailModel.fromJson(Map<String, dynamic> json) =>
      VehicleDetailModel(
        id: json["id"],
        vehicle: Vehicle.fromJson(json["vehicle"]),
        departureTime: DateTime.parse(json["departure_time"]),
        arrivalTime: DateTime.parse(json["arrival_time"]),
        departurePlace: json["departure_place"],
        destination: json["destination"],
        price: json["price"],
        availableSeats: json["available_seats"],
        scheduleDate: DateTime.parse(json["schedule_date"]),
        status: json["status"],
        seats: List<Seat>.from(json["seats"].map((x) => Seat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle": vehicle.toJson(),
        "departure_time": departureTime.toIso8601String(),
        "arrival_time": arrivalTime.toIso8601String(),
        "departure_place": departurePlace,
        "destination": destination,
        "price": price,
        "available_seats": availableSeats,
        "schedule_date":
            "${scheduleDate.year.toString().padLeft(4, '0')}-${scheduleDate.month.toString().padLeft(2, '0')}-${scheduleDate.day.toString().padLeft(2, '0')}",
        "status": status,
        "seats": List<dynamic>.from(seats.map((x) => x.toJson())),
      };
}

class Seat {
  int seatNumber;
  bool isBooked;

  Seat({
    required this.seatNumber,
    required this.isBooked,
  });

  factory Seat.fromJson(Map<String, dynamic> json) => Seat(
        seatNumber: json["seat_number"],
        isBooked: json["is_booked"],
      );

  Map<String, dynamic> toJson() => {
        "seat_number": seatNumber,
        "is_booked": isBooked,
      };
}

class Vehicle {
  int id;
  String registrationNumber;
  String model;
  String fareRates;
  int capacity;
  String image;
  bool isActive;
  DateTime createdAt;
  int agency;

  Vehicle({
    required this.id,
    required this.registrationNumber,
    required this.model,
    required this.fareRates,
    required this.capacity,
    required this.image,
    required this.isActive,
    required this.createdAt,
    required this.agency,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        id: json["id"],
        registrationNumber: json["registration_number"],
        model: json["model"],
        fareRates: json["fare_rates"],
        capacity: json["capacity"],
        image: json["image"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        agency: json["agency"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "registration_number": registrationNumber,
        "model": model,
        "fare_rates": fareRates,
        "capacity": capacity,
        "image": image,
        "is_active": isActive,
        "created_at": createdAt.toIso8601String(),
        "agency": agency,
      };
}
