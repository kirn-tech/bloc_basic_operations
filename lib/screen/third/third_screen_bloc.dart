import 'package:bloc_basic_operations/base_bloc/base_bloc_error.dart';
import 'package:bloc_basic_operations/base_bloc/bloc_base.dart';
import 'package:bloc_basic_operations/screen/third/use_case.dart';
import 'package:bloc_basic_operations/screen/third/third_screen_state.dart';

import '../../base_bloc/base_bloc_event.dart';
import '../../base_bloc/bloc_async_operation.dart';
import 'model.dart';

class ThirdScreenBloc extends BaseBloc<BaseBlocEvent, ThirdScreenState> {
  final _useCase = UseCase();

  ThirdScreenBloc() : super(ThirdScreenState());

  @override
  ThirdScreenState copyWithSelector(result) => state.copyWithSelector(result);

  @override
  ThirdScreenState getInitialState() => ThirdScreenState();

  void sendRequest1(Request1 request1) {
    add(AsyncOperation(() => _useCase.sendRequest1(request1)));
  }

  void sendRequest2(Request2 request2) {
    add(AsyncOperation(() => _useCase.sendRequest2(request2)));
  }

  void sendRequest3(Request3 request3) {
    add(AsyncOperation(() => _useCase.sendRequest3(request3)));
  }

  @override
  List errorReducer(List errors) => errors.where((e) => e is! IgnoredException).toList();


  @override
  BaseBlocError buildError(List reducedErrors) {
    String message = "";
    if (getFailedOperations().length > reducedErrors.length) {
      final sb = StringBuffer();
      sb.write('Reduced Error:');
      getFailedOperations().forEach((e) {
        if (!reducedErrors.contains(e.error)) {
          sb.write(e.error.runtimeType.toString());
        }
      });
      message = sb.toString();
    }
    return BaseBlocError(title: "The Following Errors occurred:", message: message, errors: reducedErrors);
  }
}
