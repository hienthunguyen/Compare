import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    //var maxWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
                alignment: Alignment.center,
                
              ),
              Positioned(
                left: 10,
                right: 10,
                top: 10,
                bottom: 500,
                child: Container(
                  width: 100,
                  height: 500,
                  color: const Color.fromARGB(255, 76, 175, 83).withOpacity(0.7),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text('Nguyen Thu Hien', style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text('0358748165', style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  )
                ),

              ),
              Positioned(
                top: 200,
                bottom: 10,
                left: 20,
                right: 20,
                child:  ListView(
                  scrollDirection: Axis.vertical,
                  children:[
                    ElevatedButton(
                      onPressed: (){
                        
                      }, 
                      child: const Text('Letter', style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       ElevatedButton(
                      onPressed: (){
                        
                      }, 
                      child: const Text('Setting', style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       ElevatedButton(
                      onPressed: (){
                        
                      }, 
                      child: const Text('Help', style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       ElevatedButton(
                      onPressed: (){
                        
                      }, 
                      child: const Text('Letter', style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                  ]
                ),
              ),
           
            ]
          ),
        ),
      ),
    );
    
  }
}

