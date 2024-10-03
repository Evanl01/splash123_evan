import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routeCubit.dart';
import 'routePage.dart';

void main() {
  runApp(const Splash123Evan());
}

class Splash123Evan extends StatelessWidget {
  const Splash123Evan({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RouteCubit(),
      child: MaterialApp(
        title: 'Route App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/route1',
        routes: {
          '/route1': (context) => RoutePage(
            title: 'Route 1',
            pageText: 'Page 1',
            currentRoute: 1,
          ),
          '/route2': (context) => RoutePage(
            title: 'Route 2',
            pageText: 'Page 2',
            currentRoute: 2,
          ),
          '/route3': (context) => RoutePage(
            title: 'Route 3',
            pageText: 'Page 3',
            currentRoute: 3,
          ),
        },
      ),
    );
  }
}