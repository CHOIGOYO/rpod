// provider 중첩 사용
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/model/shoppring_item_model.dart';
import 'package:rpod/riverpod/state_notifier_notifier_provider.dart';

// 다른 provider를 watch 하는 provider
final filteredShoppingList = Provider<List<ShoppingItemModel>>((ref) {
  final shoppingListState = ref.watch(shoppringListProvider);
  final filterState = ref.watch(filterProvider);
  if (filterState == FilterState.all) {
    return shoppingListState; // all 선택 시 리스트 그대로 반환
  }
  return shoppingListState
      .where((e) => filterState == FilterState.bought ? e.isBought : e.isSpicy)
      .toList();
});

enum FilterState { all, bought, spicy }

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);
