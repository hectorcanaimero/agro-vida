// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future oneSignal() async {
  // Add your function code here!
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("d6a6fdef-86fe-4dbd-bba7-82d8b7d11a85");
  OneSignal.Notifications.requestPermission(true);
}
