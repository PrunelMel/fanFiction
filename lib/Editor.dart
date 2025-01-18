import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart' as quill;
class Editor extends StatefulWidget {
  
  const Editor({super.key});
  
  @override
  
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  
  final quill.QuillController _controller = quill.QuillController.basic(

    configurations: quill.QuillControllerConfigurations(
      
      
    )
  );
  
  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      theme: ThemeData(brightness: Brightness.dark),
      
      home: Scaffold(
        
        appBar: AppBar(

          leading: IconButton(
            
            onPressed: () => {

              Navigator.pop(context)
            },

            icon: const Icon(Icons.arrow_back),
          ),
          
          title: const Text('Créer', style: TextStyle(fontSize: 22, color: Colors.white),),
          
          actions: const [ 

            TextButton(
              
              onPressed: null,
              
              child: Text('Publier', style: TextStyle(fontSize:22, color: Colors.grey),),
            )
          ],
        ),
        
        body: Column(

          children: [
            
            const SizedBox(height: 30,),
            
            GestureDetector(

              onTap: null,

              child: Container(
                
                width: double.infinity,
                
                height: 200,
                
                margin: const EdgeInsets.all(16),

                decoration: BoxDecoration(

                  border: Border.all(color: Colors.grey, width: 0.3, style: BorderStyle.solid),

                ),

                child: const Column(

                  mainAxisAlignment:MainAxisAlignment.center,

                  children: [
                  
                    Icon(Icons.image, size: 50, color: Colors.grey),
                    
                    Text('Appuyez pour ajouter un média', style: TextStyle(fontSize: 22,),)
                    
                  ] ,

                ),
              ),
            ),

            const SizedBox(height: 20,),

            // const Padding(
              
            //   padding: EdgeInsets.all(16.0),

            //   child:  TextField(
                

            //     decoration: InputDecoration(


            //       hintText: 'Titre de votre Chapitre',
                  
            //       hintStyle: TextStyle(fontSize: 22, ),
              
            //     ),
              
            //     style: TextStyle(fontSize: 24),
              
            //   ),
            
            // ),
            
            Expanded(
              child: Container(
              
                margin: const EdgeInsets.all(16),
              
                decoration: const BoxDecoration(
              
                  border: Border(bottom: BorderSide(color: Colors.grey, width: 0.3, style: BorderStyle.solid),),
                
                ),
                
                child: quill.QuillEditor(
                
                  scrollController: ScrollController(),
                  
                  controller: _controller,
                
                  focusNode: FocusNode(debugLabel: 'quillEditor'),
              
                  configurations: const quill.QuillEditorConfigurations(
                    

                    placeholder: 'Entrez votre Chapitre',

                    expands: true,
                    
                    autoFocus: true,
                    
                    padding: EdgeInsets.all(16.0),
                    
                  ),
                  
                ),
              ),
            ),
            
            quill.QuillToolbar.simple(
              
              
              controller: _controller,

              configurations:const  quill.QuillSimpleToolbarConfigurations(
                
                showAlignmentButtons: false,
                
                showBackgroundColorButton: false,

                showClipboardCopy: false,

                showCenterAlignment: false,

                showClipboardCut: false,

                showClipboardPaste: false,

                showCodeBlock: false,

                showColorButton: false,

                showDirection: false,

                showFontFamily: false,

                showFontSize: false,

                showDividers: false,

                showIndent: false,

                showLeftAlignment: false,

                showQuote: false,

                showLink: false,
               
                showClearFormat: false,

                showRightAlignment: false,
                
                showListCheck: false,

                showHeaderStyle: false,

                showInlineCode: false,

                showJustifyAlignment: false, 

                showListBullets: false,

                showListNumbers: false,

                showSearchButton: false,

                showSuperscript: false,

                showSubscript: false,

                showStrikeThrough: false,

              

              )
              
              
            ),


          ],
        ),
      ),
    );
  }
}