import 'dart:io';

class Server {

  static Future<Server> bind(int port) async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);
    return Server._(server);
  }

  factory Server.attach(HttpServer server) {
    return Server._(server);
  }

  final HttpServer _server;

  Server._(this._server);

  void close() {
    _server.close();
  }

  void listen(void Function(HttpRequest request) callback) {
    _server.listen(callback);
  }

}