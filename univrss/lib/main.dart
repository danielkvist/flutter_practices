import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:univrss/data.dart';
import 'package:univrss/constants.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universs',
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Home'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 44,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      value: 'solarSystem',
                      items: [
                        DropdownMenuItem(
                          value: 'solarSystem',
                          child: Text(
                            'Solar System',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.grey[100],
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: secondaryTextColor,
                        ),
                      ),
                      underline: SizedBox(),
                    )
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: EdgeInsets.only(
                  left: 32.0,
                ),
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: <Widget>[
                        Column(
                          children: [
                            SizedBox(height: 100),
                            Card(
                              elevation: 8,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 100),
                                    Text(
                                      planets[index].name,
                                      style: TextStyle(
                                        fontSize: 44,
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      planets[index].description,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Know more',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey[700],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          width: 16.0,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: secondaryTextColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(planets[index].iconImage),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: navigationColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32.0),
          ),
        ),
        padding: EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 32.0,
                color: secondaryTextColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 32.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 32.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
