import 'package:flutter_test/flutter_test.dart';
import 'package:sitechmaps/sitechmaps.dart';
import 'package:sitechmaps/sitechmaps_platform_interface.dart';
import 'package:sitechmaps/sitechmaps_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSitechmapsPlatform
    with MockPlatformInterfaceMixin
    implements SitechmapsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SitechmapsPlatform initialPlatform = SitechmapsPlatform.instance;

  test('$MethodChannelSitechmaps is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSitechmaps>());
  });

  test('getPlatformVersion', () async {
    Sitechmaps sitechmapsPlugin = Sitechmaps();
    MockSitechmapsPlatform fakePlatform = MockSitechmapsPlatform();
    SitechmapsPlatform.instance = fakePlatform;

    expect(await sitechmapsPlugin.getPlatformVersion(), '42');
  });
}
