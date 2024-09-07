import 'dart:io';
import 'dart:isolate';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

Future<bool> hasInternet() async {
  final connectivityResult = await Connectivity().checkConnectivity();

  final bool isConnected= !connectivityResult.contains(ConnectivityResult.mobile) ||
      !connectivityResult.contains(ConnectivityResult.wifi);

  if (!isConnected) {
    return false;
  }

  if (kIsWeb) {
    return true; // Assume internet connection on web platforms
  }

  try {
    final result = await InternetAddress.lookup('google.com');

    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (e) {
    debugPrint('Internet Not connected: ${e.message}');
    return false;
  }
}

Future<R> runTaskOnBackgroundIsolate<R>({
  dynamic data,
  required Function actionToBePerfomed,
}) async {
  final p = ReceivePort();
  await Isolate.spawn(
      _runTaskOnBackground, [p.sendPort, data, actionToBePerfomed]);

  return await p.first;
}

void _runTaskOnBackground(List<dynamic> args) async {
  SendPort responsePort = args[0];
  dynamic data = args[1];
  dynamic actionToBePerformed = args[2];
  try {
    final result = actionToBePerformed(data);
    Isolate.exit(responsePort, result);
  } catch (e, stackTrace) {
    // Print the error type, message, and stack trace
    debugPrint('Error From Secondary Isolate: ${e.runtimeType}');
    debugPrint('Error From Secondary Isolate Message: ${e.toString()}');
    debugPrint('Stack Trace: $stackTrace');

    // Log the specific type of exception
    if (e is TypeError) {
      debugPrint('Type Error: ${e.toString()}');
    }

    Isolate.exit(responsePort, null);
  }
}
