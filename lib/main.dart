import 'package:flutter/material.dart';
import 'screens/signin_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/edit_address_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SigninScreen(), // Default screen
      routes: {
        '/signin': (context) => SigninScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/edit_address': (context) => EditAddressScreen(),
      },
    );
  }
}

// DASHBOARD

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyAccountsPage(),
//     );
//   }
// }

// class MyAccountsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Accounts"),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {},
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Profile Section
//             Container(
//               padding: EdgeInsets.all(15),
//               margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//               decoration: BoxDecoration(
//                 color: Colors.orange,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Colors.white,
//                     child: Icon(Icons.person, size: 40, color: Colors.black),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Nandini",
//                           style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           "nandu@gmail.com",
//                           style: TextStyle(fontSize: 14, color: Colors.white70),
//                         ),
//                         Text(
//                           "1234567890",
//                           style: TextStyle(fontSize: 14, color: Colors.white70),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Icon(Icons.edit, color: Colors.white),
//                 ],
//               ),
//             ),

//             // Section - Your Information
//             sectionTitle("YOUR INFORMATION"),
//             menuItem(Icons.shopping_bag, "Your Orders"),
//             menuItem(Icons.location_on, "Addresses"),
//             menuItem(Icons.inventory, "Inventory"),

//             // Section - Other Information
//             sectionTitle("OTHER INFORMATION"),
//             menuItem(Icons.share, "Share the app"),
//             menuItem(Icons.lock, "Account Privacy"),
//             menuItem(Icons.info, "About us"),
//             menuItem(Icons.notifications, "Notification preferences"),
//             menuItem(Icons.support, "Support"),
//             menuItem(Icons.logout, "Log out"),

//             // Footer
//             SizedBox(height: 20),
//             Text("FAQs", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
//             SizedBox(height: 5),
//             Text("Privacy Policy", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
//             SizedBox(height: 5),
//             Text("Terms & Condition", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
//             SizedBox(height: 20),
//             Text("Sooochi", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             Text("v0.0.1", style: TextStyle(fontSize: 14, color: Colors.grey)),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   // Section Title
//   Widget sectionTitle(String title) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: Text(
//         title,
//         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey[600]),
//       ),
//     );
//   }

//   // Menu Item
//   Widget menuItem(IconData icon, String title) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.black),
//       title: Text(title, style: TextStyle(fontSize: 16)),
//       trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
//       onTap: () {},
//     );
//   }
// }





// Signuosignin

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:pinput/pinput.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: SignInScreen(),
//   ));
// }

// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final TextEditingController phoneController = TextEditingController();
//   String errorMessage = '';

//   void validateAndProceed() {
//     setState(() {
//       if (phoneController.text.length != 10) {
//         errorMessage = "Please enter a valid 10-digit number";
//       } else {
//         errorMessage = '';
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => OTPScreen()),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.white, Colors.green.shade300],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('assets/images/app_icon.png', height: 80),
//             SizedBox(height: 10),
//             Text(
//               "Shop from your nearest kiranas",
//               style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
//             SizedBox(height: 200), // 30px space

//             // Phone Number Input Box
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                 color: Colors.lightBlue.withOpacity(0.2), // Light sky blue background
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   Icon(Icons.phone, color: Colors.blue), // Phone icon
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       controller: phoneController,
//                       keyboardType: TextInputType.phone,
//                       maxLength: 10,
//                       decoration: InputDecoration(
//                         counterText: "",
//                         border: InputBorder.none,
//                         hintText: "Phone number",
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             if (errorMessage.isNotEmpty)
//               Padding(
//                 padding: EdgeInsets.only(top: 5),
//                 child: Text(
//                   errorMessage,
//                   style: TextStyle(color: Colors.red, fontSize: 14),
//                 ),
//               ),
//             SizedBox(height: 10),

//             // NEXT Button
//             ElevatedButton(
//               onPressed: validateAndProceed,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: Center(
//                   child: Text("NEXT", style: TextStyle(fontSize: 18, color: Colors.white)),
//                 ),
//               ),
//             ),

//             SizedBox(height: 20),

//             // Social Login Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset("assets/images/google_logo.png", height: 40),
//                 SizedBox(width: 20),
//                 Image.asset("assets/images/facebook_logo.png", height: 30),
//                 SizedBox(width: 20),
//                 Image.asset("assets/images/apple_logo.png", height: 30),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // OTP SCREEN
// class OTPScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.white, Colors.green.shade300],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('assets/images/app_icon.png', height: 80),
//             SizedBox(height: 10),
//             Text(
//               "Shop from your nearest kiranas",
//               style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
//             SizedBox(height: 200),

//             // OTP Input Box
//             Container(
//               padding: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(color: Colors.black26, blurRadius: 5),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("OTP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
//                       Text("Resend OTP", style: TextStyle(fontSize: 14, color: Colors.blue)),
//                     ],
//                   ),
//                   SizedBox(height: 10),

//                   // OTP Box Input
//                   Pinput(
//                     length: 6,
//                     defaultPinTheme: PinTheme(
//                       width: 40,
//                       height: 40,
//                       textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       decoration: BoxDecoration(
//                         color: Colors.lightBlue.withOpacity(0.2), // Light sky blue background
//                         borderRadius: BorderRadius.circular(10),
//                         border: Border.all(color: Colors.transparent),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 15),

//                   // NEXT Button
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                     ),
//                     child: SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: Center(
//                         child: Text("NEXT", style: TextStyle(fontSize: 18, color: Colors.white)),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// Address

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ConfirmAddressPage(),
//     );
//   }
// }

