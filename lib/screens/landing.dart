import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key});

  final String _imagePath = 'assets/images/landing_background.png';
  final String _inscription = 'assets/images/landing_inscription.png';
  final int _score = 33;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double width = constraints.maxWidth;
            final double height = constraints.maxHeight;
            final double textSize = width * 0.06;
            const Color containersColor = Color.fromRGBO(202, 46, 46, 1);

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: height * 0.04),
                    Image.asset(_inscription),
                    SizedBox(height: height * 0.1),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.045, vertical: height * 0.005),
                      color: containersColor,
                      child: Text(
                        _score.toString(),
                        style: TextStyle(
                          fontSize: textSize * 1.8,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.02),
                      color: containersColor,
                      child: Text(
                        'Best Score',
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: height * 0.08),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                            width * 0.83,
                            height * 0.085,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'START GAME',
                          style: TextStyle(
                            fontSize: textSize,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
