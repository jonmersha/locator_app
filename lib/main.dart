import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final nameController=TextEditingController();
  int _counter = 0;
  void _addCompany() {
    final company=FirebaseFirestore.instance.collection("company").doc("org");
    setState(() async {
     // _counter++;
      final json={
        "name": "dbe",
        "description": "Development Bank Of Ethiopiapia",
        "type": "GOV",
        "industry": "Banking",
        "adress": {
          "email": "dbe@gmail.com",
          "phone": "+09234234",
          "country": "Ethiopia",
          "city": "Addis baba",
          "PoBox": "28221"
        },
        "social_media": {
          "face_book": "yohannescoop",
          "twitter": "jonmersah",
          "telegram": "telegram",
          "linked_in": "linked in",
          "hullu": "hull"
        },
        "location": {
          "latitude": "123512345246",
          "longitude": "3245234513",
          "altitude": "3452345"
        }
      };
      await company.set(json);
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey
              ),
              child:  TextField(controller: nameController,),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey
              ),
              child:  TextFormField(controller: nameController,decoration: InputDecoration(
                labelText: "please internanme"
              ),),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCompany,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
