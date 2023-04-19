import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SitechNavigationMap extends StatelessWidget {
  final SitechNavigationOptions options;
  final double height;
  const SitechNavigationMap(
      {super.key, required this.options, this.height = 70});

  @override
  Widget build(BuildContext context) {
    const String viewType = 'navigationmap';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return SizedBox(
      height: height,
      child: AndroidView(
        viewType: viewType,
        layoutDirection: TextDirection.ltr,
        creationParams: options.toMap(),
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}

class SitechNavigationOptions {
  final TripPoint startPoint;
  final TripPoint endPoint;
  final TripPoint currentLocation;
  final bool tripStarted;
  final TripDetails tripDetails;
  final String baseUrl;
  final String token;
  SitechNavigationOptions(
      {required this.startPoint,
      required this.endPoint,
      required this.currentLocation,
      required this.tripStarted,
      required this.baseUrl,
      required this.token,
      required this.tripDetails});

  Map<String, dynamic> toMap() {
    return {
      "startPoint": startPoint.toMap(),
      "endPoint": endPoint.toMap(),
      "tripDetails": tripDetails.toMap(),
      "tripStarted": tripStarted,
      "currentPoint": currentLocation.toMap(),
      "baseUrl": baseUrl,
      "token": token
    };
  }
}

class TripDetails {
  final String id;
  final String clientName;
  final String clientNumber;
  final String carModel;
  final String carPlate;
  final String carImage;
  TripDetails(
      {required this.carModel,
      required this.carPlate,
      required this.clientName,
      required this.clientNumber,
      required this.carImage,
      required this.id});
  Map<String, String> toMap() {
    return {
      "tripId": id,
      "carModel": carModel,
      "carPlate": carPlate,
      "clientName": clientName,
      "clientNumber": clientNumber,
      "carImage": carImage,
    };
  }
}

class TripPoint {
  final double latitude;
  final double lonngitude;
  final String name;
  TripPoint({
    required this.latitude,
    required this.lonngitude,
    this.name = "Location",
  });
  Map<String, dynamic> toMap() {
    return {
      "Latitude": latitude,
      "Longitude": lonngitude,
      "name": name,
    };
  }
}
