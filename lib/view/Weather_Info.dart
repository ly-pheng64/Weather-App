import 'package:flutter/material.dart';
import 'package:weather_app/constants/text_styles.dart';
import 'package:weather_app/extensions/double.dart';
import 'package:weather_app/models/weather.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weather});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, 
        children: [
          WeatherInfoTitle(title: 'Temp', value: '${weather.main.temp}°C'),
          WeatherInfoTitle(
              title: 'Wind', value: '${weather.wind.speed.kmh} km/h'),
          WeatherInfoTitle(
              title: 'Humidity', value: '${weather.main.humidity}%'),
        ],
      ),
    );
  }
}

class WeatherInfoTitle extends StatelessWidget {
  const WeatherInfoTitle({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyles.subtitleText,
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyles
              .h2, 
        ),
      ],
    );
  }
}
