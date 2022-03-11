import 'package:flutter_bloc_base/data/remote/repository/abstracts/user_repository.dart';
import 'package:flutter_bloc_base/models/user.dart';

class FakeUserRepositoryImpl implements UserRepository {
  User _user = User(
    id: '1',
    fullName: 'David NV',
    firstName: 'David',
    avatarUrl: '',
  );
  @override
  Future<User> getUserInfo() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return _user;
  }

  @override
  Future<void> updateUserInfo(User user) async {
    _user = _user.copyWith(
      firstName: user.firstName,
      fullName: user.fullName,
      avatarUrl: user.avatarUrl,
    );
    await Future.delayed(const Duration(seconds: 1));
  }
}
