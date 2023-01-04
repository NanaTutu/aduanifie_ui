class DeliveryOptions{
  String optionOne = "";

  DeliveryOptions({required this.optionOne});
}

List<DeliveryOptions> options = [
  DeliveryOptions(
    optionOne: "Delivery",
  ),
  DeliveryOptions(
    optionOne: "Pickup",
  )
];