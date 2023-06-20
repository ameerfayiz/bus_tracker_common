import 'package:isar/isar.dart';

part 'location.g.dart';


@embedded
class Location {

  Location({this.latitude, this.longitude});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      latitude: (json['latitude']!=null)?double.tryParse(json['latitude'].toString()):null,
      longitude: (json['longitude']!=null)?double.tryParse(json['longitude'].toString()):null,
    );
  }
  double? latitude;
  double? longitude;

  Map<String, dynamic> toJson() {
    return {
      "latitude": latitude,
      "longitude": longitude,
    };
  }
}
