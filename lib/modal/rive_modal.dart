import 'dart:ui';

import 'package:rive/rive.dart';

class RiveModel {
  final String artboard, stateMachineName, src;
    late SMIBool? status;

  RiveModel({
    required this.src,
    required this.artboard,
    required this.stateMachineName,
    this.status,
  });
  set setInput(SMIBool state) {
      status=state;
  }
}

class Menu {
  final String title;
  final RiveModel rive;

  Menu({required this.title, required this.rive});
}


class Course {
  final String title, description, iconSrc;
  final Color color;

  Course({
    required this.title,
    this.description = 'Build and animate an iOS app from scratch',
    this.iconSrc = "assets/icons/ios.svg",
    this.color = const Color(0xFF7553F6),
  });
}


