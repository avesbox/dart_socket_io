import 'dart:io';

import 'package:dart_socket_io/src/server/server.dart';

const String recordSeparator = '\\x1e';

/// The [EngineIo] class is the main class for the engine.io server.
class EngineIo {

  /// The underlying [HttpServer] instance.
  final Server server;

  EngineIo._(this.server);

  /// Attach an existing [HttpServer] to a new [EngineIo] server.
  /// 
  /// Returns a new [EngineIo] server.
  /// 
  /// Example:
  /// ```dart
  /// final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
  /// 
  /// final engine = EngineIo.attach(server); 
  /// ```
  /// 
  /// This method is useful when you want to use an existing [HttpServer] instance
  /// or when you are using a framework that provides an [HttpServer] instance.
  factory EngineIo.attach(HttpServer server) {
    return EngineIo._(Server.attach(server));
  }

  /// Starts a new [EngineIo] server on the specified [port].
  /// 
  /// The server will listen on the loopback interface.
  /// 
  /// Returns a [Future] that completes with the [EngineIo] server.
  /// 
  /// Example:
  /// ```dart
  /// final engine = await EngineIo.bind(3000);
  /// ```
  /// 
  /// This method is useful when you want to start a new [EngineIo] server.
  static Future<EngineIo> bind(int port) async {
    final server = await Server.bind(port);
    return EngineIo._(server);
  }

  


}