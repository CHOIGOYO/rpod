import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/state_notifier_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  const StateNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(shoppringListProvider);
    // prov.toList();
    return DefaultLayout(
      title: 'StateNotifierProviderScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            ...prov.map((e) => ListTile(
                  title: Text(e.name),
                  subtitle: Text('남은 수량: ${e.quantity}'),
                  trailing: Checkbox(
                    value: e.isBought,
                    onChanged: (value) {
                      ref
                          .read(shoppringListProvider.notifier)
                          .toggleHasBought(e.name);
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
