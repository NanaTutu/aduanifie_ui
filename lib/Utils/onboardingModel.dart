class UnbordingContent{
  String image = "";
  String title = "";
  String description = "";

  UnbordingContent({required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: "assets/images/onbording001.png",
      title: "",
      description: "Want to enjoy some local foods? Browse from our online chopbar, all your favourite Ghanaian delicacies."
  ),

  UnbordingContent(
      image: "assets/images/onbording002.png",
      title: "",
      description: "From Fufu, to Banku, to Ampesi, We’ve got you covered with whatever you want (wonperh wei, na woperh den?)."
  ),

  UnbordingContent(
      image: "assets/images/onbording003.png",
      title: "",
      description: "Oh! Did I forget to tell you? We do deliveries and we make sure you get your food warm & without spillage."
  )
];