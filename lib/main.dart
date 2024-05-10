// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'community_screen.dart';
// import 'chatbox_screen.dart';
// import 'login.dart';



// void main() {
//   runApp(const MaterialApp(
//     home: LoginScreen()));
// }


//  class Login extends StatelessWidget{
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context){
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text('My BMW Comparison App', style: TextStyle(fontSize: 20, color: Colors.black))),
//           leading: IconButton(
//             icon: Image.asset('assets/logo.png'),
//             onPressed: (){},
//             ),
          
//         actions: [
//           Positioned(
//             top: 0,
//             right: 0,
            
//             child: IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: (){
                
//               },
//             ),
//           ),
//         ],  
//       ),
        
//         body: Container(
//           height:200,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/nenn.png'),
//               //fit: BoxFit.cover,
//             ),
//           ),
//           ),
//         bottomNavigationBar: const BottomAppBar(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
             
//               IconButtonHomePage(),
//               IconButtonCommunity(),
//               IconButtonChatBox(),
              
//             ],
//           ),
//         ),
//       ),
//     );
    
//   }
//  }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: LoginScreen(),
//     );
//   }
// }

// class IconButtonHomePage extends StatelessWidget{
//   const IconButtonHomePage({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Tooltip(
//       message: 'Direction',
//       child: IconButton(
//         onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),
//              );
//           },
         
//           icon: const Icon(Icons.home),
//         ),
//     );
//   }
// }


// class IconButtonCommunity extends StatelessWidget{
//   const IconButtonCommunity({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Tooltip(
//       message: 'Profile',
//       child: IconButton(
//         onPressed: () {
//         // Điều hướng đến trang profile
//           Navigator.push(
//             context,MaterialPageRoute(builder: (context) => CommunityScreen()),
//           );
//         },
//           icon: const Icon(Icons.person),
//       ),
//     );
//   }
// }

// class IconButtonChatBox extends StatelessWidget{
//   const IconButtonChatBox({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Positioned(
//       top: 0,
//       right: 0,
//       child: Tooltip(
//         message: 'Notifications',
//         child: IconButton(
//           onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatBoxScreen()),
//                );
               
//             },
           
//             icon: const Icon(Icons.chat),
//           ),
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var maxWidth = MediaQuery.of(context).size.width;

//     return  Column(

//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//               color: Colors.transparent,
//             child: Column(
//               children: [
//                 const SizedBox(height: 20),
//                 const Text('News',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     )),
//                 const SizedBox(height: 10),
//                 Expanded(
//                   child: ListView(
//                     children: [
//                       CarouselSlider(
//                         items: [
//                           //1st Image of Slider
//                           Container(
//                             margin: const EdgeInsets.all(6.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8.0),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/car_1.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),

//                           //2nd Image of Slider
//                           Container(
//                             margin: const EdgeInsets.all(6.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8.0),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/car_2.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),

//                           //3rd Image of Slider
//                           Container(
//                             margin: const EdgeInsets.all(6.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8.0),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/car_3.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),

//                           //4th Image of Slider
//                           Container(
//                             margin: const EdgeInsets.all(6.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8.0),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/car_4.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),

//                           //5th Image of Slider
//                           Container(
//                             margin: const EdgeInsets.all(6.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(8.0),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/car_5.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ],

//                         //Slider Container properties
//                         options: CarouselOptions(
//                           height: 180.0,
//                           enlargeCenterPage: true,
//                           autoPlay: true,
//                           aspectRatio: 16 / 9,
//                           autoPlayCurve: Curves.fastOutSlowIn,
//                           enableInfiniteScroll: true,
//                           autoPlayAnimationDuration:
//                           const Duration(milliseconds: 800),
//                           viewportFraction: 0.8,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // SizedBox(
//                 //   height: 500,
//                 //   width: double.infinity,
//                 //   child: Stack(
//                 //     children: [
//                 //       const Image(
//                 //           width: 5000,
//                 //           height: 2000,
//                 //          // image: AssetImage('2.jpg'),
//                 //          image: AssetImage('assets/nenn.png'),
//                 //           ),
//                 //       Positioned(
//                 //         top: 70,
//                 //         left: 300,
//                 //         right: 300,
//                 //         child: _SearchButton(),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),

