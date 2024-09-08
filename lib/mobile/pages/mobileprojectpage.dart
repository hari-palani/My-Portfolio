import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:myportfolio/components/mproject.dart';
import 'package:myportfolio/components/mprojectlist.dart';

class MobileProjectPage extends StatelessWidget {
  const MobileProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          SizedBox(height: size.height*0.3),
          Swiper(
                itemHeight: size.height*0.4,
                itemWidth: size.width*0.7,
                loop: true,
                duration: 1200,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return MProjectPage(
                size: size,
                title: title[index],
                ghlink: ghlink[index],
                animlink: animlink[index],
                );
                },
                itemCount: 3,
                layout: SwiperLayout.STACK,
              ),
              SizedBox(height: size.height*0.2),
        ],
      ),
    );
  }
}