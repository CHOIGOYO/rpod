import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/listen_provider.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({super.key});

  @override
  ConsumerState<ListenProviderScreen> createState() =>
      _ListenProviderScreenState();
}

class _ListenProviderScreenState extends ConsumerState<ListenProviderScreen>
    with TickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: 10, vsync: this, initialIndex: ref.read(listheProvider));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      listheProvider,
      (prev, next) {
        print('prev : $prev, next : $next');
        if (prev != next) {
          controller.animateTo(next);
        }
      },
    );
    return DefaultLayout(
      title: 'ListenProviderScreen',
      body: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(), // 좌우 스크롤 방지
        children: List.generate(
          10,
          (index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tab ${index + 1}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(listheProvider.notifier)
                          .update((state) => state == 0 ? 0 : state - 1);
                    },
                    child: const Text('prev Tab'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(listheProvider.notifier)
                          .update((state) => state == 9 ? 9 : state + 1);
                    },
                    child: const Text('Next Tab'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
