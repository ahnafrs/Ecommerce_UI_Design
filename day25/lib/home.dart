import 'package:day25/model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();
  final list1 = Model.generatedList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber[50],
        body: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello Marvin",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber[100]),
                      child: Stack(children: [
                        Icon(Icons.notifications_none),
                        Positioned(
                            right: 2,
                            child: Container(
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              padding: EdgeInsets.all(5),
                            ))
                      ]),
                    ),
                  ],
                ),
                Text(
                  "Let's Made a Bit here!",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 13,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        color: Colors.white,
                        child: TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Your Items!",
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(13),
                          color: Colors.black,
                          child: Icon(
                            Icons.menu,
                            color: Colors.amber,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.amber[700]),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.amber.withOpacity(0.3),
                          height: 80,
                          child: Column(
                            children: [
                              Image.asset(
                                list1[index].image,
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(list1[index].name)
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (_, index) => SizedBox(
                            width: 20,
                          ),
                      itemCount: list1.length),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Auctions",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.amber[700]),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list1.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      // height: 1000,
                      // width: double.infinity,
                      color: Colors.amber[50],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                padding: EdgeInsets.all(15),
                                color: Colors.amber.withOpacity(0.3),
                                child: Image.asset(
                                  list1[index].image,
                                  height: 200,
                                  width: 200,
                                ),
                              ),
                              Positioned(
                                  // top: 5,
                                  right: 5,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          list1[index].isChoice =
                                              !list1[index].isChoice;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.favorite,
                                        color: list1[index].isChoice == true
                                            ? Colors.red
                                            : Colors.white,
                                      )))
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(list1[index].name),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Current Bid",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          "${list1[index].price}",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    MaterialButton(
                                        color: Colors.black,
                                        onPressed: () {},
                                        child: Text(
                                          "Bid Now",
                                          style: TextStyle(color: Colors.amber),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
