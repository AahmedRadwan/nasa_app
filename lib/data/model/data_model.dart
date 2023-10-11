import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';
@HiveType(typeId: 0)
@JsonSerializable(createToJson: false)
class MarsPhotoModel{
  @HiveField(0)
  final int id;
  @HiveField(1)
  final Camera camera;
  @HiveField(2)
  @JsonKey(defaultValue: "img_src")
  final String imgSrc;
  @HiveField(3)
  @JsonKey(defaultValue: "earth_date")
  final String earthDate;
  factory MarsPhotoModel.fromJson(Map<String, dynamic> json) => _$MarsPhotoModelFromJson(json);
  MarsPhotoModel({required this.id, required this.camera, required this.imgSrc, required this.earthDate});
}
@HiveType(typeId: 1)
@JsonSerializable(createToJson: false)
class Camera{
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  @JsonKey(defaultValue: "full_name")
  final String fullName;
  factory Camera.fromJson(Map<String, dynamic> json) => _$CameraFromJson(json);
  Camera({required this.id, required this.name, required this.fullName});
}
