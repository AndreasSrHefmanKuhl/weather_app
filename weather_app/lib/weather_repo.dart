import 'weather_data.dart';
import 'dart:math';

class WeatherRepo {
  final List<WeatherData> _weatherData = [
    WeatherData(city: "Krefeld", temperature: 24.4, weatherCondition: "Sunny"),
    WeatherData(city: "Berlin", temperature: 18.8, weatherCondition: "Cloudy"),
    WeatherData(city: "Stettin", temperature: 21, weatherCondition: "Sunny"),
    WeatherData(city: "München", temperature: 22.2, weatherCondition: "Stormy"),
    WeatherData(city: "Hamburg", temperature: 19.8, weatherCondition: "Rainy"),
    WeatherData(
        city: "Düsseldorf", temperature: 23.8, weatherCondition: "Sunny"),
  ];

  WeatherData getWeather() {
    final random = Random();
    return _weatherData[random.nextInt(_weatherData.length)];
  }
}





// class WeatherRepo {
//   final WeatherData _weatherData =
//       WeatherData(city: "Krefeld", temperature: 24.4, weaterCondition: "Sunny");

//   WeatherData getWeather() {
//     return _weatherData;
//   }
// }