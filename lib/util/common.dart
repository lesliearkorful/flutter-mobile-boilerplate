import 'dart:io';

bool get debugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

class NetworkError extends IOException {
  NetworkError(String msg) {
    if (debugMode) print(msg);
  }
}
