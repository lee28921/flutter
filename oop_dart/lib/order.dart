class Order {
  num memberId;
  String itemName;
  int itemPrice;
  int discountPrice;

  Order(
      {required this.memberId,
      required this.itemName,
      required this.itemPrice,
      required this.discountPrice});

  int calculateDiscount() {
    // 상품 가격이 할인 금액보다 작을 때... 고민해 볼 사항
    return itemPrice - discountPrice;
  }

  @override
  String toString() {
    return 'Order{memberId: $memberId, itemName: $itemName, itemPrice: $itemPrice, discountPrice: $discountPrice}';
  }
}
