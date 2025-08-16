import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx/src/app/base/bloc/base_bloc.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_event.dart';
import 'package:hubx/src/app/base/bloc/base_bloc_state.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends BaseBloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const _DashboardState()) {
    on<_Started>(
      _onStarted,
      transformer: log(),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<DashboardState> emit) async {
    return runBlocCatching(
      action: () async {
        // TODO: Implement the initial data fetching logic
      },
      handleError: false,
      handleLoading: false,
    );
  }
}
