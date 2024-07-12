import 'package:flutter/material.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/screen/state_notifier_provider_screen.dart';
import 'package:rpod/screen/state_provider_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const StateProviderScreen()));
              },
              child: const Text('StateProviderScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const StateNotifierProviderScreen()));
              },
              child: const Text('StateNotifierProviderScreen'))
        ],
      ),
    );
  }
}
