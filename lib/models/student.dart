import 'package:isar/isar.dart';
import 'user.dart';

import 'bus.dart';
part 'student.g.dart';

@collection
class Student extends Object {
  Student({this.studentName, this.admissionNumber, required this.level});
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  String? studentName;
  @Index(unique: true, replace: true,caseSensitive: false)
  String? admissionNumber;
  String? level;
  @Backlink(to: 'children')
  final parents = IsarLinks<User>(); //if user is parent
  @ignore
  List<User> parentObjects = [];
  final defaultBus = IsarLink<Bus>(); //if user is parent
  @ignore
  Bus? defaultBusObject;


  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> parentsJson = parents.map((parent) => parent.toJson()).toList();
    List<Map<String, dynamic>> parentObjectsJson = parentObjects.map((parent) => parent.toJson()).toList();

    return {
      'id': id,
      'studentName': studentName,
      'admissionNumber': admissionNumber,
      'level': level,
      'parents': parentsJson,
      'parentObjects': parentObjectsJson,
      'defaultBus' :  (defaultBus.value != null) ? defaultBus.value!.toJson() : {},
      'defaultBusObject' :  (defaultBusObject != null) ? defaultBusObject!.toJson() : {},
    };
  }


  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      studentName: json['studentName'] as String?,
      admissionNumber: json['admissionNumber'] as String?,
      level: json['level'] as String?,
    )..id = int.tryParse(json['id'].toString())??-1
    .. parentObjects = (json['parents'] as List<dynamic>)
        .map((parentJson) => User.fromJson(parentJson as Map<String, dynamic>))
        .toList()
    ..defaultBusObject =( json['defaultBus'] != null && json['defaultBus'] is Map && (json['defaultBus'] as Map<String, dynamic>).isNotEmpty)
    ? Bus.fromJson(json['defaultBus'] as Map<String, dynamic>)
        : null;
  }

}