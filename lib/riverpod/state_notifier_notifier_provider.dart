import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/model/shoppring_item_model.dart';

// 상태를 제공 StateProvider
final shoppringListProvider =
    StateNotifierProvider<ShoppringListNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppringListNotifier(),
);

class ShoppringListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppringListNotifier()
      : super([
          // 초기 값 설정
          ShoppingItemModel(
              name: '김치', quantity: 1, isBought: false, isSpicy: true),
          ShoppingItemModel(
              name: '라면', quantity: 2, isBought: false, isSpicy: true),
          ShoppingItemModel(
              name: '삼겹살', quantity: 3, isBought: false, isSpicy: false),
          ShoppingItemModel(
              name: '토마토', quantity: 4, isBought: false, isSpicy: false),
        ]);

  void toggleHasBought(String name) {
    state = state
        .map((e) => e.name == name
            ? ShoppingItemModel(
                name: e.name,
                quantity: e.isBought ? e.quantity + 1 : e.quantity - 1, // 수량 조절
                isBought: !e.isBought, // 구매 여부 토글
                isSpicy: e.isSpicy)
            : e)
        .toList();
  }
}
