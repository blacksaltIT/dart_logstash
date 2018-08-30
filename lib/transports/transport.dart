import 'dart:collection';

import 'package:logging/logging.dart';

typedef VoidCallback = void Function();

class Transport {
  Queue _queue = new Queue();
  final Logger _log = new Logger("Transport");

  void send(dynamic message, [VoidCallback callback]) {
    _log.finest("queuing message");
    _queue.add(message);

    _log.finest("send");
    _send(_queue.removeLast().toString());

    if (callback != null) callback();
  }

  void _send(String message) {
    print(message);
  }
}
