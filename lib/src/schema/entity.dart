import 'package:uuid/uuid.dart';

final uuid = Uuid();

abstract class Entity {
  String id;

  Entity() : id = uuid.v4();

  Entity.fromJson(Map<String, dynamic> json) : id = json["_id"];

  Map<String, dynamic> toJson() {
    return {"_id": id};
  }
}
