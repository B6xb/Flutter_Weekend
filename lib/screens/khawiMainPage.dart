import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';

class KhawiHomePage extends StatefulWidget {
  const KhawiHomePage({super.key});

  @override
  KhawiHomePageState createState() => KhawiHomePageState();
}

class KhawiHomePageState extends State<KhawiHomePage> {
  bool cardSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      backgroundColor: kMainColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Text(
              'Khawi ',
              style: kMainTextStyle,
            ),
          ),
          AnimatedContainer(
            // decoration: BoxDecoration(
            //
            // ),
            duration: const Duration(milliseconds: 200),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  cardSelected = !cardSelected;
                });
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: cardSelected
                      ? [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.9),
                            blurStyle: BlurStyle.inner,
                            offset: const Offset(1.0, 5.0), //(x,y)
                            blurRadius: 15.0,
                          ),
                        ]
                      : [
                          BoxShadow(
                            offset: const Offset(0.0, 1.0), //(x,y)
                            blurRadius: 15.0,
                            color: kMainColor,
                          ),
                        ],
                  color: kBottomNavBar,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Balance',
                          style: kMainTextStyle.copyWith(fontSize: 30),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Up your balance',
                                style: kMainTextStyle.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add,
                                color: kColor,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            '100 \$',
                            style: kMainTextStyle.copyWith(
                              color: kButtonsColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: const [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: EdgeInsets.all(12),
                child: Image(
                  image: AssetImage('images/alula.jpg'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: EdgeInsets.all(12),
                child: Image(
                  image: AssetImage('images/3.jpg'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: EdgeInsets.all(12),
                child: Image(
                  image: AssetImage('images/4.jpg'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: EdgeInsets.all(12),
                child: Image(
                  image: AssetImage('images/5.jpg'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: EdgeInsets.all(12),
                child: Image(
                  image: AssetImage('images/6.jpg'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                margin: EdgeInsets.all(12),
                child: Image(
                  image: AssetImage('images/ashigr.jpg'),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const KhawiBottomNavigationBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FloatingActionButton(
          backgroundColor: kButtonsColor,
          onPressed: () {},
          child: Icon(
            Icons.person,
            size: 40,
            color: kMainColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
