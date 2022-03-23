class AmiiboModel {
  String? level;
  String? gameSeries;
  String ? name;
  String ? image;

  AmiiboModel({ this.name, this.level, this.gameSeries, this.image});

  factory AmiiboModel.fromMapJson(Map<String, dynamic> json) {
    return AmiiboModel(
      name: json['name'],
      level: json['level'],
      gameSeries: json['gameSeries'],
      image: json['img']
    );
  }
}
