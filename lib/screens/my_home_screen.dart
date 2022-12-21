import 'package:flutter/material.dart';
import 'package:socket_demo/utils/socket_utils.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  void initState() {
    SocketUtils.connectSocket();
    super.initState();
  }

  @override
  void dispose() {
    SocketUtils.disconnectSocket();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
