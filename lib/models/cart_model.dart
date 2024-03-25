class CartModel {
  final String name;
  final String clinic;
  final String iconClinic;
  final String image;
  final String time;

  final int cartId;

  CartModel({
    required this.cartId,
    required this.name,
    required this.clinic,
    required this.iconClinic,
    required this.image,
    required this.time,
  });
}
