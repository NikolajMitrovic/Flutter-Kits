import 'package:ultimate_bundle/premium/barbera/src/models/barbershop_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/service_model.dart';

enum AppointmentStatus {pending, complete, cancel}

class AppointmentModel {
  final BarbershopModel? barbershop;
  final String? date;
  final String? time;
  final AppointmentStatus? status;
  final List<ServicesModel>? services;
  final int? totalPrice;
  final int? totalDuration;
  final String? bookingNumber;

  AppointmentModel({
    this.barbershop,
    this.date,
    this.time,
    this.status,
    this.services,
    this.totalPrice,
    this.totalDuration,
    this.bookingNumber,
  });
}
