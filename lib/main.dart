import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //    initialRoute: '/',
      // routes: {
      //   '/': (context) => MyHomePage(),
      //   '/second': (context) => SecondScreen()
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
          child: Container(
        width: 300,
        height: 251,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'I am',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.w500),
            ),
            Spacer(flex: 50),
            NewWidget(
              title: 'Man',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen3()));
              },
            ),
            NewWidget(
              title: 'Woman',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
            ),
          ],
        ),
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screens(
      isMan: false,
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screens(
      isMan: true,
    );
  }
}

class Screen4 extends StatelessWidget {
  final String name;
  final String age;
  final String image;
  const Screen4({
    Key? key,
    required this.name,
    required this.age,
    required this.image,
  }) : super(key: key);
  // https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500

  @override
  Widget build(BuildContext context) {
    return Profile(
      image: image,
      name: name,
      age: age,
      location: 'Belarus, Baranovichi',
      lagnuages: 'Spanish',
      image1: 'Emoji',
      image2: 'Emoji',
    );
  }
}

class Screen5 extends StatelessWidget {
  final String name;
  final String age;
  final String image;
  const Screen5({
    Key? key,
    required this.name,
    required this.age,
    required this.image,
  }) : super(key: key);
  //

  @override
  Widget build(BuildContext context) {
    return Profile(
      image: image,
      name: name,
      age: age,
      location: 'France, Lion',
      lagnuages: 'English',
      image1: 'Emoji1',
      image2: 'GB',
    );
  }
}

class Profile extends StatelessWidget {
  final String image1;
  final String image2;
  final String location;
  final String lagnuages;

  const Profile({
    Key? key,
    required this.image,
    required this.name,
    required this.age,
    required this.location,
    required this.lagnuages,
    required this.image1,
    required this.image2,
  }) : super(key: key);

  final String image;
  final String name;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/dot.png'),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '$age y.o.',
                      style: TextStyle(
                        color: Color(0xffC4DAF1),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Location:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Lagnuages:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Education:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Job:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Zodiac:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Height:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Eye color:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Hair color:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Smoking:'),
                        ),
                      ],
                    ),
                    SizedBox(width: 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Image.asset('assets/images/$image1.png'),
                              Text(location),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Image.asset('assets/images/$image2.png'),
                              Text(lagnuages),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('University degree'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Museum worker, lecturer'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Image.asset('assets/images/zodiac-icon.png'),
                              Text('Pisces'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('154 cm'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Green'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Redhead'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Non-smoker'),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 83,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/menu.png'),
                    SizedBox(height: 1),
                    Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/chat.png'),
                    SizedBox(height: 1),
                    Text(
                      'Chat',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(image),
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Screens extends StatelessWidget {
  final bool isMan;

  const Screens({
    Key? key,
    required this.isMan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController ageController = TextEditingController();
    final TextEditingController imageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leadingWidth: 100,
        leading: TextButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.blue,
          ),
          label: Text(
            'Back',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        title: Text(
          isMan ? "Man" : "Woman",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(50, 20, 50, 25),
        children: [
          NewWidgets(
            text: 'Your name',
            controller: nameController,
          ),
          NewWidgets(
            text: 'Age',
            keyboardType: TextInputType.number,
            controller: ageController,
          ),
          NewWidgets(
            text: 'Image Url',
            controller: imageController,
          ),
          SizedBox(
            height: 120,
          ),
          NewWidget(
              title: 'Next',
              onTap: () {
                isMan
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen5(
                            name: nameController.text,
                            age: ageController.text,
                            image: imageController.text,
                          ),
                        ),
                      )
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen4(
                            name: nameController.text,
                            age: ageController.text,
                            image: imageController.text,
                          ),
                        ),
                      );
              }),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String title;
  final Function onTap;

  const NewWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: () => onTap(),
        ),
      ),
    );
  }
}

class NewWidgets extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String text;

  const NewWidgets({
    super.key,
    required this.text,
    required this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: Container(
        height: 123,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              controller: controller,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    )),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
