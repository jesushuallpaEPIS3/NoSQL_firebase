class Item {
  String id;
  String name;

  Item({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  Item.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'];
}
