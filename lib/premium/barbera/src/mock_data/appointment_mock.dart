import 'package:ultimate_bundle/premium/barbera/src/mock_data/barbershop_mock.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/appointment_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/service_model.dart';


List<AppointmentModel> pendingList = [
  AppointmentModel(
    totalPrice: 42,
    totalDuration: 50,
    date: '01 August 2020',
    time: '15:30 pm',
    bookingNumber: 'BRB15SK',
    status: AppointmentStatus.pending,
    barbershop: allBarbershopList[0],
    services: [
      ServicesModel(
        name: 'Haircut',
        price: 15,
      ),
      ServicesModel(
        name: 'Hair coloring',
        price: 25,
      ),
      ServicesModel(
        name: 'Shaving',
        price: 2,
      ),
    ],
  ),
  AppointmentModel(
    totalPrice: 32,
    totalDuration: 50,
    date: '31 July 2020',
    time: '13:30 pm',
    bookingNumber: 'LKAD24SK',
    status:  AppointmentStatus.pending,
    barbershop: allBarbershopList[1],
    services: [
      ServicesModel(
        name: 'Shaving',
        price: 2,
      ),
      ServicesModel(
        name: 'Haircut',
        price: 25,
      ),
      ServicesModel(
        name: 'Spa',
        price: 5,
      ),
    ],
  ),
];

List<AppointmentModel> completedList = [
  AppointmentModel(
    totalPrice: 42,
    totalDuration: 50,
    date: '01 August 2020',
    time: '15:30 pm',
    bookingNumber: 'BRB15SK',
    status:  AppointmentStatus.complete,
    barbershop: allBarbershopList[2],
    services: [
      ServicesModel(
        name: 'Haircut',
        price: 15,
      ),
      ServicesModel(
        name: 'Hair coloring',
        price: 25,
      ),
      ServicesModel(
        name: 'Shaving',
        price: 2,
      ),
    ],
  ),
];

List<AppointmentModel> cancelList = [
  AppointmentModel(
    totalPrice: 42,
    totalDuration: 50,
    date: '01 August 2020',
    time: '15:30 pm',
    bookingNumber: 'BRB15SK',
    status:  AppointmentStatus.cancel,
    barbershop: allBarbershopList[4],
    services: [
      ServicesModel(
        name: 'Haircut',
        price: 15,
      ),
      ServicesModel(
        name: 'Hair coloring',
        price: 25,
      ),
      ServicesModel(
        name: 'Shaving',
        price: 2,
      ),
    ],
  ),
  AppointmentModel(
    totalPrice: 32,
    totalDuration: 50,
    date: '31 July 2020',
    time: '13:30 pm',
    bookingNumber: 'LKAD24SK',
    status: AppointmentStatus.cancel,
    barbershop: allBarbershopList[5],
    services: [
      ServicesModel(
        name: 'Shaving',
        price: 2,
      ),
      ServicesModel(
        name: 'Haircut',
        price: 25,
      ),
      ServicesModel(
        name: 'Spa',
        price: 5,
      ),
    ],
  ),
];
