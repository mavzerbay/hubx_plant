import 'package:flutter/material.dart';
import 'package:hubx/src/domain/usecase/base/io/base_input.dart';
import 'package:hubx/src/shared/mixin/log_mixin.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
