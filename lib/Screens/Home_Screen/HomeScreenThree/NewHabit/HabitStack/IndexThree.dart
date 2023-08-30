import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/controller/CreatHabitController.dart';

import '../../../../../Widgets/CustomWidgets/CustomText.dart';

class IndexThree extends StatefulWidget {
  const IndexThree({super.key});

  @override
  State<IndexThree> createState() => _IndexThreeState();
}

class _IndexThreeState extends State<IndexThree> {
  int activeeIndex=0;
  List<TextImages> imageList =[
    TextImages(text: "Health",image:"assets/images/dumbleeee.jpg"),
    TextImages(text: "Mind",image:"assets/images/mind.jpg"),
    TextImages(text: "Productivity",image:"assets/images/productitiy.jpg"),
    TextImages(text: "Fun",image:"assets/images/funn.jpg"),
    TextImages(text: "Learning",image:"assets/images/leaning.jpg"),
    TextImages(text: "Finances",image:"assets/images/finance.jpg"),
    TextImages(text: "Mindfulness",image:"assets/images/minfulness.jpg"),
    TextImages(text: "RelationShip",image:"assets/images/relationship.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatHabitController>(builder: (cont){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 400.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),


          ),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Center(
                  child: CustomText(
                    text: "Which life area does\n"
                        "this habit improve?",
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.blueAccent,
                  )),
              SizedBox(height: 30.h,),
              CarouselSlider(
                options: CarouselOptions(
                  height: 220,
                  aspectRatio: 2.0,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    cont.health=imageList[index].text;
                    print(cont.health);
                    setState(() {
                      activeeIndex=index;
                    });
                    // Callback triggered whenever the current page index changes
                    // You can use this to update the state or perform other actions
                  },
                  scrollDirection: Axis.horizontal,
                ),
                items: imageList.map((imageUrl) {

                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          color: Colors.black,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.white)


                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                imageUrl.image,height: 120.h,width: 120.w,
                              ),
                              CustomText(text: imageUrl.text,fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white,)
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

            ],
          ),
        ),
      );
    });
  }
}
class TextImages {
  String text;
  String image;
  TextImages({required this.text,required this.image});
}