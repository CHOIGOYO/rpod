import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod/model/shoppring_item_model.dart';

final SelectProvider = StateNotifierProvider<SelectNotifier, ShoppingItemModel>(
  (ref) => SelectNotifier(),
);

class SelectNotifier extends StateNotifier<ShoppingItemModel> {
  SelectNotifier()
      : super(ShoppingItemModel(
            name: '순한 맛 김치', quantity: 3, isBought: false, isSpicy: false));

  ShoppingItemModel toggleHasBought() =>
      state = state.copyWhith(isBought: !state.isBought);

  ShoppingItemModel toggleIsSpicy() =>
      state = state.copyWhith(isSpicy: !state.isSpicy);
}
