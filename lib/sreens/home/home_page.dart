import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        toolbarHeight: 100,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
        'PSS',
        style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(image: AssetImage('assets/images/pss.png'),height: MediaQuery.of(context).size.height*0.4,width: MediaQuery.sizeOf(context).width*0.8),
                ),
              ],
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/about');
                },
                borderRadius: BorderRadius.circular(30),
                splashColor: Colors.black.withOpacity(0.1),
                hoverColor: Colors.black.withOpacity(0.2),
                highlightColor: Colors.black.withOpacity(0.12),
                child: Ink(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyan.shade600,
                      border: Border.all(
                        color: Colors.black,
                      )
                  ),
                  width: MediaQuery.of(context).size.width*0.3,
                  height: 50,
                  child: Center(
                    child: Text(
                      'About PSS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/bar');
                },
                borderRadius: BorderRadius.circular(30),
                splashColor: Colors.black.withOpacity(0.1),
                hoverColor: Colors.black.withOpacity(0.2),
                highlightColor: Colors.black.withOpacity(0.12),
                child: Ink(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyan.shade600,
                      border: Border.all(
                        color: Colors.black,
                      )
                  ),
                  width: MediaQuery.of(context).size.width*0.3,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Bar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/review');
                },
                borderRadius: BorderRadius.circular(30),
                splashColor: Colors.black.withOpacity(0.1),
                hoverColor: Colors.black.withOpacity(0.2),
                highlightColor: Colors.black.withOpacity(0.12),
                child: Ink(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.cyan.shade600,
                      border: Border.all(
                        color: Colors.black,
                      )
                  ),
                  width: MediaQuery.of(context).size.width*0.3,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Review',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}