
import 'package:riverpod/riverpod.dart';
import 'package:weather_app/services/api.dart';

import '/models/weather.dart';

final cityForecastProvider = FutureProvider.autoDispose.family<Weather, String>(
  (ref, cityName) => ApiHelper.getWeatherByCityName(
    cityName: cityName,
  ),
);