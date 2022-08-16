import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _Wrapper extends StatelessWidget {
  final Widget child;
  const _Wrapper(this.child);
  @override
  Widget build(BuildContext context) {
    return child;
  }
}

//Wrapper widget for testing purposes
Widget testableWidget(Widget child) {
  return MediaQuery(
    data: const MediaQueryData(),
    child: GetMaterialApp(
      home: Scaffold(body: _Wrapper(child)),
    ),
  );
}