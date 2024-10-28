import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/user.bloc.dart';

class AuthenticatedUserCard extends StatelessWidget {
  const AuthenticatedUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UserBloc>(context);

    return Container(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(bloc.user!.image!),
                  fit: BoxFit.fill,
                ),
                color: Theme.of(context).primaryColor,
                border: Border.all(
                  width: 4.0,
                  color: const Color(0xFFFFFFFF),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(200),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: bloc.logout(),
              child: const Text("Sair"),
            ),
          ],
        ),
      ),
    );
  }
}
