
import 'package:riverpod/riverpod.dart';
import 'package:weather_app/services/api.dart';

import '/models/weekly_weather.dart';

final weeklyForecastProvider = FutureProvider.autoDispose<WeeklyWeather>(
  (ref) => ApiHelper.getWeeklyForecast(),
);