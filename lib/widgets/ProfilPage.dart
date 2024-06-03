import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF80CC28), // Set background color to green
      appBar: AppBar(
        backgroundColor: Color(0xFF80CC28), // Adjust AppBar background color
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Change icon color to white
          onPressed: () {
            Navigator.pop(context); // Activate back button
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(), // To center the title
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Change text color to white
              ),
            ),
            SizedBox(width: 20), // Spacing between 'Profile' text and notification icon
            Spacer(), // To center the title
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white), // Change icon color to white
              onPressed: () {
                // Implement your logic here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Spacing between AppBar and profile image
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/user.png'), // Path to your image asset
            ),
            SizedBox(height: 10),
            Text(
              'Fransiska Kania',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white, // Change text color to white for contrast
              ),
            ),
            SizedBox(height: 30), // Spacing between name and menu list
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white, size: 30),
                    title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                       Navigator.popUntil(context, ModalRoute.withName('HomePage')); // Pop 
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.chat, color: Colors.white, size: 30),
                    title: Text('My Chat', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart, color: Colors.white, size: 30),
                    title: Text('My Cart', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                
            
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.white, size: 30),
                    title: Text('Payment Method', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white, size: 30),
                    title: Text('Settings', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.language, color: Colors.white, size: 30),
                    title: Text('Language', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help_center, color: Colors.white, size: 30),
                    title: Text('Help Center', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                      // Implement your logic here
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.white, size: 30),
                    title: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 18)),
                    onTap: () {
                   Navigator.popUntil(context, ModalRoute.withName('SplashScreen')); // Pop 
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}
