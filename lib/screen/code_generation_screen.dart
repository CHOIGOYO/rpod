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
    // state5 제외 provider 변경될 때만 새로 빌드된다.
    print('build CodeGenerationScreen >>>');
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
            // const _StateFive(),
            // 부분적으로 렌더링 할 수 있도록 위젯 제공
            Consumer(
              builder: (context, ref, child) {
                print('build Consumer StateFive >>>');
                final state5 = ref.watch(gStateNotifierProvider);
                return Row(
                  children: [
                    Text('state5: $state5 '), // 이 부분만 새로 빌드된다.
                    if (child != null) child,
                  ],
                );
              },
              child: const Text(
                  'Consumer StateFive child Text'), // 이 부분은 새로 빌드되지 않는다.
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref.read(gStateNotifierProvider.notifier).decrement();
                      // state5.decrement();
                    },
                    child: const Text('Decrement')),
                ElevatedButton(
                    onPressed: () {
                      ref.read(gStateNotifierProvider.notifier).increment();
                      // state5.increment();
                    },
                    child: const Text('Increment')),
              ],
            ),
            // invalidate()
            // 유효하지 않게 하다
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(gStateNotifierProvider);
                },
                child: const Text('Ivalidate')),
          ],
        ));
  }
}

// state5 가 변경될 때만 새로 빌드된다.
// 부분적으로만 새로 빌드되도록 할 수 있다.
// class _StateFive extends ConsumerWidget {
//   const _StateFive({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     print('build _StateFive >>>');
//     final state5 = ref.watch(gStateNotifierProvider);
//     return Text('state5: $state5');
//   }
// }
