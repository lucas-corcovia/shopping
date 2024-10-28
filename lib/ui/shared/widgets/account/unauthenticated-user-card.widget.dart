import 'package:flutter/material.dart';
import 'package:shopping/ui/android/pages/login.page.dart';
import 'package:shopping/ui/android/pages/signup.page.dart';

class UnauthenticatedUserCard extends StatelessWidget {
  const UnauthenticatedUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 60,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          child: const Text("Autentique-se"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignupPage(),
              ),
            );
          },
          child: const Text("Ainda não sou cadastrado"),
        ),
      ],
    );
  }
}
