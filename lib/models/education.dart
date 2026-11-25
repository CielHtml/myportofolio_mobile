import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

/// Portfolio education item synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Education {
  const Education({
    this.id,
    required this.institutionName,
    this.description = '',
    required this.educationLevels,
    this.thumbnail,
    required this.startedAt,
    required this.endedAt,
    this.starCount = 0,
    this.isStarred = false,
    this.starredByNames = '',
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;

  @JsonKey(defaultValue: '')
  final String institutionName;

  @JsonKey(defaultValue: '')
  final String description;

  @JsonKey(defaultValue: '')
  final String educationLevels;

  @JsonKey(includeIfNull: false)
  final String? thumbnail;

  @JsonKey(defaultValue: '')
  final String startedAt;

  @JsonKey(defaultValue: '')
  final String endedAt;

  @JsonKey(includeToJson: false, defaultValue: 0)
  final int starCount;

  @JsonKey(includeToJson: false, defaultValue: false)
  final bool isStarred;

  @JsonKey(includeToJson: false, defaultValue: '')
  final String starredByNames;

  String get educationLevelLabel {
    switch (educationLevels.toLowerCase()) {
      case 'sd':
        return 'SD';
      case 'smp':
        return 'SMP';
      case 'sma':
        return 'SMA';
      case 'kuliah':
        return 'Kuliah';
      default:
        return educationLevels;
    }
  }

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
