import "version_group.dart";
import "move_learn_method.dart";

class VersionGroupDetails {
  int levelLearnedAt;
  VersionGroup versionGroup;
  MoveLearnMethod moveLearnMethod;

  VersionGroupDetails(
      {this.levelLearnedAt, this.versionGroup, this.moveLearnMethod});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    levelLearnedAt = json['level_learned_at'];
    versionGroup = json['version_group'] != null
        ? new VersionGroup.fromJson(json['version_group'])
        : null;
    moveLearnMethod = json['move_learn_method'] != null
        ? new MoveLearnMethod.fromJson(json['move_learn_method'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['level_learned_at'] = this.levelLearnedAt;
    if (this.versionGroup != null) {
      data['version_group'] = this.versionGroup.toJson();
    }
    if (this.moveLearnMethod != null) {
      data['move_learn_method'] = this.moveLearnMethod.toJson();
    }
    return data;
  }
}
