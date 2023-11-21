import 'package:flutter/material.dart';
import 'package:vladik/SearchPage.dart';
import 'FavoritesPage.dart';
import 'main.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  int _currentIndex = 3; // Индекс страницы "Профиль"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _handleLogin(context);
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _handleRegistration(context);
              },
              child: Text('Registration'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          if (_currentIndex == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()),
            );
          } else if (_currentIndex == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()),
            ); // Замените на путь к странице поиска
          } else if (_currentIndex == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPage()),
            ); //
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Домой',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    String email = _emailController.text;
    String password = _passwordController.text;
    // Ваша логика для обработки входа
  }

  void _handleRegistration(BuildContext context) {
    String email = _emailController.text;
    String password = _passwordController.text;
    // Ваша логика для обработки регистрации
  }
}
