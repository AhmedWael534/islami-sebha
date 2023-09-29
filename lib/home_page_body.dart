import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int counter = 0;
  List<String> texts = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر"
  ];
int currentIndex = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.09),
                  child: Transform.rotate(
                    angle: angle,
                    child: Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: InkWell(
                        onTap: () {clickOnImage();
                        },
                        child: Image.asset("assets/images/body1.png",
                            height: size.height * 0.30),
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(left: size.width * 0.10),
                  child: Image.asset("assets/images/head1.png",
                      height: size.height * 0.15))
            ],
          ),
          const SizedBox(height: 35),
          const Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 30),
          Container(
            width: 69,
            height: 81,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 100),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xA1B7935F),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              '$counter',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: 137,
            height: 51,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              texts[currentIndex],
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  void clickOnImage() {
    angle += 3;
    counter++;
    if (counter == 34) {
      counter = 0;
      currentIndex++;
      if(currentIndex>2){
        currentIndex=0;
      }
    }
    setState(() {});
  }
}
