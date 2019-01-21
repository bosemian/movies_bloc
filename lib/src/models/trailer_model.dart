import './trailer_result.dart';

class TrailerModel {
  int _id;
  List<Result> Results = [];

  TrailerModel.fromJson(Map<String, dynamic> parsedJson) {
    _id = parsedJson['id'];
    List<Result> temp = [];
    for (int i = 0; i < parsedJson['results'].length; i++) {
      Result result = Result(parsedJson['results'][i]);
      temp.add(result);
    }
    Results = temp;
  }

  List<Result> get results => Results;

  int get id => _id;
}
