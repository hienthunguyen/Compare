import 'package:flutter/material.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMW ID REGISTRATION', style: TextStyle(fontSize: 26, color: Colors.black, fontWeight:FontWeight.bold)),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('     Already have a BMW ID? Login ', style: TextStyle(fontSize: 12, color: Colors.black)),
              GestureDetector(
                onTap: () {  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text(
                  "here",
                  style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}

// import 'package:flutter/material.dart';
// import 'login.dart';

// class RegisterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BMW ID REGISTRATION', style: TextStyle(fontSize: 26, color: Colors.black, fontWeight:FontWeight.bold)),
//       ),
      
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               const Text('     Already have a BMW ID? Login ', style: TextStyle(fontSize: 12, color: Colors.black)),
//               GestureDetector(
//                 onTap: () async {
//                   // Navigator.pop(context);
//                   // Thực hiện hành động khi liên kết được nhấn
//                   // Ví dụ: điều hướng đến màn hình đăng ký
//                   // Đặt màn hình đăng nhập vào một biến
//                   var loginScreen = LoginScreen();
//                   // Navigator.push để điều hướng đến màn hình đăng nhập
//                   await Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen));
//                   // Sau khi đăng nhập thành công, quay lại màn hình trước đó
//                   //Navigator.pop(context);
//                 },
//                 child: const Text(
//                   "here",
//                   style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
      
//     );
//   }
// }