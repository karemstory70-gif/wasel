import 'package:flutter/material.dart';
import 'package:wasel/core/Models/food_model.dart';
import 'package:wasel/core/Theme/app_color.dart';
import 'package:wasel/feature/Home/Screens/filters_heet.dart';
import 'package:wasel/feature/Home/Screens/food_details.dart';

class RestaurantScreen extends StatefulWidget {
  final FoodModel food;
  const RestaurantScreen({super.key, required this.food});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => const FilterSheet(),
    );
  }
  List<Map<String, dynamic>> ingredients = [
    {"name": "Cheese", "icon": Icons.local_pizza},
    {"name": "Meat", "icon": Icons.lunch_dining},
    {"name": "Onion", "icon": Icons.circle},
    {"name": "Tomato", "icon": Icons.circle_outlined},
    {"name": "Pepper", "icon": Icons.local_fire_department},
  ];
  List<Map<String, dynamic>> tags = [
    {"name": "Burger"},
    {"name": "Sandwich"},
    {"name": "Pizza"},
    {"name": "Sanwich"},
  ];

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
              title: Text("Restaurant View"),
              centerTitle: false,
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert), 
                  onPressed: () => _showFilterSheet(context),
                ),
              ],
            )
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: false,
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert), 
                  onPressed: () => _showFilterSheet(context),
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
                    SizedBox(height: 31.5),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(tags.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 90,
                              height: 48,
                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? Color(0xFFF58D1D)
                                    : Color(0xFFEDEDED),
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Center(
                                child: Text(
                                  tags[index]["name"],
                                  style: TextStyle(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("Burger (10)"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 122,
                                  height: 84,
                                  decoration: BoxDecoration(
                                    color: AppColor.mainColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Burger Ferguson',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 4),
                                Text('Spicy restaurant'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$40"),
                                    SizedBox(width: 65),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF58D1D),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          iconSize: 18,
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => FoodDetails(
                                                  food: FoodModel(
                                                    name: "Burger Ferguson",
                                                    description:
                                                        "Spicy restaurant",
                                                    price: 40,
                                                    image:
                                                        "assets/images/burger.jpg",
                                                    rating: 4.7,
                                                    time: 20,
                                                    isFreeDelivery: true,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 122,
                                  height: 84,
                                  decoration: BoxDecoration(
                                    color: Color(0xff98A8B8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Rockin'Burgers.",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 4),
                                Text('Cafecafachino'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$40"),
                                    SizedBox(width: 65),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF58D1D),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          iconSize: 18,
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => FoodDetails(
                                                  food: FoodModel(
                                                    name: "Burger Ferguson",
                                                    description:
                                                        "Spicy restaurant",
                                                    price: 40,
                                                    image:
                                                        "assets/images/burger.jpg",
                                                    rating: 4.7,
                                                    time: 20,
                                                    isFreeDelivery: true,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
