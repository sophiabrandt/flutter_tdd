import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:flutter_tdd/features/number_trivia/presentation/bloc/number_trivia_state.dart';
import 'package:flutter_tdd/features/number_trivia/presentation/widgets/widgets.dart';

import '../../../../injection_container.dart';

class NumberTriviaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Number Trivia')), body: buildBody(context));
  }
}

BlocProvider<NumberTriviaBloc> buildBody(BuildContext context) {
  return BlocProvider(
      create: (_) => sl<NumberTriviaBloc>(),
      child: Center(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: <Widget>[
                SizedBox(height: 10),
                BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                    builder: (context, state) {
                  if (state is Loading) {
                    return LoadingWidget();
                  } else if (state is Loaded) {
                    return TriviaDisplay(numberTrivia: state.trivia);
                  } else if (state is Error) {
                    return MessageDisplay(message: state.message);
                  }
                  return MessageDisplay(message: 'Start searching!');
                }),
                SizedBox(height: 20),
                Column(children: <Widget>[
                  Placeholder(fallbackHeight: 40),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Expanded(child: Placeholder(fallbackHeight: 30)),
                      SizedBox(width: 10),
                      Expanded(child: Placeholder(fallbackHeight: 30))
                    ],
                  )
                ])
              ]))));
}
