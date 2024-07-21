import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);
    final state4 = ref.watch(GStatemultiplyProvider(num1: 20, num2: 20));
    return DefaultLayout(
        title: 'CodeGenerationScreen',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('state1: $state1'),
            state2.when(
                data: (data) {
                  // 일회성으로만 future를 호출
                  return Text(data.toString());
                },
                error: (error, stack) => Text('Error: $error'),
                loading: () =>
                    const Center(child: CircularProgressIndicator())),
            state3.when(
                data: (data) {
                  // 일회성으로만 future를 호출
                  return Text(data.toString());
                },
                error: (error, stack) => Text('Error: $error'),
                loading: () =>
                    const Center(child: CircularProgressIndicator())),
            Text('state4: $state4'),
          ],
        ));
  }
}