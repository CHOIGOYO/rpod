import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/auto_dispose_modifier_provider.dart';

class AutoDisposeModifierScreen extends ConsumerWidget {
  const AutoDisposeModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(autoDisposeProvider);
    return DefaultLayout(
        title: 'AutoDisposeModifierScreen',
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: prov.when(
              data: (data) {
                // 일회성으로만 future를 호출되는 FutureProvider 와 다르게 dispose 할때 캐시를 자동 삭제
                return Text(data.toString());
              },
              error: (error, stack) => Text(error.toString()),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ));
  }
}
