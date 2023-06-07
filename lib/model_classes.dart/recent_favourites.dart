// ignore_for_file: public_member_api_docs, sort_constructors_first
class FavouritesModel {
  String? title, description;
  var image;

  FavouritesModel({
    this.title,
    this.description,
    this.image,
  });

  @override
  String toString() =>
      'RecentFavModel(description: $description, image: $image)';
}

List<FavouritesModel> favouritesList = [
  FavouritesModel(
    title: 'Bright Hits',
    description: 'The most popular and striking music news',
  ),
  FavouritesModel(
    title: 'Millions',
    description: 'Always never',
  ),
  FavouritesModel(
    title: "I'm good(Blue)",
    description: 'David guetta & bebe rexha',
  ),
  FavouritesModel(
    title: 'Forget me',
    description: 'Lewis capaidi',
  ),
  FavouritesModel(
    title: 'Family tourism',
    description: 'Always never',
  ),
  FavouritesModel(
    title: 'Under the unfluence',
    description: 'Chris brown',
  ),
  FavouritesModel(
    title: 'People',
    description: 'Libianca ft. Becky G',
  ),
  FavouritesModel(
    title: 'Sky',
    description: 'Drop',
  ),
  FavouritesModel(
    title: 'Worth Nothing',
    description: 'Twisted, Oliver Tree',
  ),
  FavouritesModel(
    title: 'Empty',
    description: 'Serhat Durmus',
  ),
];
