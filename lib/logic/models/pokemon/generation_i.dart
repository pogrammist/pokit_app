import "red_blue.dart";
import "yellow.dart";

class GenerationI {
  RedBlue redBlue;
  Yellow yellow;

  GenerationI({this.redBlue, this.yellow});

  GenerationI.fromJson(Map<String, dynamic> json) {
    redBlue = json['red-blue'] != null
        ? new RedBlue.fromJson(json['red-blue'])
        : null;
    yellow =
        json['yellow'] != null ? new Yellow.fromJson(json['yellow']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.redBlue != null) {
      data['red-blue'] = this.redBlue.toJson();
    }
    if (this.yellow != null) {
      data['yellow'] = this.yellow.toJson();
    }
    return data;
  }
}
