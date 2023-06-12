import 'package:flutter/material.dart';
import 'model.dart';
import 'service.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key?key}): super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List datakita = [];

getData() async{
  await ServiceClass().getService().then((value){
    setState(() {
      datakita = value;
    });
});
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" PARSING DATA JSON "),
      centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: datakita.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(datakita[index].userId), 
            subtitle: 
            Text("Id : ${datakita[index].id}"),
            trailing:
            Text ("Title: ${datakita[index].title}"),
          );
        }),
      ),
    );
  }
}