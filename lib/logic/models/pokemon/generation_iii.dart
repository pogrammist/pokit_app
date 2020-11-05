import "emerald.dart";
import "firered_leafgreen.dart";
import "ruby_sapphire.dart";

class GenerationIii {
  Emerald emerald;
  FireredLeafgreen fireredLeafgreen;
  RubySapphire rubySapphire;

  GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  GenerationIii.fromJson(Map<String, dynamic> json) {
    emerald =
        json['emerald'] != null ? new Emerald.fromJson(json['emerald']) : null;
    fireredLeafgreen = json['firered-leafgreen'] != null
        ? new FireredLeafgreen.fromJson(json['firered-leafgreen'])
        : null;
    rubySapphire = json['ruby-sapphire'] != null
        ? new RubySapphire.fromJson(json['ruby-sapphire'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.emerald != null) {
      data['emerald'] = this.emerald.toJson();
    }
    if (this.fireredLeafgreen != null) {
      data['firered-leafgreen'] = this.fireredLeafgreen.toJson();
    }
    if (this.rubySapphire != null) {
      data['ruby-sapphire'] = this.rubySapphire.toJson();
    }
    return data;
  }
}
