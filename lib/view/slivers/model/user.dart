class User {
  String? title;
  String? subtitle;
  String? img;

  User({
    this.title,
    this.subtitle,
    this.img,
  });
}

class UserCardList {
  late final List<User> items;

  UserCardList.init() {
    items = [
      User(
          title: "Rick Sanchez",
          subtitle: "Male",
          img: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"),
      User(
          title: "Morty Smith",
          subtitle: "Male",
          img: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"),
      User(
          title: "Summer Smith",
          subtitle: "Male",
          img: "https://rickandmortyapi.com/api/character/avatar/3.jpeg"),
      User(
          title: "Beth Smith",
          subtitle: "Female",
          img: "https://rickandmortyapi.com/api/character/avatar/4.jpeg"),
    ];
  }
}
