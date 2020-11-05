import "other.dart";
import "versions.dart";

class Sprites {
  String backFemale;
  String backShinyFemale;
  String backDefault;
  String frontFemale;
  String frontShinyFemale;
  String backShiny;
  String frontDefault;
  String frontShiny;
  Other other;
  Versions versions;

  Sprites(
      {this.backFemale,
      this.backShinyFemale,
      this.backDefault,
      this.frontFemale,
      this.frontShinyFemale,
      this.backShiny,
      this.frontDefault,
      this.frontShiny,
      this.other,
      this.versions});

  Sprites.fromJson(Map<String, dynamic> json) {
    backFemale = json['back_female'];
    backShinyFemale = json['back_shiny_female'];
    backDefault = json['back_default'];
    frontFemale = json['front_female'];
    frontShinyFemale = json['front_shiny_female'];
    backShiny = json['back_shiny'];
    frontDefault = json['front_default'];
    frontShiny = json['front_shiny'];
    other = json['other'] != null ? new Other.fromJson(json['other']) : null;
    versions = json['versions'] != null
        ? new Versions.fromJson(json['versions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_female'] = this.backFemale;
    data['back_shiny_female'] = this.backShinyFemale;
    data['back_default'] = this.backDefault;
    data['front_female'] = this.frontFemale;
    data['front_shiny_female'] = this.frontShinyFemale;
    data['back_shiny'] = this.backShiny;
    data['front_default'] = this.frontDefault;
    data['front_shiny'] = this.frontShiny;
    if (this.other != null) {
      data['other'] = this.other.toJson();
    }
    if (this.versions != null) {
      data['versions'] = this.versions.toJson();
    }
    return data;
  }
}
