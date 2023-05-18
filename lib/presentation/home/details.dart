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
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                  tag: "icon_${data.id}",
                  child: const Icon(
                    Icons.person,
                    size: 64,
                  )),
              Text(data.username),
              Text(data.email),
              Text(data.company.name),
              const SizedBox(
                height: 20,
              ),
              const Icon(
                Icons.location_on,
                size: 26,
              ),
              Wrap(
                children: [
                  Text(data.address.suite),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(data.address.street),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(data.address.city),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(data.address.zipcode),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
