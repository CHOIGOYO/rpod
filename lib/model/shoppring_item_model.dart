class ShoppingItemModel {
  // 이름
  final String name;
  // 갯수
  final int quantity;
  // 구매 여부
  final bool isBought;
  // 매움 여부
  final bool isSpicy;

  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.isBought,
    required this.isSpicy,
  });
}
