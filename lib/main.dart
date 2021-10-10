import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:idCard()
  ));
}

class idCard extends StatefulWidget {
  const idCard({Key? key}) : super(key: key);

  @override
  State<idCard> createState() => _idCardState();
}

class _idCardState extends State<idCard> {
  int level=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text("Flutter ID Card"),
        centerTitle:true,
        backgroundColor: Colors.grey[550],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //set state makes the build to re run and update the widget
        setState(() {level+=1;});
      },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding:EdgeInsets.fromLTRB(20.0,40.0,30.0,0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/man.png'),
                  radius: 80.0,
                ),
              ),
              Divider(height: 60.0,color: Colors.grey[600],),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                'Adeel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0,),
              const Text(
                'Current flutter level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                '$level',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
                children: [
                  Icon(
                      Icons.mail,
                      color:Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    "sampleMail@example.com",
                    style:TextStyle(
                      color:Colors.grey[400],
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}


