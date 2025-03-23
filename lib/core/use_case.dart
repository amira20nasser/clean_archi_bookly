import 'package:dartz/dartz.dart';
import 'errors/failure.dart';


abstract class UseCase<Type, Parm> {
  Future<Either<Failure, Type>> execute([Parm param]);
}
