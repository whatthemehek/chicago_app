import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:vibration/vibration.dart';

part 'data.dart';
part 'drawer.dart';
part 'background.dart';
part 'measure.dart';
part 'firstpage.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chicago Mehek Box',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/measure',
      routes: {
        '/measure': (context) => FirstPage(boxData: measureData),
        '/beat': (context) => FirstPage(boxData: beatData),
        '/threeFour': (context) => FirstPage(boxData: threeFourData),
        '/privacy': (context) => PrivacyPolicy(),
      },
    );
  }
}

class PrivacyPolicy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Text(
          'At the present (7/21/20), the Mehek Box app and webapp do not intake any user data, in any form.'
      ),
      drawer: BoxDrawer(),
    );
  }
}