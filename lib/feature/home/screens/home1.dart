import 'package:flutter/material.dart';
import 'package:wasel/Shared/coustem_appbar.dart';
import 'package:wasel/core/Models/food_model.dart';
import 'package:wasel/core/Models/open_restunt.dart';
import 'package:wasel/feature/Home/Screens/Food_Details.dart';
import 'package:wasel/feature/Home/Screens/restaurant_screen.dart';
import 'package:wasel/feature/Home/Widgets/coustem_continar.dart';
import 'package:wasel/feature/Home/Widgets/open_reustrent_widget.dart';
import 'package:wasel/feature/Home/Widgets/start_all_screens.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List<OpenRestunt> openResuterntDetils = [
    OpenRestunt(
      name: 'rose garden restaurant'.toUpperCase(),
      detilels: 'Burger - Chiken - Riche - Wings ',
      rate: '4.7',
      time: '20',
    ),
  ];

  List<String> foods = ['All', 'Hot dog', 'burger'];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final FoodModel food = FoodModel(
      name: "pizza calzone european",
      description:
          "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
      price: 32,
      image: "assets/images/burger.jpg",
      rating: 4.7,
      time: 20,
      isFreeDelivery: true,
    );
    return Scaffold(
      appBar: Coustemappbar(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Startallscreens(),
              SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: List.generate(foods.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FoodDetails(food: food),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 9,
                        ),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Color(0xffFFD27C)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(39),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CoustemcontinarCircle(height: 44, width: 44),
                            SizedBox(width: 12),
                            Text(foods[index]),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Open Restaurants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                  children: [
                 Column(
                    children: List.generate(openResuterntDetils.length, (index) {
                      return GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>RestaurantScreen(food: food))),
                        child: Openreustrentwidget(item: openResuterntDetils[index]),
                    );
                  }),
                ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
