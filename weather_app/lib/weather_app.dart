import 'package:flutter/material.dart';
//import 'package:simple_weahter_app_ad/main.dart';
import 'package:weather_app/weather_data.dart';
import 'package:weather_app/weather_repo.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.repository});

  final WeatherRepo repository;

  @override
  Widget build(BuildContext context) {
    final WeatherData weatherReading = repository.getWeather();
    final String city = weatherReading.city;
    final double temperature = weatherReading.temperature;
    final String weatherCondition = weatherReading.weatherCondition;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Heavs Handy Weather",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          const Center(
            child: SizedBox(
              child: Text(
                "Willkommen zur Wetter-App!",
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, bottom: 16),
            child: Row(
              children: [
                Text(
                  city,
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 12),
            child: Row(
              children: [
                Text(temperature.toString()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Text(weatherCondition),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
