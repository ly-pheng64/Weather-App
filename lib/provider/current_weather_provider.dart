import 'package:riverpod/riverpod.dart';
import 'package:weather_app/services/api.dart';

final CurrentWeatherProvider = FutureProvider.autoDispose((ref) {
  return ApiHelper.getCurrentWeather();
});
