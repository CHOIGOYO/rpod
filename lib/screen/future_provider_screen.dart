import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(multiplesFutureProvider);
    return DefaultLayout(
      title: 'FutureProviderScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            prov.when(
                data: (data) {
                  // 일회성으로만 future를 호출
                  return Text(data.toString());
                },
                error: (error, stack) => Text('Error: $error'),
                loading: () => const Center(child: CircularProgressIndicator()))
          ],
        ),
      ),
    );
  }
}
