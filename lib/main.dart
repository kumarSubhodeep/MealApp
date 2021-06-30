import 'package:flutter/material.dart';
import 'package:meal_app/screens/category_meals.dart';
import 'package:meal_app/screens/filters.dart';
import 'package:meal_app/screens/meal_detail.dart';
import 'package:meal_app/screens/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Railway',
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: deprecated_member_use
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              // ignore: deprecated_member_use
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              // ignore: deprecated_member_use
              title: TextStyle(
                // color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: Tabs(),
      // initialRoute: '/',
      routes: {
        // '/': (ctx) => Tabs(),
        MealDetails.routeName: (context) => MealDetails(),
        CategoryMeals.routeName: (context) => CategoryMeals(),
        Filters.routeName: (context) => Filters(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (ctx) => Categories());
      // },
      // onUnknownRoute: (setting){
      //   return MaterialPageRoute(builder: (ctx) => Categories());
      // },
    );
  }
}
