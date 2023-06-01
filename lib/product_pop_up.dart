import 'package:flutter/material.dart';
import 'package:online_shopping_app_ui/container_button.dart';

class ProductSpecificationPopUp extends StatelessWidget {
  final tStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 19,
  );

  final tStyle2 = const TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  const ProductSpecificationPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: MediaQuery.of(context).size.height / 2.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Size:", style: tStyle),
                            const SizedBox(height: 30),
                            Text("Color:", style: tStyle),
                            const SizedBox(height: 30),
                            Text("Total:", style: tStyle),
                            const SizedBox(height: 30),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text("S", style: tStyle2))),
                                const SizedBox(width: 30),
                                Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text("M", style: tStyle2))),
                                const SizedBox(width: 30),
                                Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text("L", style: tStyle2))),
                                const SizedBox(width: 30),
                                Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text("XL", style: tStyle2))),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(
                                  height: 45,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.redAccent,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black12,
                                    ),
                                    child: Center(
                                        child: Text("-", style: tStyle))),
                                const SizedBox(width: 10),
                                Text("1", style: tStyle),
                                const SizedBox(width: 10),
                                Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black12),
                                    child: Center(
                                        child: Text("+", style: tStyle))),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment:", style: tStyle),
                        const Text(
                          "\$400.50",
                          style: TextStyle(
                              color: Color(0xFFE95858),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ContainerButton(
                        containerWidth: MediaQuery.of(context).size.width,
                        text: "Checkout",
                        bgColor: const Color(0xFFE95858)),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: ContainerButton(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        text: "Buy Now",
        bgColor: const Color(0xFFE95858),
      ),
    );
  }
}
