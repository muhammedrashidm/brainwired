import 'package:brainwired/presentation/home/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/users_bloc/users_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users"),),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state.hasError) {
            return Center(
              child: Text(state.error ?? ''),
            );
          }
          return ListView.builder(
            itemBuilder: (ctx, i) {
              final item = state.users[i];
              return ListTile(
                leading: Hero(tag: "icon_${item.id}",
                child: const Icon(Icons.person)),
                title: Text(item.name),
                subtitle: Text(item.username),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(data: item))),
              );
            },
            itemCount: state.users.length,
          );
        },
      ),
    );
  }
}
