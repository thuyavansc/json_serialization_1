
import 'dart:convert';

import 'package:json_serialization_1/json_serialization_1.dart' as json_serialization_1;
import 'package:json_serialization_1/rectangle.dart';

void main(List<String> arguments) {
  print('Hello world: ${json_serialization_1.calculate()}!');

  testRectangle();
  testRectangleDeserialization();
}

void testRectangle(){
  var obj = MyRectangle(5,10);
  obj.display();

  print('----serialization----');
  //Display Json String
  var jsonString = jsonEncode(obj.toJson());
  print(jsonString);
}

void testRectangleDeserialization(){
  var jsonString = '{"length":5.0,"breadth":10.0}';
  var jsonObj = jsonDecode(jsonString);

  var r = MyRectangle.fromJson(jsonObj);
  print('----Deserialization----');
  r.display();
}
