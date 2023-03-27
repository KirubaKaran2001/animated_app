import 'package:flutter/material.dart';

signInDialog(context) {
  showGeneralDialog(
    context: context,
    barrierLabel: 'Sign In',
    transitionDuration: const Duration(milliseconds: 400),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      Tween<Offset> tween;
      tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
      return SlideTransition(
        position: tween.animate(
          CurvedAnimation(parent: animation, curve: Curves.easeInOut),
        ),
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'Sign In',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Email',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //                                  color: Color.fromARGB(255, 48, 56, 216),

                            //   ),
                            // ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.email,
                                color: Color(0xfffb6e87),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Color.fromARGB(255, 48, 56, 216),
                            //   ),
                            // ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.password,
                                color: Color(0xfffb6e87),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/homeScreen');
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xfffb6e87),
                              border: Border.all(
                                color: const Color(0xfffb6e87),
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontFamily: 'Intel',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Colors.black12,
                                thickness: 2,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'or',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.black12,
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            'Sign up Email,Apple,Google.',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.message,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.apple,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.api,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  right: 0,
                  left: 0,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
