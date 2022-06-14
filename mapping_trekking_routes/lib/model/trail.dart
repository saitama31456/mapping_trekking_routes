class Trails {
  int? id;
  String? name;
  String? location;
  String? state;
  String? description;
  String? difficulty;
  String? elevation;
  String? length;
  String? image;

  Trails({
    required this.id,
    required this.name,
    required this.location,
    required this.state,
    required this.description,
    required this.difficulty,
    required this.elevation,
    required this.length,
    required this.image,
  });

  Trails.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.location = json['location'];
    this.state = json['states'];
    this.description = json['description'];
    this.difficulty = json['difficulty'];
    this.elevation = json['elevation'];
    this.length = json['length'];
    this.image = json['image'];
  }
}