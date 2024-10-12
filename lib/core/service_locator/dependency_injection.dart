import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:si_sehat/core/networking/api_service.dart';
import 'package:si_sehat/core/networking/dio_factory.dart';
import 'package:si_sehat/si_sehat/screens/login/controller/login_cubit.dart';
import 'package:si_sehat/si_sehat/screens/login/data/repositories/login_repo.dart';

final getIt = GetIt.instance;

  Future<void> setUpGetIt() async {
    Dio dio = DioFactory.getDio();

    ///Api Service
    getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

    ///Login Repo
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

    ///Login Cubit
    getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  }
