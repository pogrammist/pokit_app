import "version.dart";

class VersionDetails {
  int rarity;
  Version version;

  VersionDetails({this.rarity, this.version});

  VersionDetails.fromJson(Map<String, dynamic> json) {
    rarity = json['rarity'];
    version =
        json['version'] != null ? new Version.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rarity'] = this.rarity;
    if (this.version != null) {
      data['version'] = this.version.toJson();
    }
    return data;
  }
}
