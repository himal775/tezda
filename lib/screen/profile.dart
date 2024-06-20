import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  String username = "Himal Neupane";
  String email = "himalneupane775@gmail.com";

  @override
  void initState() {
    super.initState();

    getSharepreferences();
  }

  void getSharepreferences() async {
    // final prefs = await SharedPreferences.getInstance();
    // final UserName = prefs.getString("userName") ?? "UserName";
    // final Email = prefs.getString("email") ?? "username@gmail.com";

    // setState(() {
    //   username = UserName;
    //   email = Email;
    // });
  }

  void logOut() async {
    // final prefs = await SharedPreferences.getInstance();
    // prefs.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: ArcClipper(),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 173, 16, 5),
                      // gradient: LinearGradient(
                      //     begin: Alignment.topCenter,
                      //     end: Alignment.bottomCenter,
                      //     colors: [
                      //   Color.fromARGB(255, 245, 105, 95),
                      //   Color.fromARGB(255, 158, 37, 66),
                      // ])
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionalTranslation(
                    translation: Offset(0.0, 0.5),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 50,
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromARGB(255, 173, 16, 5),
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 20,
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    email,
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            // Text("Contact Info", style: TextStyle(fon),),
            // contactInfo(),
            const SizedBox(
              height: 20,
            ),
            listOfItems(context)
          ],
        ),
      ),
    );
  }

  Widget contactInfo() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.email,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("himalneupane775@gmail.com"),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.phone,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("07404257825"),
            )
          ],
        ),
      ],
    );
  }

  Widget listOfItems(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
          leading: CircleAvatar(
            radius: 22.5,
            backgroundColor: Colors.pink.shade100,
            child: Icon(
              Icons.feedback_outlined,
              color: Colors.pink.shade300,
            ),
          ),
          title: Text(
            "Feedback",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
          leading: CircleAvatar(
            radius: 22.5,
            backgroundColor: Colors.blue.shade100,
            child: Icon(
              Icons.terminal,
              color: Colors.blue.shade400,
            ),
          ),
          title: Text(
            "Terms and Conditions",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),

        // ListTile(
        //   leading: Icon(
        //     Icons.feedback,
        //     color: Colors.blue,
        //   ),
        //   title: Text("Feedback"),
        // ),
        InkWell(
          onTap: () {
            // logOut();
            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(builder: (context) => const LoginPage()),
            //   (route) => false,
            // );
          },
          child: const ListTile(
            leading: CircleAvatar(
              radius: 22.5,
              child: Icon(
                Icons.logout,
                color: Colors.black54,
              ),
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
