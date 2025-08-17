import 'package:hive/hive.dart';

part 'settings_model.g.dart';

@HiveType(typeId: 12)
class SettingsModel extends HiveObject {
  @HiveField(0)
  final bool saveRandomToolsState;

  @HiveField(1)
  final int decimalPlaces;

  SettingsModel({
    this.saveRandomToolsState = true,
    this.decimalPlaces = 4, // Default to 4 decimal places
  });

  SettingsModel copyWith({bool? saveRandomToolsState, int? decimalPlaces}) {
    return SettingsModel(
      saveRandomToolsState: saveRandomToolsState ?? this.saveRandomToolsState,
      decimalPlaces: decimalPlaces ?? this.decimalPlaces,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'saveRandomToolsState': saveRandomToolsState,
      'decimalPlaces': decimalPlaces,
    };
  }

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      saveRandomToolsState: json['saveRandomToolsState'] ?? true,
      decimalPlaces: json['decimalPlaces'] ?? 4,
    );
  }
}
