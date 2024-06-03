import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


// BIZCARD %%%%%%%%%%%%%%%%%%%%%%%
class Bizcard extends StatelessWidget {
  const Bizcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz card"),
        centerTitle: false,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard() ,_getAvatar()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 300,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.purple.shade100,
          borderRadius: BorderRadius.circular(23.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "mohammed ibrahim ",
              style: TextStyle(
                  fontSize: 20.9,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Text("Student"),
          Text("xyz college "),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.person_2_sharp),
              ),
              Text("E : abcd@gmail.com")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all((Radius.circular(50.0))),
        border: Border.all(color: Colors.white, width: 2.2),
        image: const DecorationImage(
            image: NetworkImage("https://picsum.photos/500/300"),
        fit: BoxFit.cover),
      ),
    );
  }
}

// USING (RETURN ) SCAFFOLD {BETTER}
class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  _tapButton() {
    debugPrint("helol helooo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("phone linging"),
        backgroundColor: Colors.red.shade600,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () => debugPrint("u just tapped"),
            icon: Icon(Icons.email),
          ),
          IconButton(onPressed: _tapButton, icon: Icon(Icons.access_alarm))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lime,
          child: Icon(Icons.missed_video_call),
          onPressed: () => debugPrint("hahahahaahah")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "profile",
              backgroundColor: Colors.blueAccent.shade700),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "breez"),
          BottomNavigationBarItem(
              icon: Icon(Icons.cabin_rounded), label: "haahha"),
        ],
        backgroundColor: Colors.red.shade600,
        onTap: (int index) => debugPrint("u just tapped $index"),
      ),
      backgroundColor: Colors.greenAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

            // InkWell(
            //
            //   child: Text("tap mme",
            //     style: TextStyle(fontSize: 30),
            //
            //   ),
            //   onTap: ()=> debugPrint("thank ypou"),
            //   borderRadius: BorderRadius.circular(10.0),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text("hellol eleoejvh"),
          backgroundColor: Colors.purpleAccent.shade700,
        );

        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8.0)),
        child: Text("button"),
      ),
    );
  }
}

// USING MATERIAL (RETURN)
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.blue,
      child: Center(
          child: Text(
        "hello Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 50,
            fontStyle: FontStyle.italic),
      )),
    );

    // return const Center(
    //   child: Text("hello Flutter",
    //     textDirection: TextDirection.ltr,),
    // );
  }
}
