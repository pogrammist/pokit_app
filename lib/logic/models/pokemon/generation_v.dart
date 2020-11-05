import "black_white.dart";

class GenerationV {
  BlackWhite blackWhite;

  GenerationV({this.blackWhite});

  GenerationV.fromJson(Map<String, dynamic> json) {
    blackWhite = json['black-white'] != null
        ? new BlackWhite.fromJson(json['black-white'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.blackWhite != null) {
      data['black-white'] = this.blackWhite.toJson();
    }
    return data;
  }
}
