import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Screens/HomeScreenFive/HomeScreenFive.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';

class FiveNextScreen extends StatefulWidget {
  final int? index;
  const FiveNextScreen({super.key,this.index});

  @override
  State<FiveNextScreen> createState() => _FiveNextScreenState();
}

class _FiveNextScreenState extends State<FiveNextScreen> {

  double seconds = 0.0;
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = const Duration();
  Duration position = const Duration();
  bool isPlaying = false;
  double value = 0.0;

  @override
  void initState() {
    super.initState();
    initAudioPlayer();
  }

  Future<void> initAudioPlayer() async {
    audioPlayer.onPlayerComplete.listen((event) {
      print("Sharjeel");
      isPlaying=false;
      value=0.0;
      setState(() {

      });
    });
    audioPlayer.onDurationChanged.listen((Duration d) {
      print(audioPlayer.state);
      setState(() {
        duration = d;
      });
    });
    audioPlayer.onPositionChanged.listen((Duration d) {
      setState(() {
        position = d;
      });
      value = (position.inMilliseconds.toDouble() /
          duration.inMilliseconds.toDouble());


    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void playAudio(String audioLink) async {
    await audioPlayer.play(UrlSource(audioLink));
    setState(() {
      isPlaying = true;
    });
  }

  void pauseAudio() {
    audioPlayer.pause();
    setState(() {
      isPlaying = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: imageList[widget.index??0].color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.grey,)),
              ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: 300.h,
            width: MediaQuery.of(context).size.width,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),

                child: Image.asset("${imageList[widget.index??0].image}",

                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
              Center(child:  CustomText(text: "${imageList[widget.index??0].text}",color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600,)),
              SizedBox(height: 10.h,),
              Center(child: CustomText(text: "${imageList[widget.index??0].textTwo}",color: Colors.white.withOpacity(0.4),)),
              SizedBox(height: 30.h,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                  child:  Card(
                    color: Colors.green.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),

                          SizedBox(
                              width: 300,
                              child:SizedBox(
                                width: 75.w,
                                child: LinearProgressIndicator(
                                  color: Colors.white,
                                  backgroundColor: Colors.grey.withOpacity(0.3),

                                  value: value,
                                ),
                              )
                            // child: Slider(
                            //     activeColor: Colors.white,
                            //     inactiveColor: Colors.grey.withOpacity(0.3),
                            //     min: 0,
                            //     max: 60,
                            //     onChanged: (double change) {
                            //
                            //   }, value: value,)
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (isPlaying) {
                                    pauseAudio();
                                  } else {
                                    playAudio('https://freetestdata.com/wp-content/uploads/2021/09/Free_Test_Data_100KB_OGG.ogg');
                                  }
                                },
                                child: Icon(
                                  isPlaying ? Icons.pause:Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     InkWell(
                          //         onTap:  () async {
                          //           await player.pause();
                          //         },
                          //         child: Icon(Icons.pause,color: Colors.yellow.withOpacity(0.3),)),
                          //     InkWell(
                          //         onTap: ()async {
                          //     await player.play(UrlSource('https://freetestdata.com/wp-content/uploads/2021/09/Free_Test_Data_100KB_OGG.ogg',
                          //
                          //     ),
                          //     volume: 1000
                          //     );
                          //     },
                          //         child: Icon(Icons.play_arrow_rounded,color: Colors.yellow.withOpacity(0.3),)),
                          //     Icon(Icons.undo,color: Colors.yellow.withOpacity(0.3),),
                          //
                          //   ],
                          // )
                        ],
                      ),
                    ),

                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
