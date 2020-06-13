import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF5F4EF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F4EF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Color(0xFF61688B),
          ),
          onPressed: () {
            debugPrint("back is pressed");
          },
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset("assets/images/more.png"),
              ),
              onPressed: () {
                debugPrint("more is pressed");
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.60,
                  width: size.width,
                  child: Image.asset(
                    "assets/images/design_thinking.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: 24,
                  left: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            child: Image.asset(
                              "assets/images/best_seller_ribbon.png",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 8,
                            ),
                            child: Text(
                              "BESTSELLER",
                              style: TextStyle(
                                color: Color(0xFF0D1333),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          "Design Thinking",
                          style: TextStyle(
                            color: Color(0xFF0D1333),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                  child: Image.asset(
                                    "assets/images/people.png",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "18k",
                                    style: TextStyle(
                                      color: Color(0xFF61688B),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                    child: Image.asset(
                                      "assets/images/star.png",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 4,
                                      top: 4,
                                    ),
                                    child: Text(
                                      "4.8",
                                      style: TextStyle(
                                        color: Color(0xFF61688B),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\$50",
                              style: TextStyle(
                                color: Color(0xFF0D1333),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "\$70",
                                style: TextStyle(
                                  color: Color(0xFFA0A5BD),
                                  fontSize: 16,
                                  decoration: TextDecoration.lineThrough
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
