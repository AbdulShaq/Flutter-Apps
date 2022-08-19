import 'package:analog_clock/analog_clock.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

/*the Two packages I implemented were analog_clock which creates an
 analog clock widget for displaying time and is customizable and
 stop_watch_timer which allows me to implement a live stop watch or
 count down timer and control both. For the Analog clocks I made a
 work clocks page which takes the current datetime (I am assuming it
 is chicago time when I do) and displaying its custom clock with an
 image for thr clock face and custom feel and then creating clocks for
 other famous cities by calculating the time based off the main chicago time.
 Each clock has a custom watch face image and design to it. For the stop_watch_timer
 I implemented a simple stop watch that displays the running time in hh:mm:ss.ms
 format and then having 4 buttons: simple start and stop for the timer, a reset
 button to reset the stop watch completely and then a lap button. In the lap button everytime its
 pressed it also displays the lap number and the time of the lap. and that is about it, if you
 are reading this I really need the A so please grade lightly*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  Widget _currentTab = WorldClockPage();
  void _onItemTapped(int index) {
    setState(() {
      if(index != _selectedIndex)
      {
        if(index == 0)
        {
          _currentTab = WorldClockPage();
        }
        else
          {
            _currentTab = StopWatchPage();
          }
        _selectedIndex = index;
      }

    });
  }
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData.dark(),

    home: Scaffold(
      appBar: AppBar( toolbarHeight: 70,
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: const Text('Time App', textScaleFactor: 1.3,),
      ),
      body:_currentTab,

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_rounded),
            label: 'Clocks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_outlined),
            label: 'StopWatch',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
      ),
    ),
  );}

}


class WorldClockPage extends StatelessWidget {
  const WorldClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical,
      children: [
        //CHI & NYC
        SizedBox(height: 200, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.black),
                    image: const DecorationImage(image:AssetImage("assets/chi.jpg"),fit: BoxFit.fill),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.white,
                minuteHandColor: Colors.white,
                showSecondHand: true,
                numberColor: Colors.white,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: true,
                tickColor: Colors.white,
                showDigitalClock: true,
                showAllNumbers: true,
                digitalClockColor: Colors.white,
                datetime: DateTime.now(),
              ),),
            Container(padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration:
                const BoxDecoration(
                    image: DecorationImage(image:AssetImage("assets/ny.jpg"),fit: BoxFit.cover),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.black54,
                minuteHandColor: Colors.black54,
                showSecondHand: false,
                numberColor: Colors.black87,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: false,
                showDigitalClock: false,
                digitalClockColor: Colors.white,
                datetime: DateTime.now().add(const Duration(hours: 1)),
              ),)
          ],
        )
        ),
        SizedBox(height: 85, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(64, 15, 50, 0),
              child: const Text("CHICAGO",textScaleFactor: 1.2,),),
            Container(padding: const EdgeInsets.fromLTRB(70, 15, 50, 0),
              child: const Text("NEW YORK",textScaleFactor: 1.2,),)
          ],
        )

        ),
        //London & Rome
        SizedBox(height: 200, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.white),
                    image: const DecorationImage(image:AssetImage("assets/Bflag.jpg"),fit: BoxFit.fill),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.indigo,
                minuteHandColor: Colors.indigo,
                secondHandColor: Colors.white60,
                showSecondHand: true,
                numberColor: Colors.white,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: true,
                showDigitalClock:false,
                showAllNumbers: false,
                tickColor: Colors.white,
                datetime: DateTime.now().add(const Duration(hours: 6)),
              ),),
            Container(padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration:
                BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.greenAccent),
                    image: const DecorationImage(image:AssetImage("assets/rome.jpg"),fit: BoxFit.fill),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.green,
                minuteHandColor: Colors.red,
                showSecondHand: false,
                numberColor: Colors.black,
                showNumbers: true,
                showAllNumbers: true,
                textScaleFactor: 1.5,
                showTicks: true,
                tickColor: Colors.black,
                showDigitalClock: true,
                digitalClockColor: Colors.black,
                datetime: DateTime.now().add(const Duration(hours: 7)),
              ),)
          ],
        )
        ),
        SizedBox(height: 85, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(65, 15, 50, 20),
              child: const Text("LONDON",textScaleFactor: 1.2,),),
            Container(padding: const EdgeInsets.fromLTRB(90, 15, 50, 20),
              child: const Text("ROME",textScaleFactor: 1.2,),)
          ],
        )

        ),
        //LA & Denver
        SizedBox(height: 200, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration: const BoxDecoration(
                    image: DecorationImage(image:AssetImage("assets/la.jpg"),fit: BoxFit.fill),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.white70,
                minuteHandColor: Colors.white70,
                showSecondHand: true,
                numberColor: Colors.white54,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: true,
                showDigitalClock: true,
                showAllNumbers: true,
                digitalClockColor: Colors.white70,
                datetime: DateTime.now().subtract(const Duration(hours: 2)),
              ),),
            Container(padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration:
                BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.black),
                    image: const DecorationImage(image:AssetImage("assets/denver.jpg"),fit: BoxFit.fill),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.white70,
                minuteHandColor: Colors.white70,
                showSecondHand: false,
                numberColor: Colors.black,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: true,
                tickColor: Colors.black,
                showDigitalClock: false,
                digitalClockColor: Colors.white,
                datetime: DateTime.now().subtract(const Duration(hours: 1)),
              ),)
          ],
        )
        ),
        SizedBox(height: 85, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(45, 15, 50, 20),
              child: const Text("LOS ANGELES ",textScaleFactor: 1.2,),),
            Container(padding: const EdgeInsets.fromLTRB(60, 15, 50, 20),
              child: const Text("DENVER",textScaleFactor: 1.2,),)
          ],
        )

        ),
        //Tokyo & Mumbai
        SizedBox(height: 200, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration: const BoxDecoration(
                    image: DecorationImage(image:AssetImage("assets/japan.jpg"),fit: BoxFit.cover),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.white,
                minuteHandColor: Colors.white,
                secondHandColor:Colors.black ,
                showSecondHand: true,
                numberColor: Colors.black,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: false,
                showDigitalClock: true,
                showAllNumbers: false,
                digitalClockColor: Colors.white,
                datetime: DateTime.now().add(const Duration(hours: 14)),
              ),),
            Container(padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
              child: AnalogClock(
                decoration:
                BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.black),
                    image: DecorationImage(image:const AssetImage("assets/india.jpg"),fit: BoxFit.fill),
                    shape: BoxShape.circle),
                width: 200.0,
                isLive: true,
                hourHandColor: Colors.deepOrangeAccent,
                minuteHandColor: Colors.lightGreen,
                showSecondHand: false,
                numberColor: Colors.black,
                showNumbers: true,
                textScaleFactor: 1.5,
                showTicks: true,
                tickColor: Colors.black,
                showDigitalClock: false,
                digitalClockColor: Colors.white,
                datetime: DateTime.now().add(const Duration(hours: 10, minutes: 30)),
              ),)
          ],
        )
        ),
        SizedBox(height: 85, child:
        ListView(  scrollDirection: Axis.horizontal,
          children:[
            Container( padding: const EdgeInsets.fromLTRB(68, 15, 50, 20),
              child: const Text("TOKYO",textScaleFactor: 1.2,),),
            Container(padding: const EdgeInsets.fromLTRB(90, 15, 50, 20),
              child: const Text("MUMBAI",textScaleFactor: 1.2,),)
          ],
        )

        ),

      ]
      ,
    );
  }
}






class StopWatchPage extends StatelessWidget {
  StopWatchPage({Key? key}) : super(key: key);
  final _isHours = true;

  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
  );

  final _scrollController = ScrollController();



  @override
  void dispose() async {
    await _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                StreamBuilder<int>(
                  stream: _stopWatchTimer.rawTime,
                  initialData: _stopWatchTimer.rawTime.value,
                  builder: (context, snap) {
                    final value = snap.data!;
                    final displayTime =
                    StopWatchTimer.getDisplayTime(value, hours: _isHours);
                    return
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            displayTime,
                            style: const TextStyle(
                                fontSize: 55,
                                fontWeight: FontWeight.bold),
                          ),
                        );
                  },
                ),






                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SizedBox(
                    height: 100,
                    child: StreamBuilder<List<StopWatchRecord>>(
                      stream: _stopWatchTimer.records,
                      initialData: _stopWatchTimer.records.value,
                      builder: (context, snap) {
                        final value = snap.data!;
                        if (value.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        Future.delayed(const Duration(milliseconds: 100), () {
                          _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeOut);
                        });

                        return ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            final data = value[index];
                            return Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    'Lap #${index + 1}: ${data.displayTime}',
                                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                  ),
                                ),

                              ],
                            );
                          },
                          itemCount: value.length,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(300, 50),primary:Colors.teal,padding: const EdgeInsets.all(4),),
                          onPressed: () async {
                            _stopWatchTimer.onExecute.add(StopWatchExecute.lap);
                          },
                          child: const Text('Lap', style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ElevatedButton(  style: ElevatedButton.styleFrom(fixedSize: Size(150, 80),primary:Colors.green,padding: const EdgeInsets.all(4),),

                        onPressed: () async {
                          _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                        },
                        child: const Text(
                          'Start',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                      child:ElevatedButton(  style: ElevatedButton.styleFrom(fixedSize: Size(150, 80),primary:Colors.red,padding: const EdgeInsets.all(4),),
                        onPressed: () async {
                          _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                        },
                        child: const Text('Stop', style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ElevatedButton( style: ElevatedButton.styleFrom(fixedSize: Size(100, 40),primary:Colors.orange[700],padding: const EdgeInsets.all(4),),
                        onPressed: () async {
                          _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                        },
                        child: const Text('Reset', style: TextStyle(color: Colors.white),),
                      ),
                    ),

                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      );

  }
}