import 'package:json_annotation/json_annotation.dart';

import 'search.dart';
part 'result.g.dart';

@JsonSerializable(createToJson: false)
class Result {
  List<Search> search;
  String totalResults;
  String response;

  Result({this.search, this.totalResults, this.response});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}