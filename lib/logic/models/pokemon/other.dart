import "dream_world.dart";
import "official_artwork.dart";

class Other {
  DreamWorld dreamWorld;
  OfficialArtwork officialArtwork;

  Other({this.dreamWorld, this.officialArtwork});

  Other.fromJson(Map<String, dynamic> json) {
    dreamWorld = json['dream_world'] != null
        ? new DreamWorld.fromJson(json['dream_world'])
        : null;
    officialArtwork = json['official-artwork'] != null
        ? new OfficialArtwork.fromJson(json['official-artwork'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dreamWorld != null) {
      data['dream_world'] = this.dreamWorld.toJson();
    }
    if (this.officialArtwork != null) {
      data['official-artwork'] = this.officialArtwork.toJson();
    }
    return data;
  }
}
