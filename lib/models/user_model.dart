class UserModel {
  UserModel({
    this.id,
    this.name,
    this.age,
    this.city,
    this.description,
    this.grade,
    this.location,
    this.photo,
  });

  int? id;
  String? name;
  int? age;
  String? city;
  String? description;
  String? grade;
  String? location;
  String? photo;
}

List<UserModel> users = [
  UserModel(
    id: 1,
    name: "Gustavo",
    age: 31,
    city: "Lima",
    description: "To create a local project with this code sample, run",
    grade: "Instructor",
    location: "8 Kilometre Away",
    photo:
        "https://i.pinimg.com/474x/f9/de/e0/f9dee0b75817bf653cdeca1e5e0cb610.jpg",
  ),
  UserModel(
    id: 2,
    name: "Cristina",
    age: 24,
    city: "Lima",
    description: "To create a local project with this code sample, run",
    grade: "Developer",
    location: "18 Kilometre Away",
    photo:
        "https://i.pinimg.com/474x/07/cc/06/07cc06da77a49e8f7aad4e0467ba4b2b.jpg",
  ),
];
