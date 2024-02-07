import 'package:flutter/material.dart';
import 'hourly_forecast.dart';
import 'daily_forecast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 02',
      // Traté de utilizar ThemeData para los colores pero la verdad me costo mucho trabajo ver como funciona.
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(0, 50, 83, 1),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(1, 29, 51, 1)),
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        HourlyForecast(),
        DailyForecast(),
      ]),
    );
  }
}
