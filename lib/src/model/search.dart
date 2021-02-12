import 'package:json_annotation/json_annotation.dart';
part 'search.g.dart';

@JsonSerializable(createToJson: false)
class Search {
  String title;
  String year;
  String imdbID;
  String type;
  String poster;

  Search({this.title, this.year, this.imdbID, this.type, this.poster});

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}