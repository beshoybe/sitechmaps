import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sitechmaps/navigationmap.dart';

import 'sitechmaps_platform_interface.dart';

/// An implementation of [SitechmapsPlatform] that uses method channels.
class MethodChannelSitechmaps extends SitechmapsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sitechmaps');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String> startNavigation(SitechNavigationOptions options) async {
    return await methodChannel.invokeMethod("startNavigation", options.toMap());
  }
}
