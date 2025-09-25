// File: config_template.dart
import 'package:logto_dart_sdk/logto_dart_sdk.dart';

class _GlobalAppNameConfigBase {
  late final String _configName;
  late final String _configType;
  late final String _logtoEndpoint;
  late final String _logtoAppId;

  _GlobalAppNameConfigBase({
    required String configName,
    required String configType,
  }) {
    _configName = configName;
    _configType = configType;
  }

  // Public Variables
  String get configName => _configName;
  String get configType => _configType;

  // LogtoConfig
  LogtoConfig get logtoConfig {
    // Throw LateInitializationError if __logtoEndpoint or _logtoAppId not init
    return LogtoConfig(endpoint: _logtoEndpoint, appId: _logtoAppId);
  }
}

class GlobalAppNameConfigLocalRepository extends _GlobalAppNameConfigBase {
  GlobalAppNameConfigLocalRepository({
    required super.configName,
    required super.configType,
    required String logtoEndpoint,
    required String logtoAppId,
  }) {
    _logtoEndpoint = logtoEndpoint;
    _logtoAppId = logtoAppId;
  }
}

// Template: Download config from network
/*
class GlobalAppNameConfigNetRepository extends _GlobalAppNameConfigBase {
  GlobalAppNameConfigNetRepository({
    required super.configName,
    required super.configType,
    required String configUrl,
  }) {
    // Download config from Url or S3 Bucket
    //
    // Read JSON
    // _logtoEndpoint = downloadLogtoEndpoint;
    // _logtoAppId = downloadLogtoAppId;
    //
  }
}
*/
