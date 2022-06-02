class User {
  const User({
    this.id = _anonymousId,
    this.name = _anonymousName,
  }) : assert(id >= 0);

  const User.anonymous() : this();

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  String toJson() {
    return '{"id":$id, name: $name}';
  }

  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
