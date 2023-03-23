import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'navigationmap.dart';
import 'sitechmaps_method_channel.dart';

abstract class SitechmapsPlatform extends PlatformInterface {
  /// Constructs a SitechmapsPlatform.
  SitechmapsPlatform() : super(token: _token);

  static final Object _token = Object();

  static SitechmapsPlatform _instance = MethodChannelSitechmaps();

  /// The default instance of [SitechmapsPlatform] to use.
  ///
  /// Defaults to [MethodChannelSitechmaps].
  static SitechmapsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SitechmapsPlatform] when
  /// they register themselves.
  static set instance(SitechmapsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String> startNavigation(SitechNavigationOptions options) async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
