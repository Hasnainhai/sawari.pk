// To parse this JSON data, do
//
//     final homeVehicalModal = homeVehicalModalFromJson(jsonString);

import 'dart:convert';

HomeVehicalModal homeVehicalModalFromJson(String str) =>
    HomeVehicalModal.fromJson(json.decode(str));

String homeVehicalModalToJson(HomeVehicalModal data) =>
    json.encode(data.toJson());

class HomeVehicalModal {
  List<dynamic> upcomingSchedules;
  List<PopularSchedule> popularSchedules;

  HomeVehicalModal({
    required this.upcomingSchedules,
    required this.popularSchedules,
  });

  factory HomeVehicalModal.fromJson(Map<String, dynamic> json) =>
      HomeVehicalModal(
        upcomingSchedules:
            List<dynamic>.from(json["upcoming_schedules"].map((x) => x)),
        popularSchedules: List<PopularSchedule>.from(
            json["popular_schedules"].map((x) => PopularSchedule.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "upcoming_schedules":
            List<dynamic>.from(upcomingSchedules.map((x) => x)),
        "popular_schedules":
            List<dynamic>.from(popularSchedules.map((x) => x.toJson())),
      };
}

class PopularSchedule {
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

  PopularSchedule({
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
  });

  factory PopularSchedule.fromJson(Map<String, dynamic> json) =>
      PopularSchedule(
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
