import 'dart:io';

import 'package:chat_app/util/error.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  //Future<Either<Failuer, List<ProfileModel>>> getAllUser();
  // Future<Either<Failuer, List<ProfileModel>>> storedateFirebase({required String name,required String id, File? filephoto});
  Future<Either<Failuer, bool>> storedateFirebase({required String name,required String id, File? filephoto});

}
