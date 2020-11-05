import "icons.dart";

class GenerationViii {
  Icons icons;

  GenerationViii({this.icons});

  GenerationViii.fromJson(Map<String, dynamic> json) {
    icons = json['icons'] != null ? new Icons.fromJson(json['icons']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icons != null) {
      data['icons'] = this.icons.toJson();
    }
    return data;
  }
}
