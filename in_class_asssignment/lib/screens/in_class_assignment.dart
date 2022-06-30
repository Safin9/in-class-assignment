import 'package:flutter/material.dart';

class InClass extends StatelessWidget {
  const InClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64, bottom: 34),
                child: Container(
                  width: 159,
                  height: 159,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/236x/79/12/d8/7912d81ea3eb82efeb0b42a7cc7b88cc--pitbull-images-pitbull-rapper.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(90.0)),
                    border: Border.all(
                      color: const Color.fromRGBO(189, 255, 215, 0.9),
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              const Text(
                'FULL NAME',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 64, top: 15, right: 64),
                child: Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Nunc\n vulputate libero et velit interdum, ac aliquet odio mattis.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              myWidget(
                text: 'LinkedIn',
                color: const Color.fromRGBO(243, 242, 255, 1),
                icon: Icons.link,
              ),
              myWidget(
                text: 'facebook',
                color: const Color.fromRGBO(199, 228, 255, 1),
                icon: Icons.facebook,
              ),
              myWidget(
                text: 'Instagram',
                color: const Color.fromRGBO(255, 242, 242, 1),
                icon: Icons.link,
              ),
              myWidget(
                text: 'MyWebsite',
                color: const Color.fromRGBO(255, 251, 242, 1),
                icon: Icons.link,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myContainer(
                      icon: Icons.call,
                      color: const Color.fromRGBO(243, 242, 255, 1),
                    ),
                    myContainer(
                      icon: Icons.mail,
                      color: const Color.fromRGBO(199, 228, 255, 1),
                    ),
                    myContainer(
                      icon: Icons.message,
                      color: const Color.fromRGBO(255, 251, 242, 1),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myWidget(
      {required String text, required Color color, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        height: 54,
        width: 299,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget myContainer({required IconData icon, required Color color}) {
  return ClipRect(
    child: Container(
      color: color,
      width: 40,
      height: 40,
      child: Center(
        child: Icon(icon),
      ),
    ),
  );
}
