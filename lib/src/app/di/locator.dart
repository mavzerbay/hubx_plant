import 'package:get_it/get_it.dart';
import 'package:hubx/src/app/base/bloc/auth/auth_bloc.dart';
import 'package:hubx/src/app/bloc/app_bloc.dart';
import 'package:hubx/src/app/navigation/app_router.dart';
import 'package:hubx/src/app/network/clients/base/build_dio_client.dart';
import 'package:hubx/src/app/network/clients/movie_client.dart';
import 'package:hubx/src/app/network/clients/user_client.dart';
import 'package:hubx/src/app/resource/constants/env_constants.dart';
import 'package:talker_flutter/talker_flutter.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerSingleton<AppRouter>(AppRouter());

  final dio = buildDioClient(EnvConstants.baseApiURL);

  locator
    ..registerSingleton<UserClient>(UserClient(dio))
    ..registerSingleton<MovieClient>(MovieClient(dio));

  final talker = TalkerFlutter.init(
    settings: TalkerSettings(
      colors: {
        TalkerLogType.debug.name: AnsiPen()..cyan(),
        TalkerLogType.error.name: AnsiPen()..red(),
        TalkerLogType.info.name: AnsiPen()..magenta(),
        TalkerLogType.warning.name: AnsiPen()..yellow(),
      },
    ),
  );

  locator.registerSingleton<Talker>(talker);

  final appBloc = AppBloc();

  final authBloc = AuthBloc()..appBloc = appBloc;

  locator
    ..registerLazySingleton<AppBloc>(() => appBloc)
    ..registerLazySingleton<AuthBloc>(() => authBloc);
}
