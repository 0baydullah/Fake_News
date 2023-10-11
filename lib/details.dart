import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'newses.dart';

class Details extends StatelessWidget {
  const Details(this.index,{super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details News"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: ListView(
            children: [
              Image.network(newses[index].image),
              SizedBox(height: 35,),
              Center(
                child: Text(
                  newses[index].headLine,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.red.shade800,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text(
                newses[index].news,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  color: Colors.grey.shade800,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Back",
                        style: GoogleFonts.habibi(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red.shade900,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
