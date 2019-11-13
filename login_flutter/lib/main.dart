import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool welcomeText = false;
  bool signUpForm = false;
  bool signUpText = false;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final usercont = TextEditingController();
  final passwordcont = TextEditingController();

  void _changed(bool visibilty, String fieldd) {
    setState(() {
      if(fieldd == "welcomeText"){
        welcomeText = visibilty;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final mainBg = Container(
     
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      controller: usercont,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Enter your Email",
        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        prefixIcon: Icon(Icons.people)
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      controller: passwordcont,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Enter your password",
        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        prefixIcon: Icon(Icons.lock)
      ),
    );
    final email = Text(
      'Username',
      style: style
    );
    final password = Text(
      'Password',
      style: style
    );
    final loginButton = Container(
      height: 50.0,
      width: 450.0,
      child: Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        onPressed: (){
          return showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                content: Text(usercont.text), Text(passwordcont.text)
              );
            }
          );
        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),
    )
    );
    final signUpButton = Container(
      height: 50.0,
      width: 450.0,
      child: Material(
      elevation: 5.0,
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: (){},
        child: Text('SignUp',
          textAlign: TextAlign.center,
          style: style.copyWith(
             color: Colors.white ,fontWeight: FontWeight.bold
          ),
        ),
      ),
      ),
    );
    final signup = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
      'Or SignUp Using',
      style: style,
      textAlign: TextAlign.center,
    ),
      ], 
    );
    
    return Scaffold(
      
      body: Center(
        
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          height: 750.0,
          width: 500.0,
           decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1,0.5,0.7,0.9],
          colors: [
            Color(0xff4BB4E3),
            Color(0xff9262F0),
            Color(0xffC63BF6),
            Color(0xff6C7FE9)
          ]
        )
      ),
      child: Container(
        // color: Colors.white38,
        width: 300.0,
        height: 950.0,
        child: Padding(
            padding: const EdgeInsets.all(36.0),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                
                SizedBox(height: 100.0,),
                
                SizedBox(height: 20.0,),
                email,
                SizedBox(height: 20.0,),
                emailField,
                SizedBox(height: 20.0,),
                password,
                SizedBox(height: 20.0,),
                passwordField,
                SizedBox(width: 450.0, height: 40.0,),
                loginButton,
                SizedBox(height: 25.0,),
                signup,
                SizedBox(height: 40.0,),
                signUpButton
              ],
            ),
          ),
      ),
        ),
      ),
    );
  }
  
}
