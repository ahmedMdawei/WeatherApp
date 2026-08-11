import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/screens/weather_screen.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan, primary: Colors.blueAccent),
        textTheme: TextTheme(displayLarge: TextStyle(
          fontSize: 20
        ))
      ),
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
    }
    }

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
      ),
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Text("Ahmed", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
      ),
    );
  }
}
