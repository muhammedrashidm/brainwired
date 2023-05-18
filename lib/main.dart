import 'package:brainwired/app/DI.dart';
import 'package:brainwired/app/users_bloc/users_bloc.dart';
import 'package:brainwired/data/users/repository.dart';
import 'package:brainwired/presentation/home/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpDep();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UsersBloc>(
            create: (context) => UsersBloc(getIt<UserRepository>())
              ..add(const UsersEvent.started())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

