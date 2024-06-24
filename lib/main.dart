import 'package:bloceggggggg/apibloc/apibloc_bloc.dart';
import 'package:bloceggggggg/counter_bloc.dart';
import 'package:bloceggggggg/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(
            create: (BuildContext context) => CounterBloc(),
          ),
          BlocProvider<ApiblocBloc>(
            create: (BuildContext context) => ApiblocBloc()..add(ApiblocEvent()),
          ),
        ],
        child: CounterAppEg(),
      ),
    );
  }
}

class CounterAppEg extends StatelessWidget {
  const CounterAppEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text("${state.count}");
            },
          ),
          // BlocBuilder<ApiblocBloc, ApiblocState>(
          //   builder: (context, state) {
          //     return ListView.builder(
          //       itemCount: state.productlist!.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         return ListTile(
          //           title: CircleAvatar(
          //             backgroundImage: NetworkImage("${state.productlist![index].thumbnail}"),
          //           ),
          //         );
          //       },);
          //   },
          // )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Icrement());
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Decrement());
            },
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

