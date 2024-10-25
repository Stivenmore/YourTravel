import 'package:equatable/equatable.dart';

class TapsModel extends Equatable {
  final String id;
  final String name;
  final String img;

  const TapsModel({
    required this.id,
    required this.name,
    required this.img,
  });

  static TapsModel fromJson(Map<String, dynamic> json) {
    return TapsModel(
      id: json['id'],
      name: json['name'],
      img: json['icon'],
    );
  }

  static const empty = TapsModel(id: '', name: '', img: '');

  @override
  List<Object?> get props => [
        id,
        name,
        img,
      ];
}
