import 'package:todo/data/remote/users_remote_impl.dart';
import 'package:todo/domain/repositories/users_repository.dart';

import '../../domain/entities/response/users_response.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteImpl _remoteData;

  UsersRepositoryImpl({required UsersRemoteImpl remoteData})
      : _remoteData = remoteData;

  @override
  Future<UsersResponse> getUsers() async {
    final response = await _remoteData.getUsers();

    if (response.statusCode == 200) {
      return UsersResponse.fromJson(response.data);
    } else {
      return UsersResponse.empty();
    }
  }
}
