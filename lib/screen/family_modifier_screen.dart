import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/layout/default_layout.dart';
import 'package:rpod/riverpod/family_modifier_provider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(familyModifierProviderProvider(10));
    return DefaultLayout(
      title: 'FamilyModifierScreen',
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
