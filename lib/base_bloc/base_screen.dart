import 'package:bloc_basic_operations/base_bloc/base_bloc_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_bloc_event.dart';
import 'base_bloc_state.dart';
import 'bloc_base.dart';

abstract class BaseScreen<S, E extends BaseBlocEvent, T extends BaseBloc<E, S>> extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  T createBloc();

  initBloc(T bloc) {}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) {
          final bloc = createBloc();
          initBloc(bloc);
          return bloc;
        },
        child: Builder(
          builder: (blocContext) => BlocBuilder<T, S>(builder: (blocContext, state) {
            final bloc = getBloc(blocContext);
            return Stack(children: [
              Positioned.fill(child: buildPage(blocContext, bloc, state)),
              Positioned.fill(
                  child: LoadingIndicator(
                stateStream: bloc.baseStateStream,
              )),
              ErrorListener(
                stateStream: bloc.baseStateStream,
                onRetry: () {
                  bloc.retry();
                },
                onCancel: () {
                  bloc.clearState();
                },
              )
            ]);
          }),
        ));
  }

  Widget buildPage(BuildContext context, T bloc, S state);

  T getBloc(BuildContext context) {
    return context.read<T>();
  }
}

class ErrorListener extends StatelessWidget {
  final Stream<BaseBlocState> stateStream;
  final VoidCallback onRetry;
  final VoidCallback onCancel;

  const ErrorListener({required this.stateStream, required this.onRetry, required this.onCancel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stateStream,
      builder: (context, state) {
        if (state.hasData ? state.data is Error : false) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            _showErrorDialog(context, (state.data as Error).error);
          });
        }
        return const SizedBox.shrink();
      },
    );
  }

  Future<void> _showErrorDialog(BuildContext context, BaseBlocError error) async {
    final body = <Widget>[];
    if (error.message.isNotEmpty) {
      body.add(Text(error.message));
    }
    body.addAll(error.errors.map((e) => Text(e.runtimeType.toString())).toList());
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(error.title),
          content: SingleChildScrollView(
            child: ListBody(children: body),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                onCancel();
                Navigator.of(context).pop();
              },
            ),
            error.errors.isNotEmpty
                ? TextButton(
                    child: const Text('Retry'),
                    onPressed: () {
                      onRetry();
                      Navigator.of(context).pop();
                    },
                  )
                : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  final Stream<BaseBlocState> stateStream;

  const LoadingIndicator({required this.stateStream, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stateStream,
      builder: (context, state) {
        return Visibility(
          child: Container(
            color: Colors.black12,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          visible: state.hasData ? state.data is Loading : false,
          replacement: const SizedBox.shrink(),
        );
      },
    );
  }
}
