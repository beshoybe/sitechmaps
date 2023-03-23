import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:sitechmaps/navigationmap.dart';
import 'package:sitechmaps/sitechmaps.dart';
import 'package:sitechmaps/sitechmaps_platform_interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Sitechmaps.startTrip(
            SitechNavigationOptions(
              currentLocation:
                  TripPoint(latitude: 24.7136, lonngitude: 46.6768),
              tripStarted: false,
              startPoint: TripPoint(
                  latitude: 24.7136, lonngitude: 46.6753, name: "Ryadah"),
              endPoint: TripPoint(
                  latitude: 24.7277, lonngitude: 46.7834, name: "Jaddah"),
              tripDetails: TripDetails(
                carModel: "Huyndai",
                carPlate: "FBD 123",
                clientName: "Mohamed",
                clientNumber: "01288385149",
                carImage: "carImage",
                id: "641af6e6c853be7c41365515",
              ),
            ),
          ).then((value) => print(value)),
        ),
      ),
    );
  }
}