//                 //const SizedBox(height:20),
//                 Center(
//                   child: Wrap(
//                     spacing: 20,
//                     children: [
//                       GestureDetector(
//                         onTap: (){

//                         },
//                         child: const Text(
//                           "All Cars",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       GestureDetector(
//                         onTap: (){

//                         },
//                         child: const Text(
//                           "Coupe",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       GestureDetector(
//                         onTap: (){

//                         },
//                         child: const Text(
//                           "Sedars",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       GestureDetector(
//                         onTap: (){

//                         },
//                         child: const Text(
//                           "SUVs",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       GestureDetector(
//                         onTap: (){

//                         },
//                         child: const Text(
//                           "Convertibles",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       GestureDetector(
//                         onTap: (){

//                         },
//                         child: const Text(
//                           "Showrooms",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
//                         ),
//                       ),

//                       const SizedBox(width: 10),
//                       //  ElevatedButton(
//                       //    onPressed: null,
//                       //    child: Text(
//                       //      'Showrooms',
//                       //      style: TextStyle(fontSize: 14, color: Colors.black),
//                       //    ),
//                       //  ),
//                     ],
//                     //),
//                     //],
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//               ],
//             ),
//           )

//         ],

//     );
//   }
// }

// // class MyWidget extends StatelessWidget {
// //   const MyWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     //var maxWidth = MediaQuery.of(context).size.width;
// //     return Material(
      
// //       child: Column(
        
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           const SizedBox(height: 20),
// //           const Text('News',
// //               style: TextStyle(
// //                 fontSize: 14,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black,
// //               )),
// //           const SizedBox(height: 10),
// //           Expanded(
// //             child: ListView(
              
// //               children: [
// //                 CarouselSlider(
// //                   items: [
// //                     //1st Image of Slider
// //                     Container(
// //                       margin: const EdgeInsets.all(6.0),
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(8.0),
// //                         image: const DecorationImage(
// //                           image: AssetImage('assets/car_1.jpg'),
// //                           fit: BoxFit.cover,
// //                         ),
// //                       ),
// //                     ),

// //                     //2nd Image of Slider
// //                     Container(
// //                       margin: const EdgeInsets.all(6.0),
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(8.0),
// //                         image: const DecorationImage(
// //                           image: AssetImage('assets/car_2.jpg'),
// //                           fit: BoxFit.cover,
// //                         ),
// //                       ),
// //                     ),

// //                     //3rd Image of Slider
// //                     Container(
// //                       margin: const EdgeInsets.all(6.0),
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(8.0),
// //                         image: const DecorationImage(
// //                           image: AssetImage('assets/car_3.jpg'),
// //                           fit: BoxFit.cover,
// //                         ),
// //                       ),
// //                     ),

// //                     //4th Image of Slider
// //                     Container(
// //                       margin: const EdgeInsets.all(6.0),
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(8.0),
// //                         image: const DecorationImage(
// //                           image: AssetImage('assets/car_4.jpg'),
// //                           fit: BoxFit.cover,
// //                         ),
// //                       ),
// //                     ),

// //                     //5th Image of Slider
// //                     Container(
// //                       margin: const EdgeInsets.all(6.0),
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(8.0),
// //                         image: const DecorationImage(
// //                           image: AssetImage('assets/car_5.jpg'),
// //                           fit: BoxFit.cover,
// //                         ),
// //                       ),
// //                     ),
// //                   ],

// //                   //Slider Container properties
// //                   options: CarouselOptions(
// //                     height: 180.0,
// //                     enlargeCenterPage: true,
// //                     autoPlay: true,
// //                     aspectRatio: 16 / 9,
// //                     autoPlayCurve: Curves.fastOutSlowIn,
// //                     enableInfiniteScroll: true,
// //                     autoPlayAnimationDuration:
// //                         const Duration(milliseconds: 800),
// //                     viewportFraction: 0.8,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           // SizedBox(
// //           //   height: 500,
// //           //   width: double.infinity,
// //           //   child: Stack(
// //           //     children: [
// //           //       const Image(
// //           //           width: 5000,
// //           //           height: 2000,
// //           //          // image: AssetImage('2.jpg'),
// //           //          image: AssetImage('assets/nenn.png'),
// //           //           ),
// //           //       Positioned(
// //           //         top: 70,
// //           //         left: 300,
// //           //         right: 300,
// //           //         child: _SearchButton(),
// //           //       ),
// //           //     ],
// //           //   ),
// //           // ),
           
