import 'package:feather/src/ui/screen/weather_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    _configureLogger();
    return MaterialApp(home: WeatherMainScreen(),
        debugShowCheckedModeBanner: false, theme: ThemeData(textTheme: TextTheme(
          headline: TextStyle(fontSize: 60.0, color: Colors.white),
          title: TextStyle(fontSize: 35, color: Colors.white),
          subtitle: TextStyle(fontSize: 20, color: Colors.white),
          body1: TextStyle(fontSize: 15, color: Colors.white)
        )));
  }

  _configureLogger(){
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((LogRecord rec) {
      print('[${rec.level.name}][${rec.loggerName}][${rec.time}]: ${rec.message}');
    });
  }
}
