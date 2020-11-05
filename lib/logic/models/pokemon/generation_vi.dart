import "omegaruby_alphasapphire.dart";
import "xy.dart";

class GenerationVi {
  OmegarubyAlphasapphire omegarubyAlphasapphire;
  XY xY;

  GenerationVi({this.omegarubyAlphasapphire, this.xY});

  GenerationVi.fromJson(Map<String, dynamic> json) {
    omegarubyAlphasapphire = json['omegaruby-alphasapphire'] != null
        ? new OmegarubyAlphasapphire.fromJson(json['omegaruby-alphasapphire'])
        : null;
    xY = json['x-y'] != null ? new XY.fromJson(json['x-y']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.omegarubyAlphasapphire != null) {
      data['omegaruby-alphasapphire'] = this.omegarubyAlphasapphire.toJson();
    }
    if (this.xY != null) {
      data['x-y'] = this.xY.toJson();
    }
    return data;
  }
}
