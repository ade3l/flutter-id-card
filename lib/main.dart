import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home:idCard()
  ));
}

class idCard extends StatelessWidget {
  const idCard({Key? key}) : super(key: key);

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
      body: Padding(
        padding:EdgeInsets.fromLTRB(20.0,40.0,30.0,0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Center(
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
                'Noob',
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
