class Fruit {
  final int id;
  final String fruitName;
  final String fruitDescription;
  final String img;

  Fruit({this.id, this.fruitName, this.fruitDescription, this.img});
}

final Fruit apple = Fruit(
    id: 1,
    fruitName: "Apple",
    fruitDescription:
        "An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia.",
    img: "assets/images/apple.png");

final Fruit avocado = Fruit(
    id: 2,
    fruitName: "Avocado",
    fruitDescription:
        "The avocado, a tree likely originating from south-central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado, is botanically a large berry containing a single large seed.",
    img: "assets/images/avocado.png");

final Fruit strawberry = Fruit(
    id: 3,
    fruitName: "Strawberry",
    fruitDescription:
        "The avocado, a tree likely originating from south-central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado, is botanically a large berry containing a single large seed.",
    img: "assets/images/strawberry.png");

final Fruit watermelon = Fruit(
    id: 3,
    fruitName: "Watermelon",
    fruitDescription:
        "The avocado, a tree likely originating from south-central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado, is botanically a large berry containing a single large seed.",
    img: "assets/images/watermelon.png");

final List<Fruit> fruitList = [apple, avocado, strawberry, watermelon];
