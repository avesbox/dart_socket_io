enum ServerErrors implements Comparable<ServerErrors> {

  unknownTransport(0, 'Transport unknown'),
  unknownSid(1, 'Session ID unknown'),
  badHandshakeMethod(2, 'Bad handshake method'),
  badRequest(3, 'Bad request'),
  forbidden(4, 'Forbidden');

  final String message;
  final int code;

  const ServerErrors(this.code, this.message);

  operator [](int code) => ServerErrors.values[code];

  @override
  int compareTo(ServerErrors other) => code.compareTo(other.code);

}