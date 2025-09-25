// File: config_loader.dart
//
import './config_template.dart';
//
// Template Config
/*
final _globalAppNameConfig = GlobalAppNameConfigLocalRepository(
  configName: 'AppNameDev',
  configType: 'Development',
  logtoEndpoint: '<your-logto-endpoint>',
  logtoAppId: '<your-app-id>'
);

final _globalAppNameDebugConfig = GlobalAppNameConfigLocalRepository(
  configName: 'AppNameDebug',
  configType: 'Debug',
  logtoEndpoint: '<your-logto-endpoint>',
  logtoAppId: '<your-app-id>'
);

final _globalAppNameTestConfig = GlobalAppNameConfigLocalRepository(
  configName: 'AppNameTest',
  configType: 'Test',
  logtoEndpoint: '<your-logto-endpoint>',
  logtoAppId: '<your-app-id>'
);

final _globalAppNameReleaseConfig = GlobalAppNameConfigLocalRepository(
  configName: 'AppNameRelease',
  configType: 'Release',
  logtoEndpoint: '<your-logto-endpoint>',
  logtoAppId: '<your-app-id>'
);
*/

//
// Personal Config
//
// Tip: Change 'AppName' to your application name (use 'Test' or 'Debug' if needed)
//
/*
final _globalQlpDevConfig = GlobalAppNameConfigLocalRepository(
  configName: 'QlpDev',
  configType: 'Development',
  logtoEndpoint: '<your-logto-endpoint>',
  logtoAppId: '<your-app-id>',
);
*/
import './config_qlp.dart';

//
// Config Loader
//
// Tip: Feel free to toggle your config!
//
class ConfigLoader {
  /*
  late final GlobalAppNameConfigLocalRepository _globalAppNameConfig;
  */
  late final GlobalAppNameConfigLocalRepository _globalQlpConfig;

  //
  // Get config value
  //
  // Tip: Add by yourself
  //
  String get configName => _globalQlpConfig.configName;
  String get configType => _globalQlpConfig.configType;
  String get logtoEndpoint => _globalQlpConfig.logtoConfig.endpoint;
  String get appId => _globalQlpConfig.logtoConfig.appId;

  ConfigLoader({required String configType}) {
    switch (configType) {
      case 'Development':
        // _globalAppNameConfig = _globalAppNameDevConfig;
        _globalQlpConfig = globalQlpDevConfig;
      case 'Debug':
      // _globalAppNameConfig = _globalAppNameDebugConfig;
      case 'Test':
      // _globalAppNameConfig = _globalAppNameTestConfig;
      case 'Release':
      // _globalAppNameConfig = _globalAppNameReleaseConfig;
      default:
        // _globalAppNameConfig = _globalAppNameDevConfig;
        _globalQlpConfig = globalQlpDevConfig;
    }
    // Load extra config
    // _globalAppNameExtraConfig = <your-extra-config>;
  }
}
