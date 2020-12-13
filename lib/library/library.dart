import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:eltohod/main.dart';
import 'package:eltohod/models/libraryModel.dart';
import 'package:eltohod/myAppBar.dart';
import 'package:eltohod/myServices/libraryServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class libraryIndex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return libraryIndexState();
  }
}

class libraryIndexState extends State<libraryIndex> {
  libraryServices api=new libraryServices();
  List<libraryType> audio=[];
  int selectedWidget=0;
  var selected;
  List<libraryType> video=[];
  List<libraryType> pdf=[];
  myApp m = new myApp();
  VideoPlayerController _controller;
  VideoPlayerController _videoPlayerController1;
  ChewieController _chewieController;
  AudioPlayer audioPlayer = AudioPlayer();
  getData() async {
    audio=await api.getAudio();
    video=await api.getVideo();
    pdf=await api.getPdf();
    setState(() {

    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _chewieController.dispose();
    _videoPlayerController1.dispose();
  }
  @override
  initState(){
    // TODO: implement initState
    super.initState();
    getData();

   // _controller=VideoPlayerController.network("http://entshr.com/lova/uploads/images/media_files/484729670-1604362235.mp4")
     // ..initialize().then((_) {});
  }
   playVedio(String url){

   }

  @override
  Widget build(BuildContext context) {
    List<Widget> content=[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child:  pdf.length>0?GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 1.2/1.5
          ),
          itemBuilder: (context,index){
            return Image.asset('images/SearchField.png',fit: BoxFit.fill,);
          },
          itemCount:pdf.length,

        ):Center(child: CircularProgressIndicator(),),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.width*.03,
            left: MediaQuery.of(context).size.width*.03,
            top: MediaQuery.of(context).size.height*.02
        ),
        child:  video.length>0?GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 10,
              childAspectRatio: 1/1.2
          ),
          itemBuilder: (context,index){
            _controller = VideoPlayerController.network(
                'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
              ..initialize().then((_) {
                // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
                setState(() {});
              });
            //playVedio();
            //print();
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*.23,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.grey.withOpacity(.05)),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              spreadRadius: 4,
                              blurRadius: 9,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                      )
                      /*    :

                                        color: Colors.white,
                                      ),*/,
                      Positioned(
                        top: MediaQuery.of(context).size.height*.07,
                        left:MediaQuery.of(context).size.width*.135,
                        child:  Container(
                          height: MediaQuery.of(context).size.height*.08,
                          width: MediaQuery.of(context).size.height*.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Color(m.mainColor),
                          ),
                          child: FloatingActionButton(
                            backgroundColor: Color(m.mainColor),
                            onPressed: () {
                              showVideoItem(video[index].filePath+"/"+video[index].fileName);
                              // _controller.dispose();
//                                                      setState(() {
//                                                        _controller.value.isPlaying ? _controller.pause() : _controller.play();
//                                                      });
                            },
                            child: Icon(
                              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Text("${video[index].fileName}",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 1,)
                ],
              ),
            );
          },
          itemCount:video.length,

        ):Center(child: CircularProgressIndicator(),),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child:  audio.length>0?ListView.builder(

          primary: false,
          shrinkWrap: true,
          itemBuilder: (context,index){
            bool audioState=true;
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white
                ),

                child: ListTile(
                  onTap: () async {
                    setState(() {
                      selected=audio[index].id;

                    });
                    await audioPlayer.stop();
                    await audioPlayer.setUrl(audio[index].filePath+"/"+audio[index].fileName);
                    await audioPlayer.resume();
                  },
                  title: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color:  selected==audio[index].id?Color(m.mainColor):Colors.white,
                        ),
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width*.025 ,
                            right: MediaQuery.of(context).size.width*.025
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sound ${index+1}",style: TextStyle(fontSize: 18),),
                            IconButton(onPressed: () async {

                            },
                              icon: Icon( selected==audio[index].id?Icons.pause:Icons.play_arrow),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      Container(
                        height: MediaQuery.of(context).size.height*.005,
                        color: Colors.black12,
                      )
                    ],
                  ),
                )
            );

          },
          itemCount:audio.length,

        ):Center(child: CircularProgressIndicator(),),
      ),

    ];
    return  Scaffold(
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [
              myAppBar("Library"),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width:MediaQuery.of(context).size.width * .025,),
                    InkWell(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .1,
                        width: MediaQuery.of(context).size.width * .3,
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .015,
                          left: MediaQuery.of(context).size.width * .015,
                        ),
                        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.01),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffffcb27),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.4),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'images/volume.png',
                              height: MediaQuery.of(context).size.height * .04,
                              width: MediaQuery.of(context).size.width * .08,
                            ),
                            Text(
                              "Sound",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11.5),
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          selectedWidget=2;
                        });
                      },
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * .025,),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.01),
                        height: MediaQuery.of(context).size.height * .1,
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff25c062),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.4),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .015,
                          left: MediaQuery.of(context).size.width * .015,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'images/video.png',
                              height: MediaQuery.of(context).size.height * .04,
                              width: MediaQuery.of(context).size.width * .08,
                            ),
                            Text(
                              "Videos",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11.5),
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          selectedWidget=1;
                        });
                      },
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * .025,),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.01),
                        height: MediaQuery.of(context).size.height * .1,
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffff5e82),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.4),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .025,
                          left: MediaQuery.of(context).size.width * .025,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'images/pdf.png',
                              height: MediaQuery.of(context).size.height * .05,
                              width: MediaQuery.of(context).size.width * .1,
                            ),
                            Text(
                              "PDF",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          selectedWidget=0;
                        });
                      },
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width * .025,),
                  ],
                )




              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Container(
                  child: Row(
                    children: [
                      SizedBox(width:MediaQuery.of(context).size.width * .025,),
                      Container(
                        height: selectedWidget==2?4:2,
                        width: MediaQuery.of(context).size.width * .316,
                          color: selectedWidget==2?Color(m.mainColor):Colors.black45
                      ),

                      Container(
                          height: selectedWidget==1?4:2,
                          width: MediaQuery.of(context).size.width * .317,
                          color:selectedWidget==1?Color(m.mainColor):Colors.black45
                      ),

                      Container(
                          height: selectedWidget==0?4:2,
                          width: MediaQuery.of(context).size.width * .317,
                          color: selectedWidget==0?Color(m.mainColor):Colors.black45
                      ),
                      SizedBox(width:MediaQuery.of(context).size.width * .025,),
                    ],
                  )




              ),
              Container(
                height: MediaQuery.of(context).size.height*.57,
               child: content[selectedWidget],
              )

            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          elevation: 20.5,
          unselectedItemColor: Colors.black26,
          iconSize: 35,
          selectedItemColor: Color(m.mainColor),
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  autofocus: false,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  icon:   ImageIcon(AssetImage("images/setting.png"),size: 40,),
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 5),
                )),
            BottomNavigationBarItem(
                icon: IconButton(
                  autofocus: false,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                  icon: ImageIcon(AssetImage("images/home.png"),size: 40,),
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 5),
                )),
            BottomNavigationBarItem(
                icon: IconButton(
                  autofocus: false,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/signIn');
                  },
                  icon: ImageIcon(AssetImage("images/user.png"),size: 40,),
                ),
                title: Text(
                  "",
                  style: TextStyle(fontSize: 5),
                )),
          ],
        ),

    );
  }
  showVideoItem(String videoPath) {
    _videoPlayerController1 = VideoPlayerController.network(videoPath);

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: false,
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => Dialog(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              color: Colors.transparent,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Chewie(
                    controller: _chewieController,
                  ),
                  Positioned(
                      child: IconButton(
                          icon: Icon(
                            Icons.cancel,
                            size: 30.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }))
                ],
              )),
        ));
  }

 /* Widget getLibraryType(int val) {
    if (val == 1) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * .03,
          left: MediaQuery.of(context).size.width * .03,
        ),
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 1 / 1.2),
          itemBuilder: (context, index) {
            return Image.asset(
              'images/SearchField.png',
              fit: BoxFit.fill,
            );
          },
          itemCount: 6,
        ),
      );
    } else if (val == 2) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * .03,
          left: MediaQuery.of(context).size.width * .03,
        ),
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .05,
                right: MediaQuery.of(context).size.width * .05,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sound ${index + 1}",
                        style: TextStyle(fontSize: 22),
                      ),
                      Icon(Icons.play_arrow)
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .005,
                    color: Colors.black12,
                  )
                ],
              ),
            );
          },
          itemCount: 30,
        ),
      );
    } else if (val == 3) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * .03,
          left: MediaQuery.of(context).size.width * .03,
        ),
        child: GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.2),
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .23,
                        color: Colors.white,
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * .06,
                        left: MediaQuery.of(context).size.width * .135,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .09,
                          width: MediaQuery.of(context).size.height * .09,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            color: Color(m.mainColor),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text(
                    "Vidio Name ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            );
          },
          itemCount: 6,
        ),
      );
    } else
      return null;
  }*/
}
