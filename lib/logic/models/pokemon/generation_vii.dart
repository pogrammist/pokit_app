import "icons.dart";
import "ultra_sun_ultra_moon.dart";

class GenerationVii {
  Icons icons;
  UltraSunUltraMoon ultraSunUltraMoon;

  GenerationVii({this.icons, this.ultraSunUltraMoon});

  GenerationVii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? new Icons.fromJson(json['icons']) : null;
    ultraSunUltraMoon = json['ultra-sun-ultra-moon'] != null
        ? new UltraSunUltraMoon.fromJson(json['ultra-sun-ultra-moon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icons != null) {
      data['icons'] = this.icons.toJson();
    }
    if (this.ultraSunUltraMoon != null) {
      data['ultra-sun-ultra-moon'] = this.ultraSunUltraMoon.toJson();
    }
    return data;
  }
}
