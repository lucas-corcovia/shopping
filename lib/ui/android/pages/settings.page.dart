import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping/blocs/theme.bloc.dart';
import 'package:shopping/settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<ThemeBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            "Tema atual ${Settings.theme}",
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text("Light"),
            onPressed: () {
              save("light");
              bloc.change('light');
            },
          ),
          TextButton(
            child: const Text("Dark"),
            onPressed: () {
              save("dark");
              bloc.change('dark');
            },
          ),
          TextButton(
            child: const Text("Dark Yellow"),
            onPressed: () {
              save("dark-yellow");
              bloc.change('dark-yellow');
            },
          ),
        ],
      ),
    );
  }

  save(theme) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);
  }
}
