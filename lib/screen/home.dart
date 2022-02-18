import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mealapp/model/dummy_data.dart';
import 'package:mealapp/screen/showcategory.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static String routename = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Meal'),
      ),
      drawer: Drawer(
        elevation: 1,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Text(
                  'home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                tileColor: Colors.pink,
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Text(
                  'favorate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                tileColor: Colors.pink,
                leading: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: Text(
                  'setting',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                tileColor: Colors.pink,
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView(
          children: DUMMY_CATEGORIES
              .map(
                (e) => InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Show.routename, arguments: {
                      'id': e.id,
                      'title': e.title,
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        e.title,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                  ),
                ),
              )
              .toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 20,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 15,
            childAspectRatio: 3 / 2,
          ),
        ),
      ),
    );
  }
}
