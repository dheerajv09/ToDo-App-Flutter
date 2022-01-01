import 'package:json_annotation/json_annotation.dart';

part 'todo_model.g.dart';

@JsonSerializable()
class Todo {
  final int? id;
  final String title;
  @JsonKey(defaultValue: false)
  final bool isCompleted;
  final String datetime;

  const Todo({
    this.id,
    required this.title,
    required this.isCompleted,
    required this.datetime,
  });

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TodoToJson(this);

  Todo copy({
    int? id,
    String? title,
    bool? isCompleted,
    String? datetime,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      datetime: datetime ?? this.datetime,
    );
  }
}
