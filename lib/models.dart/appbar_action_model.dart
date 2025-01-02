// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AppbarActionModel {
  final String appbarAction;
  final String value;

  AppbarActionModel(this.value, this.appbarAction);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appbarAction': appbarAction,
      'value': value,
    };
  }

  factory AppbarActionModel.fromMap(Map<String, dynamic> map) {
    return AppbarActionModel(
      map['appbarAction'] as String,
      map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppbarActionModel.fromJson(String source) =>
      AppbarActionModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
