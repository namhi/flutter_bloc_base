import '../../../../models/user.dart';

abstract class UserRepository {
  Future<User> getUserInfo();
  Future<void> updateUserInfo(User user);
}
