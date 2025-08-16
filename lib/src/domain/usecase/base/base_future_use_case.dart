import 'package:hubx/src/domain/usecase/base/base_use_case.dart';
import 'package:hubx/src/domain/usecase/base/io/base_input.dart';
import 'package:hubx/src/domain/usecase/base/io/base_output.dart';

abstract class BaseFutureUseCase<
  Input extends BaseInput,
  Output extends BaseOutput
>
    extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      logD('FutureUseCase Input: $input');

      final output = await buildUseCase(input);

      logD('FutureUseCase Output: $output');

      return output;
    } catch (e) {
      logE('FutureUseCase Error: $e');

      rethrow;
    }
  }
}
