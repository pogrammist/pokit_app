class Yellow {
  String backDefault;
  String backGray;
  String frontDefault;
  String frontGray;

  Yellow({this.backDefault, this.backGray, this.frontDefault, this.frontGray});

  Yellow.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'];
    backGray = json['back_gray'];
    frontDefault = json['front_default'];
    frontGray = json['front_gray'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['back_default'] = this.backDefault;
    data['back_gray'] = this.backGray;
    data['front_default'] = this.frontDefault;
    data['front_gray'] = this.frontGray;
    return data;
  }
}
