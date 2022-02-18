import 'package:flutter/material.dart';
import 'package:mealapp/model/dummy_data.dart';
import 'package:mealapp/model/meal.dart';
import 'package:mealapp/screen/detailOrder.dart';

class Show extends StatelessWidget {
  static String routename = 'Show';

  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catid = routearg['id'];
    final titlearg = routearg['title'];
    var showprod = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catid);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("$titlearg"),
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  OrderDetail.routename,
                  arguments: {
                    'id': showprod[index].id,
                    'title': showprod[index].title,
                    'imageUrl': showprod[index].imageUrl,
                    'steps': showprod[index].steps,
                    'ingredients': showprod[index].ingredients,
                    'duration': showprod[index].duration,
                  },
                );
              },
              child: Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage(
                              showprod[index].imageUrl,
                            ),
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              '${showprod[index].title}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.schedule),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${showprod[index].duration} min',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.work),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'y',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.done_all),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'x',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: showprod.length,
      ),
    );
  }
}