// //           //const SizedBox(height:20),
// //             Center(
// //              child: Wrap(
// //                spacing: 20,
// //                children: [
// //                 GestureDetector(
// //                       onTap: (){
                  
// //                       },
// //                       child: const Text(
// //                         "All Cars",
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
// //                       ),
// //                     ),
// //                     const SizedBox(width: 10),
// //                     GestureDetector(
// //                       onTap: (){
                  
// //                       },
// //                       child: const Text(
// //                         "Coupe",
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
// //                       ),
// //                     ),
// //                     const SizedBox(width: 10),
// //                     GestureDetector(
// //                       onTap: (){
                  
// //                       },
// //                       child: const Text(
// //                         "Sedars",
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
// //                       ),
// //                     ),
// //                     const SizedBox(width: 10),
// //                     GestureDetector(
// //                       onTap: (){
                  
// //                       },
// //                       child: const Text(
// //                         "SUVs",
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
// //                       ),
// //                     ),
// //                     const SizedBox(width: 10),
// //                     GestureDetector(
// //                       onTap: (){
                  
// //                       },
// //                       child: const Text(
// //                         "Convertibles",
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
// //                       ),
// //                     ),
// //                     const SizedBox(width: 10),
// //                     GestureDetector(
// //                       onTap: (){
                  
// //                       },
// //                       child: const Text(
// //                         "Showrooms",
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
// //                       ),
// //                     ),
                     
// //                     const SizedBox(width: 10),
// //                     //  ElevatedButton(
// //                     //    onPressed: null,
// //                     //    child: Text(
// //                     //      'Showrooms',
// //                     //      style: TextStyle(fontSize: 14, color: Colors.black),
// //                     //    ),
// //                     //  ),
// //                    ],
// //                  //),
// //                //],
// //              ),
// //            ),
// //           const SizedBox(height: 10),
          
          
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class _SearchButton extends StatefulWidget {
// //   //const _SearchButton({super.key});

// //   @override
// //   State<_SearchButton> createState() => __SearchButtonState();
// // }

// // class __SearchButtonState extends State<_SearchButton> {
// //   final TextEditingController _searchController = TextEditingController();

// //   void _search() {
// //     String searchTerm = _searchController.text;
// //     // xu ly tim kiem voi gia tri 'searchTerm' here
// //     print('Searching for: $searchTerm');
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       scrollDirection: Axis.vertical,
// //       // thiet lap huong cuon doc
// //       child: Column(
// //         children: [
// //           Container(
// //             padding: const EdgeInsets.all(20),
// //             decoration: BoxDecoration(
// //               color: Colors.white.withOpacity(0.3),
// //               borderRadius: BorderRadius.circular(20),
// //             ),
// //             child: Row(
// //               children: [
// //                 Expanded(
// //                   child: TextField(
// //                     controller: _searchController,
// //                     decoration: const InputDecoration(
// //                       hintText: 'Search...',
// //                       border: InputBorder.none,
// //                       contentPadding: EdgeInsets.zero,
// //                       //overflow: TextOverflow.ellipsis,
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(width: 10),
// //                 ElevatedButton(
// //                   onPressed: _search,
// //                   child: const Icon(Icons.search),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// //---------------------------------------------------------------------//




import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'community_screen.dart';
import 'chatbox_screen.dart';
import 'login.dart';



void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen()));
}


 class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage(
              "assets/nenn.png",
            ),
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(
              child: Text('My BMW Comparison App', style: TextStyle(fontSize: 20, color: Colors.black))),
          leading: IconButton(
            icon: Image.asset('assets/logo.png'),
            onPressed: (){},
          ),

          actions: [
            Positioned(
              top: 0,
              right: 0,

              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: (){

                },
              ),
            ),
          ],
        ),

        body:  Container(
          color: Colors.transparent,
              height: 200,
              child: const MyWidget() ,

        ) ,
        bottomNavigationBar: const BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              IconButtonHomePage(),
              IconButtonCommunity(),
              IconButtonChatBox(),

            ],
          ),
        ),
      ),
      // child: Scaffold(
      //   backgroundColor: Colors.transparent,
      //   body: Center(
      //     child: Card(
      //       elevation: 10,
      //       color: Colors.white,
      //       child: Container(
      //         width: 300,
      //         height: 300,zzzzzz
      //         alignment: Alignment.center,
      //         child: const Text('www.kindacode.com',
      //             style: TextStyle(fontSize: 24)),
      //       ),
      //     ),
      //   )),
    );






  }
 }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class IconButtonHomePage extends StatelessWidget{
  const IconButtonHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Tooltip(
      message: 'Direction',
      child: IconButton(
        onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),
             );
          },
         
          icon: const Icon(Icons.home),
        ),
    );
  }
}


