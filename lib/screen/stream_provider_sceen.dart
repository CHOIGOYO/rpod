import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/stream_provider.dart';

class SteamProviderScreen extends ConsumerWidget {
  const SteamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(multipleStreamProvider);
    return DefaultLayout(
      title: 'SteamProviderScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: prov.when(
            data: (data) {
              return Text(data.toString());
            },
            error: (error, stack) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
