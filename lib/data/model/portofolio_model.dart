class PortofolioModel {
  final String id;
  final String symbol;
  final String name;
  final String image;

  PortofolioModel(this.id, this.name, this.symbol, this.image);

  Map<String, dynamic> toMap() {
    return {'id': id, 'symbol': symbol, 'name': name, 'image': image};
  }

  factory PortofolioModel.fromMap(Map<dynamic, dynamic> map) {
    return PortofolioModel(
      map['id'] as String,
      map['name'] as String,
      map['symbol'] as String,
      map['image'] as String,
    );
  }
}
