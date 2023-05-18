import 'package:brainwired/Domain/users/user_modal.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.data}) : super(key: key);
  final UserData data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(tag: "icon_${data.id}",
              child: Icon(Icons.person,size: 64,)),
              Text(data.username),
              Text(data.email),
              Text(data.company.name),

          ],),
        ),
      ),
    );
  }
}
