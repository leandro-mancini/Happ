import 'package:happ/src/domain/entities/user_entity.dart';

abstract class IUserUsecase {
  Future login(UserEntity param);
  Future logout();
}