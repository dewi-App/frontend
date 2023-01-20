import 'package:flutter/material.dart';

class Palette {
  static Color pblue1 = Color.fromRGBO(104, 184, 221, 1);
  // static Color pblue2 = Color.fromRGBO(42, 128, 168, 1);
  // static Color pyellow = Color.fromRGBO(242, 242, 88, 1);
  // static const MaterialColor pblue2 = const MaterialColor(
  //   0xffe55f48,

  // );
  static const MaterialColor pblue2 = const MaterialColor( 
    0xffFF2A80A8, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xffFF2A80A8 ),//10% 
      100: const Color(0xffFF68B8DD),//20% 
      200: const Color(0xffa04332),//30% 
      300: const Color(0xff89392b),//40% 
      400: const Color(0xff733024),//50% 
      500: const Color(0xff5c261d),//60% 
      600: const Color(0xff451c16),//70% 
      700: const Color(0xff2e130e),//80% 
      800: const Color(0xff170907),//90% 
      900: const Color(0xff000000),//100% 
    }, 
  ); 
}
