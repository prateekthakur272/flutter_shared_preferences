import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _name = TextEditingController();
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SharedPreferences.getInstance().then((prefs) {
      _name.text = (prefs.getString('name')) ?? '';
      _email.text = prefs.getString('email') ?? '';
    });

    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(hintText: 'Name'),
                controller: _name,
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: const InputDecoration(hintText: 'Email'),
                controller: _email,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {
                        SharedPreferences.getInstance().then((prefs) {
                          prefs.setString('name', _name.text);
                          prefs.setString('email', _email.text);
                        });
                      },
                      child: const Text('Save')))
            ],
          ),
        ),
      ),
    );
  }
}
