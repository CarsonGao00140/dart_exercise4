class User {
    final int id;
    final String firstName;
    final String lastName;

    User({
        required this.id,
        required this.firstName,
        required this.lastName
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName']
    );

    @override
    String toString() => '$id $firstName $lastName';
}