// class ConfirmAddressPage extends StatefulWidget {
//   @override
//   _ConfirmAddressPageState createState() => _ConfirmAddressPageState();
// }

// class _ConfirmAddressPageState extends State<ConfirmAddressPage> {
//   late GoogleMapController mapController;

//   final LatLng _burjKhalifa = const LatLng(25.1972, 55.2744);

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green.shade100,
//       appBar: AppBar(
//         title: const Text("Add Address", style: TextStyle(color: Colors.green)),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.green),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Map Container
//               Container(
//                 height: 180,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: GoogleMap(
//                     mapType: MapType.normal,
//                     onMapCreated: _onMapCreated,
//                     initialCameraPosition: CameraPosition(
//                       target: _burjKhalifa,
//                       zoom: 15,
//                     ),
//                     markers: {
//                       Marker(
//                         markerId: const MarkerId("location"),
//                         position: _burjKhalifa,
//                         infoWindow: const InfoWindow(title: "Burj Khalifa"),
//                       ),
//                     },
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // Address Info
//               Card(
//                 color: Colors.white,
//                 elevation: 3,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//                 child: ListTile(
//                   title: const Text(
//                     "Rajkumar road",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: const Text(
//                     "Rajajinagar, Srinivasa nagar, Deco dreams\nBengaluru - 589742",
//                   ),
//                   trailing: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.orange,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8))),
//                     onPressed: () {},
//                     child: const Text("CHANGE",
//                         style: TextStyle(color: Colors.white)),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 10),

//               // Add Address Form
//               _buildSectionTitle("Add Address"),
//               _buildTextField("House number and floor"),
//               _buildTextField("Building and block number (optional)"),
//               _buildTextField("Landmark and Area name (optional)"),

//               const SizedBox(height: 10),

//               // Add Address Label
//               _buildSectionTitle("Add Address Label"),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildLabelButton("Home", Colors.orange, Colors.white),
//                   _buildLabelButton("Work", Colors.grey.shade300, Colors.black),
//                   _buildLabelButton("Other", Colors.grey.shade300, Colors.black),
//                 ],
//               ),

//               const SizedBox(height: 10),

//               // Receiver's Details
//               _buildSectionTitle("Receiver's details"),
//               _buildTextField("Receiver’s Name"),
//               _buildTextField("Receiver’s Phone number"),

//               const SizedBox(height: 20),

//               // Proceed Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     padding: const EdgeInsets.symmetric(vertical: 14),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     "PROCEED",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Custom function to build a section title
//   Widget _buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6),
//       child: Text(
//         title,
//         style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//     );
//   }

//   // Custom function to build text fields
//   Widget _buildTextField(String hint) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: hint,
//           filled: true,
//           fillColor: Colors.grey.shade200,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide.none,
//           ),
//         ),
//       ),
//     );
//   }

//   // Custom function to build label buttons
//   Widget _buildLabelButton(String label, Color bgColor, Color textColor) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 4),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: bgColor,
//             padding: const EdgeInsets.symmetric(vertical: 12),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10)),
//           ),
//           onPressed: () {},
//           child: Text(label, style: TextStyle(color: textColor)),
//         ),
//       ),
//     );
//   }
// }

// edit address/

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Edit Address',
//       home: EditAddressScreen(),
//     );
//   }
// }

// class EditAddressScreen extends StatefulWidget {
//   @override
//   _EditAddressScreenState createState() => _EditAddressScreenState();
// }

// class _EditAddressScreenState extends State<EditAddressScreen> {
//   Completer<GoogleMapController> _controller = Completer();
//   LatLng _currentPosition = LatLng(12.9716, 77.5946); // Default to Bangalore
//   String _currentAddress = "Fetching address...";

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Check location services
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       setState(() {
//         _currentAddress = "Location services are disabled.";
//       });
//       return;
//     }

//     // Check permissions
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         setState(() {
//           _currentAddress = "Location permission denied.";
//         });
//         return;
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       setState(() {
//         _currentAddress = "Location permission permanently denied.";
//       });
//       return;
//     }

//     // Get the location
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       _currentPosition = LatLng(position.latitude, position.longitude);
//     });

//     _getAddressFromLatLng(position.latitude, position.longitude);
//   }

//   Future<void> _getAddressFromLatLng(double lat, double lng) async {
//     try {
//       List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
//       Placemark place = placemarks[0];

//       setState(() {
//         _currentAddress =
//             "${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.postalCode}";
//       });
//     } catch (e) {
//       setState(() {
//         _currentAddress = "Could not fetch address";
//       });
//     }
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//   }

//   void _onMapTapped(LatLng position) {
//     setState(() {
//       _currentPosition = position;
//       _currentAddress = "Fetching address...";
//     });

//     _getAddressFromLatLng(position.latitude, position.longitude);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Edit Address"),
//         backgroundColor: Colors.green,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _currentPosition,
//                 zoom: 14.0,
//               ),
//               markers: {
//                 Marker(
//                   markerId: MarkerId("currentLocation"),
//                   position: _currentPosition,
//                   draggable: true,
//                   onDragEnd: (newPosition) {
//                     _onMapTapped(newPosition);
//                   },
//                 ),
//               },
//               onTap: _onMapTapped,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(16.0),
//             color: Colors.white,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.location_pin, color: Colors.red),
//                     SizedBox(width: 8),
//                     Expanded(
//                       child: Text(
//                         _currentAddress,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.orange,
//                       padding: EdgeInsets.symmetric(vertical: 14),
//                     ),
//                     onPressed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text("Address Confirmed: $_currentAddress")),
//                       );
//                     },
//                     child: Text("NEXT", style: TextStyle(color: Colors.white)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
