import 'package:flutter/material.dart';
import 'package:online_shopping_app_ui/container_button.dart';
import 'package:online_shopping_app_ui/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/image2.jpg"),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 200,
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: const ContainerButton(
                  containerWidth: 150,
                  text: "Shop Now",
                  bgColor: Color(0xFFE95858)),
            ),
          ],
        ),
      ),
    );
  }
}
