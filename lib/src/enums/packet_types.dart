enum SocketPacketTypes implements Comparable<SocketPacketTypes> {

  connect(0, 'connect'),
  disconnect(1, 'disconnect'),
  event(2, 'event'),
  ack(3, 'ack'),
  error(4, 'error'),
  binaryEvent(5, 'binary_event'),
  binaryAck(6, 'binary_ack');

  final String message;
  final int code;

  const SocketPacketTypes(this.code, this.message);

  operator [](int code) => SocketPacketTypes.values[code];

  @override
  int compareTo(SocketPacketTypes other) => code.compareTo(other.code);

}

enum EnginePacketTypes implements Comparable<EnginePacketTypes> {

  open(0, 'open'),
  close(1, 'close'),
  ping(2, 'ping'),
  pong(3, 'pong'),
  message(4, 'message'),
  upgrade(5, 'upgrade'),
  noop(6, 'noop');

  final String name;
  final int code;

  const EnginePacketTypes(this.code, this.name);

  operator [](int code) => EnginePacketTypes.values[code];

  @override
  int compareTo(EnginePacketTypes other) => code.compareTo(other.code);

}