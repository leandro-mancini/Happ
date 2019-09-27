import 'package:happ/src/data/repository/user_repository.dart';
import 'package:happ/src/domain/entities/user_entity.dart';
import 'package:happ/src/domain/interfaces/usecases/user_usecase.dart';

class UserUsecase implements IUserUsecase {

  UserRepository userRepository = new UserRepository();

  @override
  Future login(UserEntity param) {
    return this.userRepository.login(param);
  }

  @override
  Future logout() {
    return this.userRepository.logout();
  }

}