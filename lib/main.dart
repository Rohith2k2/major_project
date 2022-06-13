import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp( MaterialApp(
    title: 'Android App Development April Major Project',
    initialRoute: '/',
    routes: {
      '/':(context) => const FirstScreen(),
      '/second':(context)=> const SecondScreen(),
      '/third':(context) => const ThirdScreen(),
      '/last':(context)=>const LastScreen(),
    },
  )
  );
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              child: const Center(
                  //padding: const EdgeInsets.all(16),
                  child: Text('Hello!!',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 80),
                  )
              ),
          ),
          Container(
             child: Center(
                 //alignment: Alignment.center,
                 //padding: const EdgeInsets.all(16),
                 child: ElevatedButton(
                   child: const Text('Enter',
                     style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         //fontStyle: FontStyle.italic,
                         fontSize: 50
                     ),),
                   onPressed: (){
                     Navigator.pushNamed(context, '/second');
                   },
                 )
             ),
    )

        ],
      ),
    );
  }
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
              child: const Text('Personal Details',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 80),
              )
          ),
          Container(
              width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Name: Rohith Kumar J",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Age: 19",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "DOB: 04/11/2002",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Hobbies: Playing games, watching movies, listening songs",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset("assets/images/passport.png",
            width: 450,
            height:600,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('Next Activity',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    fontSize: 50
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
            ),
          )
        ],
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Skills',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 80),
              )
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "C Programming : Excellent",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "C++ Programming : Excellent",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Matlab : Good",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Data Structures and Algorithm : Good",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Dart : Good",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Flutter : Good",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Android Development : Good",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('Next Activity',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    fontSize: 50
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/last');
              },
            ),
          )
        ],
      ),
    );
  }
}

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Thank You',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 80),
              )
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Phone Number: 9944552264",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyanAccent, width: 4.0),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: const Text(
              "Email : rohithkumar.04.11.2002@gmail.com",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                    text: "GitHub : ",
                  ),
                  TextSpan(
                    style: TextStyle(
                      color: Colors.blue,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        fontSize: 30
                    ),
                    text: "Click here",
                      recognizer: TapGestureRecognizer()..onTap =  () async{
                      var url="https://github.com/Rohith2k2";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                      }
                  )
                ]
              )),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                      text: "LinkedIn : ",
                    ),
                    TextSpan(
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                            fontSize: 30
                        ),
                        text: "Click here",
                        recognizer: TapGestureRecognizer()..onTap =  () async{
                          var url="https://www.linkedin.com/in/rohith-kumar-j-8376a4227/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }
                    )
                  ]
              ))
        ],
      ),
    );
  }
}

