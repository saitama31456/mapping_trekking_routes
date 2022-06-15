import 'dart:math';

class Trail {
  final Random _random = Random();
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  int? id;
  String? name;
  String? location;
  String? state;
  String? description;
  String? difficulty;
  String? elevation;
  String? length;
  String? image;
  String? bestTimeToVisit;
  int? starCnt;
  String? time;

  Trail({
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

  Trail.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.location = json['location'];
    this.state = json['states'];
    this.description = json['description'];
    this.difficulty = json['difficulty'];
    this.elevation = json['elevation'];
    this.length = json['length'];
    this.image = json['image'];
    this.starCnt = _random.nextInt(4) + 1;
    this.bestTimeToVisit = months[_random.nextInt(11)];
    time = '${_random.nextInt(9) + 1} hr';
  }
}