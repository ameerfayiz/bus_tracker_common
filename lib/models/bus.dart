import 'package:isar/isar.dart';
import 'location.dart';
import 'user.dart';

part 'bus.g.dart';

@collection
class Bus extends Object {
  Bus({this.busId, this.apiKey, this.route});

  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  @Index(unique: true, replace: true, caseSensitive: false)
  String? busId;
  @Index(unique: true, replace: false, caseSensitive: false)
  String? apiKey;
  String? route;
  final driver = IsarLink<User>();
  @ignore
  User? driverObject;
  final busStaffs = IsarLinks<User>();
  @ignore
  List<User> busStaffObjects = [];

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> busStaffsJson = busStaffs.map((busStaff) => busStaff.toJson()).toList();
    List<Map<String, dynamic>> busStaffObjectsJson = busStaffObjects.map((busStaff) => busStaff.toJson()).toList();
    return {
      'id': id,
      'busId': busId,
      'driver': (driver.value != null) ? driver.value!.toJson() : {},
      'driverObject' :  (driverObject != null) ? driverObject!.toJson() : {},
      'busStaffs': busStaffsJson,
      'busStaffObjects': busStaffObjectsJson,
      'route': route,
    };
  }

  Map<String, dynamic> toJsonWithApiKey() {
    List<Map<String, dynamic>> busStaffsJson = busStaffs.map((busStaff) => busStaff.toJson()).toList();
    List<Map<String, dynamic>> busStaffObjectsJson = busStaffObjects.map((busStaff) => busStaff.toJson()).toList();

    return {
      'id': id,
      'apiKey': apiKey,
      'busId': busId,
      'driver': (driver.value != null) ? driver.value!.toJson() : {},
      'driverObject' :  (driverObject != null) ? driverObject!.toJson() : {},
      'busStaffs': busStaffsJson,
      'busStaffObjects': busStaffObjectsJson,
      'route': route,
    };
  }

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      busId: json['busId'],
      apiKey: json['apiKey'],
      route: json['route'],
    )
      ..id = json['id']
      ..driverObject = User.fromJson(json['driver'])
      ..busStaffObjects = (json['busStaffs'] as List).map((e) => User.fromJson(e)).toList();
  }
}
