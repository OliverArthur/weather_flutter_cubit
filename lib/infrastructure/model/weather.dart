import 'package:meta/meta.dart';

class Weather {
  final String? cityName;
  final double? temperatureCelsius;

  Weather({
    @required this.cityName,
    @required this.temperatureCelsius,
  });
}
