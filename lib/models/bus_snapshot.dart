import 'package:isar/isar.dart';
import 'location.dart';
import 'student.dart';

part 'bus_snapshot.g.dart';

@collection
class BusSnapshot extends Object {
  BusSnapshot({this.busId, this.location, this.timeOfSnapShot, this.drivingQuality, this.isMoving,this.tripId});

  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  String? busId;
  String? tripId;
  String? drivingQuality;
  Location? location;
  DateTime? timeOfSnapShot;
  bool? isMoving;
  final students = IsarLinks<Student>();
  @ignore
  List<Student> studentObjects = [];

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> studentsJson = students.map((student) => student.toJson()).toList();
    List<Map<String, dynamic>> studentObjectsJson =  studentObjects.map((studentObject) => studentObject.toJson()).toList();
    return {
      'id': id,
      'busId': busId,
      'tripId': tripId,
      'drivingQuality': drivingQuality,
      'location': (location != null) ? location!.toJson() : null,
      'timeOfSnapShot': (timeOfSnapShot != null) ? timeOfSnapShot!.toIso8601String() : null,
      'isMoving':isMoving,
      'students': studentsJson,
      'studentObjects' : studentObjectsJson,
    };
  }

  Map<String, dynamic> toJsonWithoutStudents() {
    return {
      'id': id,
      'busId': busId,
      'tripId': tripId,
      'drivingQuality': drivingQuality,
      'location': (location != null) ? location!.toJson() : null,
      'timeOfSnapShot': (timeOfSnapShot != null) ? timeOfSnapShot!.toIso8601String() : null,
      'isMoving':isMoving,
    };
  }

  factory BusSnapshot.fromJson(Map<String, dynamic> json) {
    return BusSnapshot(
      busId: json['busId'],
      tripId: json['tripId'],
      drivingQuality: json['drivingQuality'],
      location: json['location'] != null ? Location.fromJson(json['location']) : null,
      timeOfSnapShot: json['timeOfSnapShot'] != null ? DateTime.parse(json['timeOfSnapShot']) : null,
      isMoving: json['isMoving'],
    )..id=json['id']
      ..studentObjects =  (json['students']!=null)?(json['students'] as List).map((e) => Student.fromJson(e)).toList():[];
  }
}
