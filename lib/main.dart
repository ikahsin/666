import 'package:flutter/material.dart';
import 'SearchPage.dart';
import 'productDetails.dart';
import 'ProfilePage.dart';
import 'FavoritesPage.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    SearchPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex != 1
          ? AppBar(
        title: Center(child: Text('troe v lodke')),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffb55626B),
      ) : null,
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          if (_currentIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
            );
          } else if (_currentIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoritesPage()),
            );
          } else if (_currentIndex == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
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





  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return ProductGrid(
          imageContent: ImageContent,
          textContent: TextContent,
          priceContent: PriceContent,
        );
      default:
        return Container();
    }
  }
}

class ProductGrid extends StatelessWidget {
  final List<String> imageContent;
  final List<String> textContent;
  final List<double> priceContent;

  ProductGrid({
    required this.imageContent,
    required this.textContent,
    required this.priceContent,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      children: List.generate(imageContent.length, (index) {
        return ProductCard(
          imageUrl: imageContent[index],
          productName: textContent[index],
          productPrice: priceContent[index],
          productDescription: productDescription[index],
        );
      }),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double productPrice;
  final String productDescription;

  ProductCard({
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return FadeTransition(
                        opacity: Tween<double>(
                          begin: 0.0,
                          end: 1.0,
                        ).animate(CurvedAnimation(
                          parent: animation,
                          curve: Curves.easeInOut,
                        )),
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeInOut,
                          )),
                          child: ProductDetailsPage(
                            ImageContent: imageUrl,
                            TextContent: productName,
                            productDescription: productDescription,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 60,
                width: double.infinity,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$${productPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              productName,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}


class ProductLikeButton extends StatefulWidget {
  @override
  _ProductLikeButtonState createState() => _ProductLikeButtonState();
}

class _ProductLikeButtonState extends State<ProductLikeButton> {
  bool _isLiked = false;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });

    if (_isLiked) {
      // Добавьте здесь логику для обработки нажатия кнопки "понравилось"
      // Например, отправка в FavoritesPage
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isLiked ? Icons.favorite : Icons.favorite_border,
        color: _isLiked ? Colors.red : null,
      ),
      onPressed: _toggleLike,
    );
  }
}






