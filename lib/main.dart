import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gutta/application/cubit/weather_cubit.dart';
import 'package:gutta/infrastructure/repositories/weather_repository.dart';
import 'package:gutta/presentation/page/weather_search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider(
        create: (context) => WeatherCubit(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
