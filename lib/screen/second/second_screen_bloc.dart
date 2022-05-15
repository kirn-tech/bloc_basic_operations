import 'package:bloc_basic_operations/base_bloc/bloc_base.dart';
import 'package:bloc_basic_operations/screen/second/use_case.dart';
import 'package:bloc_basic_operations/screen/second/second_screen_state.dart';

import '../../base_bloc/base_bloc_event.dart';
import '../../base_bloc/bloc_async_operation.dart';
import 'model.dart';

class SecondScreenBloc extends BaseBloc<BaseBlocEvent, SecondScreenState> {
  final _useCase = UseCase();

  SecondScreenBloc() : super(SecondScreenState());

  @override
  SecondScreenState copyWithSelector(result) => state.copyWithSelector(result);

  @override
  SecondScreenState getInitialState() => SecondScreenState();

  void sendRequest2MappedWithResponse1(Request1 request1) {
    final ao = AsyncOperation<Response1>(() => _useCase.sendRequest1(request1));

    final mappedAO = AsyncOperationMapper<Response1, Response2>(
        ao, (response1) => AsyncOperation(() => _useCase.sendRequest2(Request2(response1))));

    add(mappedAO);
  }

  void sendRequest3(Request3 request3) {
    add(AsyncOperation(() => _useCase.sendRequest3(request3)));
  }
}
