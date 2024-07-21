import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/select_provicer.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 특정 값만 변경되는 걸 select 해서 rebuild 하거나 값을 가져올 수 있음
    final prov = ref.watch(SelectProvider.select((value) => value.isSpicy));
    ref.listen(SelectProvider.select((value) => value.isBought), (prevm, next) {
      print('next: $next');
    });
    print('build');
    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(prov.toString()),

          // Text(prov.name),
          // Text(prov.quantity.toString()),
          // Text(prov.isBought.toString()),
          // Text(prov.isSpicy.toString()),
          ElevatedButton(
              onPressed: () {
                ref.read(SelectProvider.notifier).toggleHasBought();
              },
              child: const Text('toggleHasBought')),
          ElevatedButton(
              onPressed: () {
                ref.read(SelectProvider.notifier).toggleIsSpicy();
              },
              child: const Text('toggleIsSpicy')),
        ],
      ),
    );
  }
}
