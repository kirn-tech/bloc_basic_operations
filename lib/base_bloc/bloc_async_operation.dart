import 'dart:async';
import 'package:bloc_basic_operations/base_bloc/base_bloc_error.dart';

import 'base_bloc_event.dart';
import 'base_bloc_state.dart';

mixin AsyncOperationRegistrar {
  final _baseStateController = StreamController<BaseBlocState>.broadcast();

  Stream<BaseBlocState> get baseStateStream => _baseStateController.stream;
  Map<int, AsyncOperation>? _operations;
  int _operationNumber = 0;
  int runningOperationCount = 0;

  startOperation(AsyncOperation operation) {
    if (runningOperationCount == 0) {
      _baseStateController.add(const BaseBlocState.loading());
    }
    runningOperationCount++;
    _operations ??= {};
    if (operation._id == -1) {
      operation._id = ++_operationNumber;
      _operations?.putIfAbsent(operation._id, () => operation);
    }
  }

  endOperation(AsyncOperation operation) {
    --runningOperationCount;
    if (operation._error == null) {
      _operations?.remove(operation._id);
    }

    if (runningOperationCount == 0) {
      final failedOperations = getFailedOperations();
      if (failedOperations.isEmpty) {
        _baseStateController.add(const BaseBlocState.success());
        _operations = null;
      } else {
        final errors = failedOperations.map((e) => e._error).toList();
        final reducedList = errorReducer(errors);
        final blocError = buildError(reducedList);
        _operations?.removeWhere((key, value) => !reducedList.contains(value._error));
        _baseStateController.add(BaseBlocState.error(blocError));
      }
    }
  }

  BaseBlocError buildError(List<dynamic> reducedErrors) {
    return BaseBlocError(title: "The Following Errors occurred:", message: "", errors: reducedErrors);
  }

  List<dynamic> errorReducer(List<dynamic> errors) {
    return errors;
  }

  List<AsyncOperation> getFailedOperations() {
    return _operations != null ? _operations!.values.where((element) => element._error != null).toList() : [];
  }

  clearOperationRegistrar() {
    _operations = null;
    _operationNumber = 0;
    runningOperationCount = 0;
    _baseStateController.add(const BaseBlocState.success());
  }

  Future<void> close() async {
    await _baseStateController.close();
  }
}

class AsyncOperation<T> extends BaseBlocEvent {
  int _id = -1;
  Future<T> Function() operation;
  dynamic _error;

  AsyncOperation(this.operation);

  Future<T?> run(AsyncOperationRegistrar runner) async {
    try {
      runner.startOperation(this);
      final result = await operation.call();
      _error = null;
      return result;
    } catch (e) {
      _error = e;
    } finally {
      runner.endOperation(this);
    }
  }

  dynamic get error => _error;
}

class AsyncOperationMapper<T, D> extends AsyncOperation<dynamic> {
  AsyncOperation<D> Function(T) next;

  AsyncOperationMapper(AsyncOperation<T> source, this.next) : super(source.operation);

  @override
  Future<D?> run(AsyncOperationRegistrar runner) async {
    final result = await super.run(runner) as T?;
    if (result != null) {
      return next(result).run(runner);
    } else {
      return null;
    }
  }
}

class RetryFailedOperations extends BaseBlocEvent {}
