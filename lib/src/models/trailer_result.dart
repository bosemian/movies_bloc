class Result {
  String _id;
  String _iso_639_1;
  String _iso_3166_1;
  String _key;
  String _name;
  String _site;
  int _size;
  String _type;

  Result(result) {
    _id = result['id'];
    _iso_639_1 = result['iso_639_1'];
    _iso_3166_1 = result['iso_3166_1'];
    _key = result['key'];
    _name = result['name'];
    _site = result['site'];
    _size = result['size'];
    _type = result['type'];
  }

  String get id => _id;

  String get iso_639_1 => _iso_639_1;

  String get iso_3166_1 => _iso_3166_1;

  String get key => _key;

  String get name => _name;

  String get site => _site;

  int get size => _size;

  String get type => _type;
}
