import 'package:flutter/material.dart';

class File extends StatelessWidget {
  File({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Maria Ganeeva',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Photo(),
            SizedBox(height: 15),
            MenuWidget(
                icon: Icons.people, text: 'Maria Ganeeva', about: 'Name'),
            SizedBox(height: 30),
            MenuWidget(
                icon: Icons.shopping_bag, text: 'Student', about: 'Position'),
            SizedBox(height: 30),
            MenuWidget(
                icon: Icons.computer,
                text: 'Computer engineering',
                about: 'Departament'),
            SizedBox(height: 30),
            MenuWidget(
                icon: Icons.email,
                text: 'mganeeva18@mail.ru',
                about: 'Public email address'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final String about;

  const MenuWidget(
      {Key? key, required this.icon, required this.text, required this.about})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              about,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey,
                width: 1,
              )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Icon(icon),
                    SizedBox(
                      width: 15,
                    ),
                    Text(text,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        _Photo(),
        SizedBox(height: 50),
      ],
    );
  }
}

class _Photo extends StatelessWidget {
  const _Photo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          '/Users/mariaganeeva/Desktop/first/first/IMG_0549.jpeg',
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
