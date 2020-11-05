import "generation_i.dart";
import "generation_ii.dart";
import "generation_iii.dart";
import "generation_iv.dart";
import "generation_v.dart";
import "generation_vi.dart";
import "generation_vii.dart";
import "generation_viii.dart";

class Versions {
  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  GenerationVi generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;

  Versions(
      {this.generationI,
      this.generationIi,
      this.generationIii,
      this.generationIv,
      this.generationV,
      this.generationVi,
      this.generationVii,
      this.generationViii});

  Versions.fromJson(Map<String, dynamic> json) {
    generationI = json['generation-i'] != null
        ? new GenerationI.fromJson(json['generation-i'])
        : null;
    generationIi = json['generation-ii'] != null
        ? new GenerationIi.fromJson(json['generation-ii'])
        : null;
    generationIii = json['generation-iii'] != null
        ? new GenerationIii.fromJson(json['generation-iii'])
        : null;
    generationIv = json['generation-iv'] != null
        ? new GenerationIv.fromJson(json['generation-iv'])
        : null;
    generationV = json['generation-v'] != null
        ? new GenerationV.fromJson(json['generation-v'])
        : null;
    generationVi = json['generation-vi'] != null
        ? new GenerationVi.fromJson(json['generation-vi'])
        : null;
    generationVii = json['generation-vii'] != null
        ? new GenerationVii.fromJson(json['generation-vii'])
        : null;
    generationViii = json['generation-viii'] != null
        ? new GenerationViii.fromJson(json['generation-viii'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.generationI != null) {
      data['generation-i'] = this.generationI.toJson();
    }
    if (this.generationIi != null) {
      data['generation-ii'] = this.generationIi.toJson();
    }
    if (this.generationIii != null) {
      data['generation-iii'] = this.generationIii.toJson();
    }
    if (this.generationIv != null) {
      data['generation-iv'] = this.generationIv.toJson();
    }
    if (this.generationV != null) {
      data['generation-v'] = this.generationV.toJson();
    }
    if (this.generationVi != null) {
      data['generation-vi'] = this.generationVi.toJson();
    }
    if (this.generationVii != null) {
      data['generation-vii'] = this.generationVii.toJson();
    }
    if (this.generationViii != null) {
      data['generation-viii'] = this.generationViii.toJson();
    }
    return data;
  }
}
