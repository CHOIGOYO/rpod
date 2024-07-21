import 'package:flutter/material.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/screen/auto_dispose_modifier_screen.dart';
import 'package:rpod/screen/family_modifier_screen.dart';
import 'package:rpod/screen/future_provider_screen.dart';
import 'package:rpod/screen/listen_provider_screen.dart';
import 'package:rpod/screen/select_provider_screen.dart';
import 'package:rpod/screen/state_notifier_provider_screen.dart';
import 'package:rpod/screen/state_provider_screen.dart';
import 'package:rpod/screen/stream_provider_sceen.dart';

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
              child: const Text('StateNotifierProviderScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const FutureProviderScreen()));
              },
              child: const Text('FutureProviderScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const SteamProviderScreen()));
              },
              child: const Text('SteamProviderScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const FamilyModifierScreen()));
              },
              child: const Text('FamilyModifierScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const AutoDisposeModifierScreen()));
              },
              child: const Text('AutoDisposeModifierScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const ListenProviderScreen()));
              },
              child: const Text('ListenProviderScreen')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const SelectProviderScreen()));
              },
              child: const Text('SelectProviderScreen')),
        ],
      ),
    );
  }
}
