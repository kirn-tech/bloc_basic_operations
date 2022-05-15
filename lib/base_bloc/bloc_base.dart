import 'package:bloc/bloc.dart';

import 'base_bloc_event.dart';
import 'bloc_async_operation.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S> extends Bloc<BaseBlocEvent, S> with AsyncOperationRegistrar {
  BaseBloc(S initialState) : super(initialState) {
    on<AsyncOperation>((operation, emit) async {
      dynamic result = await operation.run(this);
      emit(copyWithSelector(result));
    });

    on<ClearState>((event, emit) {
      clearOperationRegistrar();
      emit(getInitialState());
    });
  }

  S copyWithSelector(result);

  S getInitialState();

  void retry() {
    getFailedOperations().forEach((operation) {
      add(operation);
    });
  }

  void clearState() {
    add(ClearState());
  }
}
