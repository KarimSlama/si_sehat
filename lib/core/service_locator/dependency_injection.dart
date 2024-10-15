import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:si_sehat/core/networking/api_service.dart';
import 'package:si_sehat/core/networking/dio_factory.dart';
import 'package:si_sehat/si_sehat/screens/login/controller/login_cubit.dart';
import 'package:si_sehat/si_sehat/screens/login/data/repo/login_repo.dart';
import 'package:si_sehat/si_sehat/screens/register/controller/register_cubit.dart';
import 'package:si_sehat/si_sehat/screens/register/data/repo/register_rep.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  ///Api Service
  getIt.registerFactory<ApiService>(() => ApiService(dio));

  ///LOGIN
  //Login Repo
  getIt.registerFactory<LoginRepo>(() => LoginRepo(getIt()));
  //Login Cubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  ///REGISTER
//Register Repo
  getIt.registerFactory<RegisterRepo>(() => RegisterRepo(getIt()));
  //Register Cubit
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
