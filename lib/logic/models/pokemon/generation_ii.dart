import "crystal.dart";
import "gold.dart";
import "silver.dart";

class GenerationIi {
  Crystal crystal;
  Gold gold;
  Silver silver;

  GenerationIi({this.crystal, this.gold, this.silver});

  GenerationIi.fromJson(Map<String, dynamic> json) {
    crystal =
        json['crystal'] != null ? new Crystal.fromJson(json['crystal']) : null;
    gold = json['gold'] != null ? new Gold.fromJson(json['gold']) : null;
    silver =
        json['silver'] != null ? new Silver.fromJson(json['silver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.crystal != null) {
      data['crystal'] = this.crystal.toJson();
    }
    if (this.gold != null) {
      data['gold'] = this.gold.toJson();
    }
    if (this.silver != null) {
      data['silver'] = this.silver.toJson();
    }
    return data;
  }
}
