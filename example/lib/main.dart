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
                tripStarted: true,
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
                  id: "641c388e24d78c491ee52397",
                ),
                baseUrl: "http://backend.staging.rekab.sitech-sites.me",
                token:
                    "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJIZU9CbGRid0NaTEpHcEFWS25ocGRGNjU3WnNEMTRIdWtIbkJQcWVYYVlnIn0.eyJleHAiOjE2ODAxMjk0MTUsImlhdCI6MTY4MDA5MzQxNiwiYXV0aF90aW1lIjoxNjgwMDkzNDE1LCJqdGkiOiIxZjYxMDg1MC04NTE1LTQ3YmMtYjQzNi0wYTQzYjdiZGY3ZTgiLCJpc3MiOiJodHRwczovL2tleWNsb2FrLnN0YWdpbmcucmVrYWIuc2l0ZWNoLWRldm9wcy5jb20vcmVhbG1zL3Jla2FiIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6IjVlZjM3Zjk0LWM2NDQtNGJmZS1iMTU2LWM0N2M4ZDQyZWE4MiIsInR5cCI6IkJlYXJlciIsImF6cCI6InJla2FiLXB1YmxpYy1jbGllbnQiLCJzZXNzaW9uX3N0YXRlIjoiNTk3MzdlNDYtZWY5NS00ODUyLWIyNmMtNTVkYWZkNWNlYWQ2IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIiwiZGVmYXVsdC1yb2xlcy1yZWthYiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUiLCJzaWQiOiI1OTczN2U0Ni1lZjk1LTQ4NTItYjI2Yy01NWRhZmQ1Y2VhZDYiLCJuYW1lIjoibW9iaWxlIGRldmljZSIsInVzZXItZ3JvdXBzIjpbIi9kcml2ZXJzIl0sInByZWZlcnJlZF91c2VybmFtZSI6Im1vYmlsZSIsImdpdmVuX25hbWUiOiJtb2JpbGUiLCJmYW1pbHlfbmFtZSI6ImRldmljZSJ9.GmtKREXxaoSE4W0R6zag6_yllj6XR27J_Vwvu-QnQCmKoZuC5LtJe4OEhEuDHj_bTi-kLqosWX1smW8Nx7wac_ISV5gv5kqSw0yBUTwnAE-VjhNVH1CtzKROy8wpxtLuI5VutdY1-r5YqvlnINZ9KNB0NxqzJ06O09THetR-OT3IfPaI6UHTrCCAKoIxU1uX0wpTikx6nS4zCkUuWGuU4Re8Mmi1oiPnqCo66-Afwoa5uvqfWJVEHqjP7vFS6rFML2A4BJE7YrNHc6v6NNuaH1RXPXFNyzpIv6gzjYWroN7bZaEzvAn4q9Cp0Ze_PWPez04oS08onqSBvzXGPYp3cw"),
          ).then((value) => print(value)),
        ),
        body: Center(
          child: Container(
            height: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Column(
              children: [
                SitechNavigationMap(
                  height: 60,
                  options: SitechNavigationOptions(
                      currentLocation:
                          TripPoint(latitude: 24.7136, lonngitude: 46.6768),
                      tripStarted: true,
                      startPoint: TripPoint(
                          latitude: 24.7136,
                          lonngitude: 46.6753,
                          name: "Ryadah"),
                      endPoint: TripPoint(
                          latitude: 24.7277,
                          lonngitude: 46.7834,
                          name: "Jaddah"),
                      tripDetails: TripDetails(
                        carModel: "Huyndai",
                        carPlate: "FBD 123",
                        clientName: "Mohamed",
                        clientNumber: "01288385149",
                        carImage: "carImage",
                        id: "641c388e24d78c491ee52397",
                      ),
                      baseUrl: "http://backend.staging.rekab.sitech-sites.me",
                      token:
                          "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJIZU9CbGRid0NaTEpHcEFWS25ocGRGNjU3WnNEMTRIdWtIbkJQcWVYYVlnIn0.eyJleHAiOjE2ODAxMjk0MTUsImlhdCI6MTY4MDA5MzQxNiwiYXV0aF90aW1lIjoxNjgwMDkzNDE1LCJqdGkiOiIxZjYxMDg1MC04NTE1LTQ3YmMtYjQzNi0wYTQzYjdiZGY3ZTgiLCJpc3MiOiJodHRwczovL2tleWNsb2FrLnN0YWdpbmcucmVrYWIuc2l0ZWNoLWRldm9wcy5jb20vcmVhbG1zL3Jla2FiIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6IjVlZjM3Zjk0LWM2NDQtNGJmZS1iMTU2LWM0N2M4ZDQyZWE4MiIsInR5cCI6IkJlYXJlciIsImF6cCI6InJla2FiLXB1YmxpYy1jbGllbnQiLCJzZXNzaW9uX3N0YXRlIjoiNTk3MzdlNDYtZWY5NS00ODUyLWIyNmMtNTVkYWZkNWNlYWQ2IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIiwiZGVmYXVsdC1yb2xlcy1yZWthYiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUiLCJzaWQiOiI1OTczN2U0Ni1lZjk1LTQ4NTItYjI2Yy01NWRhZmQ1Y2VhZDYiLCJuYW1lIjoibW9iaWxlIGRldmljZSIsInVzZXItZ3JvdXBzIjpbIi9kcml2ZXJzIl0sInByZWZlcnJlZF91c2VybmFtZSI6Im1vYmlsZSIsImdpdmVuX25hbWUiOiJtb2JpbGUiLCJmYW1pbHlfbmFtZSI6ImRldmljZSJ9.GmtKREXxaoSE4W0R6zag6_yllj6XR27J_Vwvu-QnQCmKoZuC5LtJe4OEhEuDHj_bTi-kLqosWX1smW8Nx7wac_ISV5gv5kqSw0yBUTwnAE-VjhNVH1CtzKROy8wpxtLuI5VutdY1-r5YqvlnINZ9KNB0NxqzJ06O09THetR-OT3IfPaI6UHTrCCAKoIxU1uX0wpTikx6nS4zCkUuWGuU4Re8Mmi1oiPnqCo66-Afwoa5uvqfWJVEHqjP7vFS6rFML2A4BJE7YrNHc6v6NNuaH1RXPXFNyzpIv6gzjYWroN7bZaEzvAn4q9Cp0Ze_PWPez04oS08onqSBvzXGPYp3cw"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
