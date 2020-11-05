import "diamond_pearl.dart";
import "heartgold_soulsilver.dart";
import "platinum.dart";

class GenerationIv {
  DiamondPearl diamondPearl;
  HeartgoldSoulsilver heartgoldSoulsilver;
  Platinum platinum;

  GenerationIv({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  GenerationIv.fromJson(Map<String, dynamic> json) {
    diamondPearl = json['diamond-pearl'] != null
        ? new DiamondPearl.fromJson(json['diamond-pearl'])
        : null;
    heartgoldSoulsilver = json['heartgold-soulsilver'] != null
        ? new HeartgoldSoulsilver.fromJson(json['heartgold-soulsilver'])
        : null;
    platinum = json['platinum'] != null
        ? new Platinum.fromJson(json['platinum'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.diamondPearl != null) {
      data['diamond-pearl'] = this.diamondPearl.toJson();
    }
    if (this.heartgoldSoulsilver != null) {
      data['heartgold-soulsilver'] = this.heartgoldSoulsilver.toJson();
    }
    if (this.platinum != null) {
      data['platinum'] = this.platinum.toJson();
    }
    return data;
  }
}
