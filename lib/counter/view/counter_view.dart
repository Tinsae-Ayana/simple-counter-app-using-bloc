import 'package:counter_app/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterVeiw extends StatelessWidget {
  const CounterVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Counter App'),
          ),
          body: Center(
            child: BlocBuilder<CounterCubit, int>(builder: (context, text) {
              return Text(text.toString());
            }),
          ),
          floatingActionButton: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                ),
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                )
              ]),
        );
      }),
    );
  }
}
