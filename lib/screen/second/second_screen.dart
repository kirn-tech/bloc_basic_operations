import 'package:bloc_basic_operations/screen/second/second_screen_bloc.dart';
import 'package:bloc_basic_operations/screen/second/second_screen_state.dart';
import 'package:bloc_basic_operations/screen/third/third_screen.dart';
import 'package:flutter/material.dart';

import '../../base_bloc/base_bloc_event.dart';
import '../../base_bloc/base_screen.dart';
import 'model.dart';

class SecondScreen extends BaseScreen<SecondScreenState, BaseBlocEvent, SecondScreenBloc> {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  SecondScreenBloc createBloc() => SecondScreenBloc();

  @override
  Widget buildPage(BuildContext context, SecondScreenBloc bloc, SecondScreenState state) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'First Response is mapped with Second Request.\n'
                    'Retry in mapped operations restarts failed request.\n'
                    'Chain execution is resumed.\n',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16)),
              ),
              const SizedBox(height: 24),
              Text('Request1: ${state.response1}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 8),
              Text('Request2: ${state.response2}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 8),
              Text('Request3: ${state.response3}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  bloc.sendRequest2MappedWithResponse1(Request1());
                  bloc.sendRequest3(Request3());
                },
                child: Text('Send Request', style: Theme.of(context).textTheme.bodyText1),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  bloc.clearState();
                },
                child: Text('Clear State', style: Theme.of(context).textTheme.bodyText1),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThirdScreen()));
                },
                child: Text('Show Third Screen', style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
