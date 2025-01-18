import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:film/Home.dart';
import 'package:film/Editor.dart';

import 'package:film/Edit.dart';

void main() {
  
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'Home',
      path: '/',
      builder: (context, state) => MaterialApp(theme: ThemeData(brightness: Brightness.dark),home: MyHomePage(title: 'Main',)),
      routes: <RouteBase>[
        GoRoute(
          name:'Edit',
          path: '/edit',
          builder: (context, state) => const EditPage(title: 'Edit',),
        ),
        GoRoute(path: '/editor', builder: (context, state) => const Editor(),),
      ]
    ),
    
  ],
);
class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    
    // return MaterialApp(
      
    //   title: 'Main',
      
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     brightness: Brightness.dark,
    //     useMaterial3: true,
        
    //   ),
      
    //   home: const EditPage(title: 'Main'),
    // );

    return MaterialApp.router(

    
      routerConfig: _router, 
    
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // backgroundColor: Colors.black,
        
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
        
        actions: const <Widget>[
          
          CircleAvatar(

            backgroundColor: Colors.grey,
            
            child: Text('M', style: TextStyle(color: Colors.white)),
          ),
          
          SizedBox(width: 8),
        ],
      ),


      body: const Home(),  
      
    );
  }
}
