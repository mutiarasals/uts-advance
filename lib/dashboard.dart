import 'package:flutter/material.dart';
import 'package:aplikasi1/main.dart';

void main() {
  runApp(DashboardPage());
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView(
        children: <Widget>[
          Text('WELCOME!'),
          Image.asset('assets/marsha.png'), // Ganti dengan gambar yang sesuai
          Icon(Icons.dashboard),
          Text('Daftar Horizontal:'),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Profil'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Info'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Setting'),
                  ),
                ),
              ],
            ),
          ),
          Text('Daftar Vertical + Card:'),
          Card(
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Profil'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Info'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Data'),
            ),
          ),
        ],
      ),
    );
  }
}