import 'package:fastshop/components_ui/size_config.dart';
import 'package:fastshop/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';


import '../../../components_ui/colors_app.dart';
import '../../../components_ui/default_button.dart';
import '../../sign_in/sign_in.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int currentPage = 0;
  List<Map<String,String>> splashData = [
      {
      "text": "Bem Vindo à FastShop, \nvamos as compras!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "Nós ajudamos você a comprar \no melhor em todo o Brasil",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Nós mostramos as melhores ofertas. \ncom descontos e CashBack na sua mão",
      "image": "assets/images/splash_3.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context,index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]['text'],
                  ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                      child: Column(
                        children: [
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              splashData.length, 
                              (index) => buildDot(index: index),
                              ),
                          ),
                          const Spacer(flex:3),
                          DefaultButton(
                            texto: 'Continue',
                            press: (){
                              Navigator.pushNamed(context, SignScreen.routeName);
                            },
                            ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
    );
  }
  
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ?  20 : 6,
      decoration:  BoxDecoration(
           color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
      );
  }
}