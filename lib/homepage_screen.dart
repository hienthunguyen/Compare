// import 'package:flutter/material.dart';

// class DirectionScreen extends StatelessWidget {
//   const DirectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Director'),
//       ),
//       body: const Center(
//         child: Text('Thông tin người dùng sẽ được hiển thị ở đây.'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'community_screen.dart';
// import 'help_screen.dart';
import 'chatbox_screen.dart';
import 'login.dart';



void main() {
  runApp(const MaterialApp(
    home: LoginScreen()));
}


 class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hi! Welcome to My BMW Comparison App', style: TextStyle(fontSize: 20, color: Colors.black)),
        actions: [
          Positioned(
            top: 0,
            right: 0,
            child: Tooltip(
              message: 'Notifications',
              child: IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: (){
                  
                },
              ),
            ),
          ),
        ],  
      ),
        
        body: const MyWidget(),
        bottomNavigationBar: const BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
              IconButtonHomePage(),
              //IconButtonHelp(),
              IconButtonProfile(),
              IconButtonChatBox(),
              
            ],
          ),
        ),
      ),
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
             Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),
             );
          },
         
          icon: const Icon(Icons.home),
        ),
    );
  }
}

// class IconButtonHelp extends StatelessWidget{
//   const IconButtonHelp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Tooltip(
//       message: 'Help',
//       child: IconButton(
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()),
//               );
//             },
//             icon: const Icon(Icons.help),
//           ),
//     );
//   }
// }
class IconButtonProfile extends StatelessWidget{
  const IconButtonProfile({super.key});

  @override
  Widget build(BuildContext context){
    return Tooltip(
      message: 'Profile',
      child: IconButton(
        onPressed: () {
        // Điều hướng đến trang profile
          Navigator.push(
            context,MaterialPageRoute(builder: (context) => LoginScreen()),
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
    //var maxWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 500,
            width: double.infinity,
            child: Stack(
              children: [
                const Image(
                    width: 5000,
                    height: 2000,
                    image: AssetImage('car_1.jpg'),
                    ),
                Positioned(
                  top: 70,
                  left: 300,
                  right: 300,
                  child: _SearchButton(),
                ),
              ],
            ),
          ),
           
          const SizedBox(height:20),
           const Center(
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                     ElevatedButton(
                       onPressed: null,
                       child: Text(
                         'Coupe',
                         style: TextStyle(fontSize: 14, color: Colors.black),
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(
                       onPressed: null,
                       child: Text(
                         'Sedars',
                         style: TextStyle(fontSize: 14, color: Colors.black),
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(
                       onPressed: null,
                       child: Text(
                         'SUVs',
                         style: TextStyle(fontSize: 14, color: Colors.black),
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(
                       onPressed: null,
                       child: Text(
                         'Convertibles',
                         style: TextStyle(fontSize: 14, color: Colors.black),
                       ),
                     ),
                     SizedBox(width: 10),
                     ElevatedButton(
                       onPressed: null,
                       child: Text(
                         'Showrooms',
                         style: TextStyle(fontSize: 14, color: Colors.black),
                       ),
                     ),
                   ],
                 //),
               //],
             ),
           ),
          const SizedBox(height: 10),
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
                          image: NetworkImage("ADD IMAGE URL HERE"),
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
                          image: NetworkImage("ADD IMAGE URL HERE"),
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
                          image: NetworkImage("ADD IMAGE URL HERE"),
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
                          image: NetworkImage("ADD IMAGE URL HERE"),
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
                          image: NetworkImage("ADD IMAGE URL HERE"),
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
        ],
      ),
    );
  }
}

class _SearchButton extends StatefulWidget {
  //const _SearchButton({super.key});

  @override
  State<_SearchButton> createState() => __SearchButtonState();
}

class __SearchButtonState extends State<_SearchButton> {
  final TextEditingController _searchController = TextEditingController();

  void _search() {
    String searchTerm = _searchController.text;
    // xu ly tim kiem voi gia tri 'searchTerm' here
    print('Searching for: $searchTerm');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // thiet lap huong cuon doc
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      //overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _search,
                  child: const Icon(Icons.search),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//---------------------------------------------------------------------//



