// To parse this JSON data, do
//
//     final bookingDetailModel = bookingDetailModelFromJson(jsonString);

import 'dart:convert';

BookingDetailModel bookingDetailModelFromJson(String str) => BookingDetailModel.fromJson(json.decode(str));

String bookingDetailModelToJson(BookingDetailModel data) => json.encode(data.toJson());

class BookingDetailModel {
  int count;
  dynamic next;
  dynamic previous;
  List<Result> results;

  BookingDetailModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory BookingDetailModel.fromJson(Map<String, dynamic> json) => BookingDetailModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  int id;
  int user;
  int schedule;
  int seat;
  bool paymentStatus;

  Result({
    required this.id,
    required this.user,
    required this.schedule,
    required this.seat,
    required this.paymentStatus,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    user: json["user"],
    schedule: json["schedule"],
    seat: json["seat"],
    paymentStatus: json["payment_status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user,
    "schedule": schedule,
    "seat": seat,
    "payment_status": paymentStatus,
  };
}
