class Food{
  String image;
  String name;
  String dicription;

  Food({required this.image, required this.name, required this.dicription});
}

class Foods{
  List<Food> foods=[
    Food(image:"assets/images/image1.jpg", name: "File Hiper", dicription: "Brounch calorodo Springs"),
    Food(image:"assets/images/image2.jpg", name: "Diner steakhouse", dicription: "Sushe Seattle"),
    Food(image:"assets/images/image7.jpg", name: "Deli Cious", dicription: "Deli Seattle"),
    Food(image:"assets/images/images3.jpg", name: "Food", dicription: "Brounch calorodo Springs"),
    Food(image:"assets/images/images4.jpg", name: "File Hiper", dicription: "Brounch calorodo Springs"),
    Food(image :"assets/images/images5.jpg", name: "Diner steakhouse", dicription:"Sushe Seattle"),
    Food(image: "assets/images/images6.jpg", name: "File Hiper", dicription: "Brounch calorodo Springs"),
    Food(image: "assets/images/images8.jpg",name: "File Hiper", dicription: "Brounch calorodo Springs"),
    Food(image: "assets/images/images9.jpg", name: "File Hiper", dicription: "Brounch calorodo Springs"),
    Food(image:"assets/images/images12.jpg", name: "File Hiper", dicription: "Brounch calorodo Springs"),
  ];
}