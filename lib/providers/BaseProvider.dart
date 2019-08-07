import 'dart:async';

import 'package:flutter/widgets.dart';

abstract class BaseProvider<T> with ChangeNotifier {
  final _streamController = StreamController<T>.broadcast();

  Stream<T> get stream => _streamController.stream;

  Sink<T> get sink => _streamController.sink;

  void dispose() {
    _streamController.close();
    super.dispose();
  }
}
