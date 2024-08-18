import 'package:geolocator/geolocator.dart';

Future<Position> getlocation() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error(' location permission are denied ');
    }
  }
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        ' location permission are denied Forver and we cannot request permission ');
  }
  return Geolocator.getCurrentPosition();
}
