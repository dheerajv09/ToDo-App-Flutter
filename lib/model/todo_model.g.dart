// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      id: json['id'] as int?,
      title: json['title'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      datetime: json['datetime'] as String,
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isCompleted': instance.isCompleted,
      'datetime': instance.datetime,
    };
