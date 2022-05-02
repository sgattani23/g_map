import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    home:Scaffold(
      // backgroundColor: Color.fromRGBO(163, 177, 138, 1),
       appBar: AppBar(
         title: Text('Google Map'),
        //  backgroundColor:Color.fromRGBO(52, 78, 65, 1),  
       ),
       body:HawkFabMenu(
        items: [
          HawkFabMenuItem(
            label: 'Add Polygon',
            ontap: () {},
            icon: const Icon(
                Icons.crop_square,
              ),
          ),
          HawkFabMenuItem(
            label: 'Info Demo',
            ontap: () {},
            icon: const Icon(Icons.pin_drop),
          ),
          HawkFabMenuItem(
            label: 'Directions',
            ontap: () {},
            icon: const Icon(Icons.directions),
          ),
        ],
        body:Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/map.png"), 
            fit: BoxFit.cover),
            ),
          ),
          ),

          drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Flutter Maps'),
            ),
            ListTile(
              title: const Text('Enable Dark Mode'),
              leading: const Icon(
              Icons.location_off,
              color: Colors.green,
          ),onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Clear Markers'),
              leading: const Icon(
              Icons.location_off,
              color: Colors.green,
            ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Your Timeline'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Directions'),
              leading: const Icon(
              Icons.directions,
              color: Colors.orangeAccent,
            ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),);
  }
  
}