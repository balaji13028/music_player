// ignore_for_file: public_member_api_docs, sort_constructors_first
class SongCategory {
  int? id;
  String? title;

  SongCategory({
    this.id,
    this.title,
  });
}

List<SongCategory> songCetegoryList = [
  SongCategory(title: 'Trending right now', id: 1),
  SongCategory(title: 'Rock', id: 2),
  SongCategory(title: 'Hip Hop', id: 3),
  SongCategory(title: 'Electro', id: 4),
  SongCategory(title: 'Rap', id: 5),
  SongCategory(title: 'folk', id: 6),
];