class IconButtonCommunity extends StatelessWidget{
  const IconButtonCommunity({super.key});

  @override
  Widget build(BuildContext context){
    return Tooltip(
      message: 'Profile',
      child: IconButton(
        onPressed: () {
        // Điều hướng đến trang profile
          Navigator.push(
            context,MaterialPageRoute(builder: (context) => CommunityScreen()),
          );
        },
          icon: const Icon(Icons.person),
      ),
    );
  }
}

class IconButtonChatBox extends StatelessWidget{
  const IconButtonChatBox({super.key});

  @override
  Widget build(BuildContext context){
    return Positioned(
      top: 0,
      right: 0,
      child: Tooltip(
        message: 'Notifications',
        child: IconButton(
          onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatBoxScreen()),
               );
               
            },
           
            icon: const Icon(Icons.chat),
          ),
      ),
    );
  }
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;

    return  Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
              color: Colors.transparent,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text('News',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/car_1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/car_2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/car_3.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/car_4.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/car_5.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 500,
                //   width: double.infinity,
                //   child: Stack(
                //     children: [
                //       const Image(
                //           width: 5000,
                //           height: 2000,
                //          // image: AssetImage('2.jpg'),
                //          image: AssetImage('assets/nenn.png'),
                //           ),
                //       Positioned(
                //         top: 70,
                //         left: 300,
                //         right: 300,
                //         child: _SearchButton(),
                //       ),
                //     ],
                //   ),
                // ),

                //const SizedBox(height:20),
                Center(
                  child: Wrap(
                    spacing: 20,
                    children: [
                      GestureDetector(
                        onTap: (){

                        },
                        child: const Text(
                          "All Cars",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){

                        },
                        child: const Text(
                          "Coupe",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){

                        },
                        child: const Text(
                          "Sedars",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){

                        },
                        child: const Text(
                          "SUVs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){

                        },
                        child: const Text(
                          "Convertibles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){

                        },
                        child: const Text(
                          "Showrooms",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
                        ),
                      ),

                      const SizedBox(width: 10),
                      //  ElevatedButton(
                      //    onPressed: null,
                      //    child: Text(
                      //      'Showrooms',
                      //      style: TextStyle(fontSize: 14, color: Colors.black),
                      //    ),
                      //  ),
                    ],
                    //),
                    //],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          )

        ],

    );
  }
}

// class _SearchButton extends StatefulWidget {
//   //const _SearchButton({super.key});

//   @override
//   State<_SearchButton> createState() => __SearchButtonState();
// }

// class __SearchButtonState extends State<_SearchButton> {
//   final TextEditingController _searchController = TextEditingController();

//   void _search() {
//     String searchTerm = _searchController.text;
//     // xu ly tim kiem voi gia tri 'searchTerm' here
//     print('Searching for: $searchTerm');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       // thiet lap huong cuon doc
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.3),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _searchController,
//                     decoration: const InputDecoration(
//                       hintText: 'Search...',
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.zero,
//                       //overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: _search,
//                   child: const Icon(Icons.search),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//---------------------------------------------------------------------//



