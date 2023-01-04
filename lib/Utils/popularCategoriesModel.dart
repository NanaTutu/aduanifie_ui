class PopularCategories{
  String image = "";
  String category = "";

  PopularCategories({required this.image, required this.category});
}

List<PopularCategories> popularCat = [
  PopularCategories(
      image: "assets/images/ebaAmala.png",
      category: "All"
  ),
  PopularCategories(
      image: "assets/images/fufuPalm.png",
      category: "Soup"
  ),
  PopularCategories(
      image: "assets/images/waakye.png",
      category: "Rice"
  ),
  PopularCategories(
      image: "assets/images/beans.png",
      category: "Beans"
  ),
];