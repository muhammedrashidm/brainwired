import 'package:dartz/dartz.dart';

import '../../app/globals/failiure.dart';

abstract class IUsersRepository {
  Future<Either<Failure, dynamic>> getUsers();
}
