class Cast {
  final int id;
  final String character;
  final String name;
  final String img;

  Cast(this.id, this.character, this.name, this.img);

  Cast.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        character = json["known_for_department"],
        name = json["name"],
        img = json["profile_path"];
}
