import 'package:bloc_basic_operations/base_bloc/base_bloc_error.dart';
import 'package:bloc_basic_operations/base_bloc/bloc_base.dart';
import 'package:bloc_basic_operations/screen/first/first_screen_state.dart';
import 'package:bloc_basic_operations/screen/first/use_case.dart';

import '../../base_bloc/base_bloc_event.dart';
import '../../base_bloc/bloc_async_operation.dart';
import 'model.dart';

class FirstScreenBloc extends BaseBloc<BaseBlocEvent, FirstScreenState> {
  final _useCase = UseCase();

  FirstScreenBloc() : super(FirstScreenState());

  @override
  FirstScreenState copyWithSelector(result) => state.copyWithSelector(result);

  @override
  FirstScreenState getInitialState() => FirstScreenState();

  void sendRequest1(Request1 request1) {
    add(AsyncOperation(() => _useCase.sendRequest1(request1)));
  }

  void sendRequest2(Request2 request2) {
    add(AsyncOperation(() => _useCase.sendRequest2(request2)));
  }

  void sendRequest3(Request3 request3) {
    add(AsyncOperation(() => _useCase.sendRequest3(request3)));
  }

  void sendRequest4(Request4 request4) {
    add(AsyncOperation(() => _useCase.sendRequest4(request4)));
  }

  void sendRequest5(Request5 request5) {
    add(AsyncOperation(() => _useCase.sendRequest5(request5)));
  }

}
