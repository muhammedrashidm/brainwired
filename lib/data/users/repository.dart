import 'package:brainwired/Domain/users/i_repository.dart';
import 'package:brainwired/Domain/users/user_modal.dart';
import 'package:brainwired/app/globals/failiure.dart';
import 'package:brainwired/data/core/DioManager.dart';
import 'package:brainwired/data/core/mapper.dart';
import 'package:brainwired/data/users/user_response/user_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class UserRepository extends IUsersRepository {
  final DioManager dio;

  UserRepository(this.dio);
  @override
  Future<Either<Failure, List<UserData>>> getUsers() async {
    List<UserData> data = [];
    try {
      final res = await dio.get('/users');
      if (res.statusCode == 200) {
        final result = res.data as List<dynamic>;
        for (var item in result) {
          data.add(
              UserResponse.fromJson(item as Map<String, dynamic>).toDomain());
        }
        return Right(data);
      } else {
        return Left(Failure(""));
      }
    } on DioError catch (e) {
      return Left(Failure(e.response?.statusMessage ?? ''));
    }catch (e) {
      return Left(Failure("Unknown Error"));
    }
  }
}
