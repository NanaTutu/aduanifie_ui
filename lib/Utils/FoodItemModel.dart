class FoodItem{
  String image= "";
  String title = "";
  String accompaniment = "";
  String price = "";

  FoodItem({required this.image, required this.title, required this.accompaniment, required this.price});
}

List<FoodItem> foodItems = [
  FoodItem(
      image: "assets/images/bankuOkro.png",
      title: "Banku & Okro stew",
      accompaniment: "with fish, wele & crabs",
      price: "Ghc 20.00"
  ),

  FoodItem(
      image: "assets/images/fufuPalm.png",
      title: "Fufu & Palmnut soup",
      accompaniment: "with fish, beef & goat",
      price: "Ghc 30.00"
  ),

  FoodItem(
      image: "assets/images/RiceNut.png",
      title: "Riceball & Groundnut soup",
      accompaniment: "with fish, wele & crabs",
      price: "Ghc 20.00"
  ),

  FoodItem(
      image: "assets/images/beans.png",
      title: "Beans & Plantain",
      accompaniment: "with fish, beef & goat",
      price: "Ghc 30.00"
  ),

  FoodItem(
      image: "assets/images/waakye.png",
      title: "Waakye",
      accompaniment: "with fish, wele & crabs",
      price: "Ghc 20.00"
  ),

  FoodItem(
      image: "assets/images/tuoGreen.png",
      title: "Tuo Zaafi & Green Soup",
      accompaniment: "with fish, beef & goat",
      price: "Ghc 20.00"
  ),
];