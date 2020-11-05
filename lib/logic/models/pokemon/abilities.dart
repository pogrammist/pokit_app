import "ability.dart";

class Abilities {
  bool isHidden;
  int slot;
  Ability ability;

  Abilities({this.isHidden, this.slot, this.ability});

  Abilities.fromJson(Map<String, dynamic> json) {
    isHidden = json['is_hidden'];
    slot = json['slot'];
    ability =
        json['ability'] != null ? new Ability.fromJson(json['ability']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_hidden'] = this.isHidden;
    data['slot'] = this.slot;
    if (this.ability != null) {
      data['ability'] = this.ability.toJson();
    }
    return data;
  }
}
