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
        "The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness.",
    img: "assets/images/strawberry.png");

final Fruit watermelon = Fruit(
    id: 3,
    fruitName: "Watermelon",
    fruitDescription:
        "Watermelon is a scrambling and trailing vine in the flowering plant family Cucurbitaceae. Watermelon is grown in favorable climates from tropical to temperate regions worldwide for its large edible fruit, which is a berry with a hard rind and no internal divisions, and is botanically called a pepo.",
    img: "assets/images/watermelon.png");

final List<Fruit> fruitList = [apple, avocado, strawberry, watermelon];
