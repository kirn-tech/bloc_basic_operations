import 'package:bloc_basic_operations/screen/first/first_screen_bloc.dart';
import 'package:bloc_basic_operations/screen/first/first_screen_state.dart';
import 'package:bloc_basic_operations/screen/second/second_screen.dart';
import 'package:flutter/material.dart';

import '../../base_bloc/base_bloc_event.dart';
import '../../base_bloc/base_screen.dart';
import 'model.dart';

class FirstScreen extends BaseScreen<FirstScreenState, BaseBlocEvent, FirstScreenBloc> {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  FirstScreenBloc createBloc() => FirstScreenBloc();

  @override
  Widget buildPage(BuildContext context, FirstScreenBloc bloc, FirstScreenState state) {
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
                    'Requests start simultaneously, run in parallel.\n'
                    'Loading or error shown once all Requests complete.\n'
                    'Only failed Requests are retried.',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16)),
              ),
              const SizedBox(height: 24),
              Text('Request1: ${state.response1}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 8),
              Text('Request2: ${state.response2}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 8),
              Text('Request3: ${state.response3}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 8),
              Text('Request4: ${state.response4}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 8),
              Text('Request5: ${state.response5}', style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  bloc.sendRequest1(Request1());
                  bloc.sendRequest2(Request2());
                  bloc.sendRequest3(Request3());
                  bloc.sendRequest4(Request4());
                  bloc.sendRequest5(Request5());
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
                },
                child: Text('Show Second Screen', style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
