import 'package:sitechmaps/navigationmap.dart';

import 'sitechmaps_platform_interface.dart';

class Sitechmaps {
  Future<String?> getPlatformVersion() {
    return SitechmapsPlatform.instance.getPlatformVersion();
  }

  static Future<String> startTrip(SitechNavigationOptions options) async {
    return SitechmapsPlatform.instance.startNavigation(options);
  }
}
