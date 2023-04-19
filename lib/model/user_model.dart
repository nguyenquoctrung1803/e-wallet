// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  UserModel(this.firstName, this.lastName, this.email, this.phone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['firstName'] as String,
      map['lastName'] as String,
      map['email'] as String,
      map['phone'] as String,
    );
  }
}
