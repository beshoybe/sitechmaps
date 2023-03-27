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
                baseUrl: "https://9f01-41-35-133-201.eu.ngrok.io",
                token:
                    "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJIZU9CbGRid0NaTEpHcEFWS25ocGRGNjU3WnNEMTRIdWtIbkJQcWVYYVlnIn0.eyJleHAiOjE2Nzk5Nzc5NDcsImlhdCI6MTY3OTk0MTk0OCwiYXV0aF90aW1lIjoxNjc5OTQxOTQ3LCJqdGkiOiIyMzIzM2QyZC0xZDZjLTQ3YzItYTVhZC0xMWE0MDgzZDkwMjMiLCJpc3MiOiJodHRwczovL2tleWNsb2FrLnN0YWdpbmcucmVrYWIuc2l0ZWNoLWRldm9wcy5jb20vcmVhbG1zL3Jla2FiIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6IjVlZjM3Zjk0LWM2NDQtNGJmZS1iMTU2LWM0N2M4ZDQyZWE4MiIsInR5cCI6IkJlYXJlciIsImF6cCI6InJla2FiLXB1YmxpYy1jbGllbnQiLCJzZXNzaW9uX3N0YXRlIjoiYjY0OWRmNWMtYTQ5Ni00ZTFmLWE3NWYtMGJiYWNmMDAwM2RhIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyJodHRwOi8vZnJvbnRlbmQuc3RhZ2luZy5yZWthYi5zaXRlY2gtc2l0ZXMubWUiLCJodHRwOi8vbG9jYWxob3N0OjgwODAiLCIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIiwiZGVmYXVsdC1yb2xlcy1yZWthYiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUiLCJzaWQiOiJiNjQ5ZGY1Yy1hNDk2LTRlMWYtYTc1Zi0wYmJhY2YwMDAzZGEiLCJuYW1lIjoibW9iaWxlIGRldmljZSIsInVzZXItZ3JvdXBzIjpbIi9kcml2ZXJzIl0sInByZWZlcnJlZF91c2VybmFtZSI6Im1vYmlsZSIsImdpdmVuX25hbWUiOiJtb2JpbGUiLCJmYW1pbHlfbmFtZSI6ImRldmljZSJ9.ietwMLJBGGO8pz2RVsN3u0mcu_oGeWQ2Rbq63mpGnkXbGdTzoNLWrF01r33wI5x1J_GOsu7qgsYWc-v1Bsvw6ls4cNpe4v_YL-myFJbobDPDx3u2wabynOj9ZW--7pecaKRmVV9d_j8kvjqkfbMB7yKhdaQ3pMtWefVYOdGwI7_QUpgjc7HoQE4hcxW-A7z5iqUInQiCgE1VYDk_vzYlZrw8xtJQEPcpX70c_wGeHSLMe8gJwXUEqy7QHuyMKFs3r92Hwz2AlKsBFEHJdU-87mEIDh4W9RmPeQK2tMBaVEp2VGdUxtcaf9MD52oHogS54ckyZCXkjYwVxqSxiGbzlg"),
          ).then((value) => print(value)),
        ),
      ),
    );
  }
}
