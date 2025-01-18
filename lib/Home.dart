import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//This component just return the HomePage body. The appbar is already handled in main file

class Home extends StatelessWidget {
  
  const Home({super.key});
  
  @override
  
  Widget build(BuildContext context) {
    
    return 
    
    MaterialApp(
      
      theme: ThemeData(brightness: Brightness.dark),
      home: Padding(
          
          padding: const EdgeInsets.all(8.0),
          
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              
              const SizedBox(height: 40,),
              
              Container(
                
                decoration: BoxDecoration(
                  
                  border: Border.all(color: Colors.grey, width: 0.3),
                  
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                
                ),
                
                
                child: Row(
                  
                  children: [
                    
                    Padding(
                      
                      padding: const EdgeInsets.all(15.0),
                      
                      child: SizedBox(
                        
                        width: 100,
                        
                        height: 200,
                        
                        child: Container(
                          
                          decoration:const  BoxDecoration(
                            
                            color: Colors.grey,
                          
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          
                          ),
                        
                        ),
                      ),
                    ),
                    
                    
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.center,
                      
                      verticalDirection: VerticalDirection.down,
                      
                      children: [
                        
                        const Text('Continuer l\'écriture', style: TextStyle(color: Colors.white, fontSize: 22),),
                        
                        const SizedBox(height: 10,),
                        
                        const Text('Il était une fois', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        
                        const SizedBox(height: 10,),
                        
                        Container(
                          
                          padding: const EdgeInsets.all(2),
                          
                          height: 25,
                          
                          width: 140,
                          
                          decoration: const BoxDecoration(
                            
                            color: Color.fromARGB(255, 43, 42, 42),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          
                          child: const Text('0 chapitre publié', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                        ),
                        
                        const SizedBox(height: 10,),
                        
                        const Text('2 brouillons', style: TextStyle(fontSize: 20, color: Colors.white),),
                      ],
                    ),
                  ],
                
                ),
              ),
              
              const SizedBox(height: 50,),
      
              
              ListTile(
                
                leading: const Icon(Icons.edit),
                
                title: const Text('Modifier une autre histoire', style: TextStyle(color: Colors.white,fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.normal),),
                
                onTap: () => {
                  
                  GoRouter.of(context).go('/edit')
      
                },
                
                shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
              ),
              
              
              const SizedBox(height: 10,),
              
              ListTile(
                
                leading: const Icon(Icons.add_box),
                
                title: const Text('Créer une Nouvelle histoire', style: TextStyle(color: Colors.white,fontSize: 25, fontFamily: 'Roboto',)),
                
                onTap: () {
                  // Navigate to create story page
                },
                
                shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
              ),
              
              
              const SizedBox(height: 10,),
              
              
              ListTile(
                
                leading: const Icon(Icons.add_box),
                
                title: const Text('Ressources utiles', style: TextStyle(color: Colors.white,fontSize: 25, fontFamily: 'Roboto',)),
                
                onTap: () {
                  // Navigate to create story page
                },
                
                shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
              ),
              
              
              const SizedBox(height: 10,),
              
              
              ListTile(
                
                leading: const Icon(Icons.add_box),
                
                title: const Text('Programmes/opportunités ', style: TextStyle(color: Colors.white,fontSize: 25, fontFamily: 'Roboto',)),
                
                onTap: () {
                  // Navigate to create story page
                },
                
                shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
              ) 
      
            ]),
        ),
    );
  }
}