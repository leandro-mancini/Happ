import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:happ/src/domain/entities/user_entity.dart';
import 'package:happ/src/domain/interfaces/repository/user_repository.dart';

import 'environments.dart';

class UserRepository implements IUserRepository {
  
  Environments environments = new Environments();

  @override
  Future login(UserEntity param) async {
    final client = http.Client();
    final backend = environments.baseUrl + '/usuarios?username=' + param.username + '&password=' + param.password + '';
    final response = await client.get(backend);
    final statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400) {
      throw new Exception('Error: ' + statusCode.toString());
    }

    if (statusCode == 200) {
      List<dynamic> data = json.decode(response.body);

      if (data.length > 0) {
        return new UserEntity.fromJson(data[0]);
      }
    }

    return null;
  }

  @override
  Future logout() {
    return null;
  }

}