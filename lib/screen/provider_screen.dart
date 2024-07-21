import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/provider.dart';

import '../riverpod/state_notifier_notifier_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(filteredShoppingList);
    print(prov);
    return DefaultLayout(
      title: 'ProviderScreen',
      actions: [
        PopupMenuButton<FilterState>(
          itemBuilder: (_) => FilterState.values
              .map(
                (e) => PopupMenuItem(
                  value: e,
                  child: Text(e.name),
                ),
              )
              .toList(),
          onSelected: (value) {
            print(value);
            ref.read(filterProvider.notifier).state = value;
          },
        )
      ],
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
