import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:si_sehat/core/networking/api_service.dart';
import 'package:si_sehat/core/networking/dio_factory.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/network/specialization_api_service.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/repo/specialization_repo.dart';
import 'package:si_sehat/si_sehat/screens/login/controller/login_cubit.dart';
import 'package:si_sehat/si_sehat/screens/login/data/repo/login_repo.dart';
import 'package:si_sehat/si_sehat/screens/register/controller/register_cubit.dart';
import 'package:si_sehat/si_sehat/screens/register/data/repo/register_rep.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  ///Api Service
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///LOGIN
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  ///REGISTER
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  ///SPECIALIZATION
  getIt.registerLazySingleton<SpecializationApiService>(
      () => SpecializationApiService(dio));
  getIt.registerLazySingleton<SpecializationRepo>(
      () => SpecializationRepo(getIt()));
}
