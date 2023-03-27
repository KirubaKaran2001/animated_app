import 'package:animated_app/modal/rive_modal.dart';

List<Menu> bottomNavs = [
  Menu(
    title: "Home",
    rive: RiveModel(
      src: "assets/animated_icons.riv",
      artboard: "HOME",
      stateMachineName: "HOME_interactivity",
    ),
  ),
  Menu(
    title: "Search",
    rive: RiveModel(
      src: 'assets/animated_icons.riv',
      artboard: 'SEARCH',
      stateMachineName: 'SEARCH_Interactivity',
    ),
  ),
  Menu(
    title: "Chat",
    rive: RiveModel(
      src: 'assets/animated_icons.riv',
      artboard: 'CHAT',
      stateMachineName: 'CHAT_Interactivity',
    ),
  ),
  Menu(
    title: "Timer",
    rive: RiveModel(
      src: 'assets/animated_icons.riv',
      artboard: 'TIMER',
      stateMachineName: 'TIMER_Interactivity',
    ),
  ),
  Menu(
    title: "User",
    rive: RiveModel(
      src: 'assets/animated_icons.riv',
      artboard: 'USER',
      stateMachineName: 'USER_Interactivity',
    ),
  ),
];
