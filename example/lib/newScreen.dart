import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sitechmaps/navigationmap.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return SitechNavigationMap(
      options: SitechNavigationOptions(
        currentLocation: TripPoint(latitude: 24.7136, lonngitude: 46.6768),
        tripStarted: false,
        startPoint:
            TripPoint(latitude: 24.7136, lonngitude: 46.6753, name: "Ryadah"),
        endPoint:
            TripPoint(latitude: 24.7277, lonngitude: 46.7834, name: "Jaddah"),
        tripDetails: TripDetails(
          carModel: "Huyndai",
          carPlate: "FBD 123",
          clientName: "Mohamed",
          clientNumber: "01288385149",
          carImage: "carImage",
          id: "641af6e6c853be7c41365515",
        ),
      ),
    );
  }
}
