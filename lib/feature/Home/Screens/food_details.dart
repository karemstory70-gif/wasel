import 'package:flutter/material.dart';
import 'package:wasel/core/Models/food_model.dart';

class FoodDetails extends StatefulWidget {
  final FoodModel food;
  const FoodDetails({super.key, required this.food});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  List<Map<String, dynamic>> ingredients = [
    {"name": "Cheese", "icon": Icons.local_pizza},
    {"name": "Meat", "icon": Icons.lunch_dining},
    {"name": "Onion", "icon": Icons.circle},
    {"name": "Tomato", "icon": Icons.circle_outlined},
    {"name": "Pepper", "icon": Icons.local_fire_department},
  ];
  List<String> sizes = ["10”", "14”", "16”"];
  int? selectedIndex;
  bool isV1 = true;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: isV1 ? false : true,
      appBar: isV1
          ? AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text("Details"),
              centerTitle: false,
            )
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: false,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: isFavorite ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ],
            ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isV1 = !isV1;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  height: isV1 ? 200 : 350,
                  width: double.infinity,
                  margin: isV1
                      ? EdgeInsets.symmetric(horizontal: 24)
                      : EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24),
                    Container(
                      height: 44,
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/Ellipse 1295.png"),
                          Text(
                            "Uttora Coffe House",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 17),

                    Text(
                      widget.food.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.food.description,
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xFFA0A5BA),
                      ),
                    ),
                    SizedBox(height: 10),

                    // معلومات
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20),
                        Icon(
                          Icons.star_outline,
                          color: const Color(0xFFFF7622),
                          size: 30,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "${widget.food.rating}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 36),
                        Icon(
                          Icons.delivery_dining,
                          color: const Color(0xFFFF7622),
                          size: 30,
                        ),
                        SizedBox(width: 8),
                        Text(
                          widget.food.isFreeDelivery ? "Free" : "Paid",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 36),
                        Icon(
                          Icons.calendar_month_outlined,
                          color: const Color(0xFFFF7622),
                          size: 30,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "${widget.food.time} min",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 48,
                      padding: EdgeInsets.symmetric(horizontal: 10),

                      child: Row(
                        children: [
                          Text(
                            "Size:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),

                          Expanded(
                            child: Row(
                              children: List.generate(sizes.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 48,
                                    height: 48,
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: BoxDecoration(
                                      color: selectedIndex == index
                                          ? Color(0xFFF58D1D)
                                          : Color(0xFFF0F5FA),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Text(sizes[index]),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "INGRIDENTS",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: List.generate(ingredients.length, (index) {
                        return Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFEBE4),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                ingredients[index]["icon"],
                                size: 24,
                                color: Color(0xFFFB6D3A),
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
        decoration: BoxDecoration(
          color: const Color(0xFFF0F5FA),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Text(
                    "\$${widget.food.price}",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 24),
                  padding: EdgeInsets.all(8),
                  height: 48,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(children: [
                          
                        ],
                      ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF7622),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
