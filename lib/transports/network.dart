import 'package:logging/logging.dart';
import 'package:logstash/transports/transport.dart';

class Network extends Transport {
  final String host;
  final int port;

  final Logger _log = new Logger("Network");

  Network({this.host = "localhost", this.port = 80}) {}

//  @override
//  void _send(String message) {
//    print(message);
//  }
}
