import 'package:geolocator/geolocator.dart';

class Location {
  Location._();

  static Future<List<double>> getLocation() async {
    GeolocationStatus geolocationStatus =
        await Geolocator().checkGeolocationPermissionStatus();
    if (geolocationStatus == GeolocationStatus.disabled ||
        geolocationStatus == GeolocationStatus.denied ||
        geolocationStatus == GeolocationStatus.unknown ||
        geolocationStatus == GeolocationStatus.restricted) return null;
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var _long = position.longitude;
    var _lat = position.latitude;
    print("[$_long, $_lat]");
    return [position.latitude, position.longitude];
  }
  
  static Future<List<Position>> getLocationFromAddress(String address) async {
    GeolocationStatus geolocationStatus =
        await Geolocator().checkGeolocationPermissionStatus();
    if (geolocationStatus == GeolocationStatus.disabled ||
        geolocationStatus == GeolocationStatus.denied ||
        geolocationStatus == GeolocationStatus.unknown ||
        geolocationStatus == GeolocationStatus.restricted) return null;
    List <Placemark> placemark = await Geolocator().placemarkFromAddress(address);
    return [placemark[0].position];
  }
}
