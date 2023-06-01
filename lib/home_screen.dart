import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping_app_ui/gridview_items_list.dart';

class HomeScreen extends StatelessWidget {
  List<String> tabs = ["All", "Category", "Top", "Recommended"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF676656),
                          ),
                          label: Text(
                            "Find your product",
                            style: TextStyle(
                              color: Color(0xFF676565),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications_none,
                          color: Color(0xFF676565),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/freed.png"),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i = 0; i < 4; i++)
                        FittedBox(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(left: 15, right: 15),
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  tabs[i],
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GridViewItemsList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Color(0xFFE95858),
          backgroundColor: Color(0x5C000000).withOpacity(0.15),
          index: 2,
          items: [
            CurvedNavigationBarItem(
              child: Icon(Icons.shopping_cart, color: Colors.black54),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.favorite, color: Colors.black54),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.home_filled, color: Colors.black54),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.qr_code_2_outlined, color: Colors.black54),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.person, color: Colors.black54),
            ),
          ],
          onTap: (index){},
        ),
      ),
    );
  }
}
