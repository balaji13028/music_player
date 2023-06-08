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
      image: "https://naasongsmix.com/wp-content/uploads/2022/11/Safari.jpg"),
  FavouritesModel(
    title: 'Millions',
    description: 'Always never',
    image: "https://www.pagalworld.com.se/siteuploads/thumb/sft15/7120_4.jpg",
  ),
  FavouritesModel(
    title: "I'm good(Blue)",
    description: 'David guetta & bebe rexha',
    image:
        "https://naasongspro.com/wp-content/uploads/2022/06/maxresdefault-12.jpg",
  ),
  FavouritesModel(
    title: 'Forget me',
    description: 'Lewis capaidi',
    image:
        "https://naasongspro.com/wp-content/uploads/2022/04/maxresdefault-2-2.jpg",
  ),
  FavouritesModel(
    title: 'Family tourism',
    description: 'Always never',
    image: "https://www.pagalworld.com.se/siteuploads/thumb/sft15/7120_4.jpg",
  ),
  FavouritesModel(
      title: 'Under the unfluence',
      description: 'Chris brown',
      image: "https://naasongsmix.com/wp-content/uploads/2022/11/Safari.jpg"),
  FavouritesModel(
    title: 'People',
    description: 'Libianca ft. Becky G',
    image:
        "https://naasongspro.com/wp-content/uploads/2022/04/maxresdefault-2-2.jpg",
  ),
  FavouritesModel(
    title: 'Sky',
    description: 'Drop',
    image:
        "https://naasongspro.com/wp-content/uploads/2022/06/maxresdefault-12.jpg",
  ),
  FavouritesModel(
      title: 'Worth Nothing',
      description: 'Twisted, Oliver Tree',
      image: "https://naasongsmix.com/wp-content/uploads/2022/11/Safari.jpg"),
  FavouritesModel(
    title: 'Empty',
    description: 'Serhat Durmus',
    image: "https://www.pagalworld.com.se/siteuploads/thumb/sft15/7120_4.jpg",
  ),
];
