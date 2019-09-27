import 'package:happ/src/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future login(UserEntity param);
  Future logout();
}