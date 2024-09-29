import 'package:flutter/material.dart';

void main() {}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Weather'),
      ),
      body: Container(
          child: Center(
        child: Text(
          'Willkommen zur Wetter-App!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
      )),
    );
  }
}

class WeatherData {
  final String city;
  final double temperature;
  final String weatherCondition;

  WeatherData({
    required this.city,
    required this.temperature,
    required this.weatherCondition,
  });
}
