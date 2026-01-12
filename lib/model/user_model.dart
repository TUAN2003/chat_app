class UserModel {
  final String id;
  final String name;
  final String userName;
  final SexType sex;
  final DateTime birthDay;

  const UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.sex,
    required this.birthDay,
  });
}

enum SexType { male, fmale, other }
