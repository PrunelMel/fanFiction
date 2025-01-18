import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class EditPage extends StatefulWidget
{
  const EditPage({super.key, required this.title, this.description = '', this.keywords = '', this.category = ''});

  final String title;

  final String description;

  final String keywords;

  final String category;

  @override
  
  State<EditPage> createState() => _EditPageState();

}

class _EditPageState extends State<EditPage>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      
      theme: ThemeData(brightness: Brightness.dark),
      
      home: Scaffold(
        
        appBar: AppBar(
          
          title: const Text('Modifier l\'histoire', style: TextStyle(fontSize: 22),),
          
          actions: const [ Icon(Icons.menu)],
          
          centerTitle: true,
          
          leading: IconButton(
            
            icon: const Icon(Icons.arrow_back),
            
            onPressed: () => {
      
              Navigator.pop(context)
              
            },
          ),
        ),
        
        
        body:  SingleChildScrollView(
          
          child: Center(
            
            child: Column(
              
              children: <Widget>[
                
                Padding(
                  
                  padding: const EdgeInsets.all(30),
      
                  child: Row(
                    
                    children: <Widget>[
                      
                      Container(
                        
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10),
                          
                          color: Colors.grey
                        
                        ),
      
                        child: ClipRRect(
                          
                          borderRadius: BorderRadius.circular(10),
                          
                          child: const SizedBox(
                           
                            width: 70,
                            
                            height: 100,
                          
                          )
                        
                        ) ,
                      
                      ),
                      
                      const SizedBox(width: 30),
                      
                      const Text('Modifier la couverture', style: TextStyle(fontSize: 22, color: Colors.white),),
                    ]
                  ),
                ),
                
                const Divider(),
                
                const SizedBox(height: 20),
                
                const TextButton(
                  
                  onPressed: null,
                  
                  child: 
                    
                    Column(
                      
                      children: [
                        
                        Text('Titre de l\'histoire', style: TextStyle(fontSize: 22, color: Colors.white),),
                        
                        Text('....', style: TextStyle(fontSize: 22, color: Colors.white),),
                      ]
                      ,
                    ),
                  
                ),
                
                const Divider(),
                
                const SizedBox(height:20),
                
                const TextButton(
                  
                  onPressed: null,
                  
                  child:  
                    
                    Column(
                      
                      children: [
                        
                        Text('Description de l\'histoire', style: TextStyle(fontSize: 22, color: Colors.white),),
                        
                        Text('....', style: TextStyle(fontSize: 22, color: Colors.white),),
                      
                      ],
                    ),
                  
                ),
                
                const Divider(),
                const SizedBox(height: 20),
                
                const TextButton(
                  
                  onPressed: null,
                  
                  child:  
                    
                    Column(
                      
                      children: [
                        
                        Text('Mots clés', style: TextStyle(fontSize: 22, color: Colors.white),),
                        
                        Text('....', style: TextStyle(fontSize: 22, color: Colors.white),),
                      
                      ],
                    ),
                  
                ),
                
                const Divider(),
                
                const SizedBox(height: 20),
                
                const TextButton(
                  
                  onPressed: null,
                  
                  child:  
                    
                    Column(
                      
                      children: [
                        
                        Text('Catégorie de l\'histoire', style: TextStyle(fontSize: 22, color: Colors.white),),
                        
                        Text('....', style: TextStyle(fontSize: 22, color: Colors.white),),
                      ]
                    
                    ),
                  
                ),
                
                const Divider(),
                
                const SizedBox(height: 20),
                
                const TextButton(
                  
                  onPressed: null,
                  
                  child:  
                    
                    Column(
                      
                      children: [
                        
                        Text('{Droit d\'auteur', style: TextStyle(fontSize: 22, color: Colors.white),),
                        
                        Text('Tout droits réservées ©', style: TextStyle(fontSize: 22, color: Colors.grey),),
                      
                      ],
                    ),
                  
                ),
                
                
                const Divider(),
                
                
                const SizedBox(height: 20),
                
                
                const TextButton(
                  
                  onPressed: null,
                  
                  child:  
                    
                    Column(
                      
                      children: [
                        
                        Text('Plus d\'informations', style: TextStyle(fontSize: 22, color: Colors.white),),
                        
                        Text('Langue, Mature', style: TextStyle(fontSize: 22, color: Colors.grey),),
                      
                      ],
                    
                    ),
                  
                ),
                
                
                const Divider(),
      
      
                const SizedBox(height: 20),
      
                Container(
                  
                  decoration: const BoxDecoration(
                  
                    color: Color.fromARGB(255, 46, 45, 45)
                  
                  ),
                  
                  child: const Padding(
                    
                    padding: EdgeInsets.all(10.0),
                  
                    child: Row(
                  
                      children: <Widget>[
                  
                        SizedBox(width: 20),
                  
                        Text('Table des matières', style: TextStyle(fontSize: 22, color: Colors.white),),
                  
                        SizedBox(width: 150),
                  
                        Icon(Icons.settings, color: Colors.white, textDirection: TextDirection.ltr,)
                  
                      ]
                  
                    ),
                  
                  ),
                
                ),
                
                
                const SizedBox(height: 20),
      
                
                GestureDetector(
                
                  onTap: () => {
                    GoRouter.of(context).go('/editor')
                  },
                
                  child: Container(
                
                    width: 250,
                
                    height: 90,
                
                    decoration: BoxDecoration(
                
                      border: Border.all(
                
                        color: Colors.grey,
                
                        style:BorderStyle.solid,
                
                      )
                
                    ),
                
                
                    child: const Column(
                
                      mainAxisAlignment: MainAxisAlignment.center,
                
                      children: <Widget>[
                        
                        IconButton(onPressed: null, icon:  Icon(Icons.add_a_photo))
                        
                      ],
                
                    ),
                
                  ),
                
                )
      
          
              ]
            )
          ),
        )
      ),
    );
  }
} 