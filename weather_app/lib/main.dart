import 'package:flutter/material.dart';
import 'weather_repo.dart';
//import 'package:simple_weahter_app_ad/weather_data.dart';
import 'weather_data.dart';

void main() {
  final WeatherRepo weatherRepo = WeatherRepo();

  runApp(MainApp(repository: weatherRepo));
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
    required this.repository,
  });

  final WeatherRepo repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(repository: repository),
    );
  }
}

// WeatherData weatherNow =
//     WeatherData(city: "Krefeld", temperature: 24.4, weaterCondition: "Sunny");