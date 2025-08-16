import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx/src/app/resource/constants/color_constants.dart';
import 'package:hubx/src/shared/mixin/log_mixin.dart';

class AppBlocObserver extends BlocObserver with LogMixin {
  AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logD(
      '${ColorConstants.warningTerminalColor}'
      '${bloc.runtimeType} onChange $change '
      '${ColorConstants.resetTerminalColor}',
    );
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    logD(
      '${ColorConstants.successTerminalColor}'
      '${bloc.runtimeType} created'
      '${ColorConstants.resetTerminalColor}',
    );
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    logD(
      '${ColorConstants.infoTerminalColor}'
      '${bloc.runtimeType} closed'
      '${ColorConstants.resetTerminalColor}',
    );
  }

  @override
  void onError(
    BlocBase<dynamic> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    super.onError(bloc, error, stackTrace);
    logD(
      '${ColorConstants.errorTerminalColor}'
      '${bloc.runtimeType} onError $error $stackTrace'
      '${ColorConstants.resetTerminalColor}',
    );
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    logD(
      '${ColorConstants.infoTerminalColor}'
      '${bloc.runtimeType} onEvent $event'
      '${ColorConstants.resetTerminalColor}',
    );
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    logD(
      '${ColorConstants.infoTerminalColor}'
      '${bloc.runtimeType} onTransition $transition'
      '${ColorConstants.resetTerminalColor}',
    );
  }
}
