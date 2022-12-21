import 'package:socket_demo/utils/common.dart';
import 'package:socket_io_client/socket_io_client.dart';

class SocketUtils {
  static Socket mSocket = io(
      Common.baseSocketURL,
      OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build());

  static void connectSocket() {
    mSocket.connect();
    mSocket.onConnect((data) {
      print('socket on connect called: $data');
    });
  }

  static void disconnectSocket() {
    mSocket.disconnect();
    mSocket.onDisconnect((data) {
      print('socket on disconnect called: $data');
    });
  }
}
