import 'package:isar/isar.dart';
import 'student.dart';

part 'user.g.dart';
//user type :
// 497 -> Super Admin
// 99 -> School Staff
// 100 -> Admin
// 101 -> Parent
// 102 -> BusDriver
// 103 -> BusStaff

class UserRoles{
  static int superAdmin = 497;
  static int SchoolStaff = 99;
  static int Admin = 100;
  static int Parent = 101;
  static int BusDriver = 102;
  static int BusStaff = 103;

  static Map endPoint={
    SchoolStaff : "school",
    Parent : "parent",
    superAdmin : "admin"
  };
}

@collection
class User extends Object {
  User({required this.userName, required this.password, required this.userType, this.name, this.mobileNumbers,this.userTypeDescription});
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  @Index(unique: true, replace: true,caseSensitive: false)
  String userName;
  String password;
  int userType;
  String? userTypeDescription;
  String? name;
  List<String>? mobileNumbers;
  final children = IsarLinks<Student>(); //if user is parent


  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "userName":userName,
      "userType":userType,
      "userTypeDescription":userTypeDescription,
      "name":name,
      "mobileNumbers":mobileNumbers,
    };
  }

  factory User.fromJson(Map<dynamic, dynamic> json) {
    return User(
      userName: json['userName']??"Unknown",
      password: json['password']??"",
      userType: int.tryParse(json['userType'].toString())??-1,
      userTypeDescription: json['userTypeDescription'],
      name: json['name'],
      mobileNumbers: (json['mobileNumbers']!=null)? List<String>.from(json['mobileNumbers']):[],
    )..id = int.tryParse(json['id'].toString())??-1;
  }
}
