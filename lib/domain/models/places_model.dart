import 'package:equatable/equatable.dart';

class PlacesModel extends Equatable {
  final String id;
  final String name;
  final String opinion;
  final String img;

  const PlacesModel({
    required this.id,
    required this.name,
    required this.opinion,
    required this.img,
  });

  static PlacesModel fromJson(Map<String, dynamic> json) {
    return PlacesModel(
      id: json['id'],
      name: json['name'],
      opinion: json['opinion'],
      img: json['img'],
    );
  }

  static const empty = PlacesModel(id: '', name: '', img: '', opinion: '');

  @override
  List<Object?> get props => [
        id,
        name,
        opinion,
        img,
      ];
}
