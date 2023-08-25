class Model {
  String image;
  String name;
  int price;
  bool isChoice;

  Model(this.image, this.name, this.price, this.isChoice);

  static List<Model> generatedList() {
    return [
      Model("images/item1.png", "MEL RJ", 1000, false),
      Model("images/item2.png", "Reveal", 1020, false),
      Model("images/item3.png", "Environ", 2300, false),
      Model("images/item4.png", "The Man Company", 9000, false),
      Model("images/item5.png", "Boston Round", 10030, false),
      Model("images/item1.png", "MEL RJ", 1000, false),
      Model("images/item2.png", "Reveal", 1020, false),
      Model("images/item3.png", "Environ", 2300, false),
      Model("images/item4.png", "The Man Company", 9000, false),
      Model("images/item5.png", "Boston Round", 10030, false),
      Model("images/item1.png", "MEL RJ", 1000, false),
      Model("images/item2.png", "Reveal", 1020, false),
      Model("images/item3.png", "Environ", 2300, false),
      Model("images/item4.png", "The Man Company", 9000, false),
      Model("images/item5.png", "Boston Round", 10030, false),
    ];
  }
}
