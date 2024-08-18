
import 'package:riverpod/riverpod.dart';
import 'package:weather_app/services/api.dart';
import '/models/hourly_weather.dart';

final hourlyForecastProvider = FutureProvider.autoDispose<HourlyWeather>(
  (ref) => ApiHelper.getHourlyForecast(),
);