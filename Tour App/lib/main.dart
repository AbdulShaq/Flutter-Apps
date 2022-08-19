import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chicago Tour',
        routes:{'/main': (context) => MyTabbedPage(),},
        theme: ThemeData.dark(),
        initialRoute: '/main');
  }
}

class MyTabbedPage extends StatefulWidget {
  MyTabbedPage({ Key? key }) : super(key: key);
  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  static List<Tab> myTabs = <Tab>[
    Tab(text:'SLEEP'),
    Tab(text: 'EAT'),
    Tab(text: 'SEE')
  ];

  late TabController _tabController;
  int likes1 = 0;int likes2 = 0;int likes3 = 0;int likes4 = 0;int likes5 = 0;int likes6 = 0;int likes7 = 0;int likes8 = 0;int likes9 = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Welcome to Chicago!", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w400, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          bottom: TabBar(controller: _tabController, tabs: myTabs,labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900) , ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),

      body: TabBarView(controller: _tabController, children: <Widget>[
        GridView.count(
          crossAxisCount: 2,
          children:
          <Widget>[
            Center(child:
            Container(
              child: Hero(
                tag: 'Sleep1',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(  image: AssetImage('assets/images/TheWaldorfAstoria.jpeg'), fit: BoxFit.cover,   ),
                  ),),
                  onPressed: () async {likes1 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SLEEP1(count: likes1,)));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape:  CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),
            ),
            Center(child: Text("The Waldorf Astoria",style: TextStyle(fontSize: 25),)),
            Center(child:
            Container(
              child: Hero(
                tag: 'Sleep2',
                child:(ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/Congress.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {likes2 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SLEEP2(count: likes2,)));},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), )),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),
            ),
            Center(child: Text("The Congress Plaza",style: TextStyle(fontSize: 25),)),
            Center(child:Container(
              child: Hero(
                tag: 'Sleep3',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/Drake.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {likes3 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SLEEP3(count: likes3,)));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),),
            Center(child: Text("The Drake",style: TextStyle(fontSize: 25),)),],),
        //////////////////////////////////////////////////////////////
        GridView.count(
          crossAxisCount: 2,
          children:<Widget>[
            Center(child:
            Container(
              child: Hero(
                tag: 'Eat1',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(  image: AssetImage('assets/images/LouMalnatis.jpeg'), fit: BoxFit.cover,   ),
                  ),),
                  onPressed: () async {likes4 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  EAT1(count: likes4,)));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape:  CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),
            ),
            Center(child: Text("Lou Malnati's",style: TextStyle(fontSize: 25),)),
            Center(child:
            Container(
              child: Hero(
                tag: 'Eat2',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/Jibarito.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {likes5 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  EAT2(count: likes5,)));},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),
            ),
            Center(child: Text("Jibarito Stop",style: TextStyle(fontSize: 25),)),
            Center(child:Container(
              child: Hero(
                tag: 'Eat3',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/Gibsons.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {likes6 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  EAT3(count: likes6,)));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),),
            Center(child: Text("Gibson's Steak House",style: TextStyle(fontSize: 25),)),],),
        ///////////////////////////////////////////////////////////////
        GridView.count(
          crossAxisCount: 2,
          children:<Widget>[
            Center(child:
            Container(
              child: Hero(
                tag: 'See1',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(  image: AssetImage('assets/images/Bean.jpeg'), fit: BoxFit.cover,   ),
                  ),),
                  onPressed: () async {likes7 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SEE1(count: likes7,)));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape:  CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),
            ),
            Center(child: Text("The Bean",style: TextStyle(fontSize: 25),)),
            Center(child:
            Container(
              child: Hero(
                tag: 'See2',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/Navy.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {likes8 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SEE2(count: likes8,)));},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),
            ),
            Center(child: Text("Navy Pier",style: TextStyle(fontSize: 25),)),
            Center(child:Container(
              child: Hero(
                tag: 'See3',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/willis.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {likes9 = await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SEE3(count: likes9,)));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 7.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
              ,),),
            Center(child: Text("Sky Deck",style: TextStyle(fontSize: 25),)),],),
        ///////////////////////////////////////////////////////////////
      ]),
    );
  }
}

/////////////////////////////////////

class SLEEP1 extends StatefulWidget {
  int count;
  SLEEP1({ Key? key , required this.count}) : super(key: key);
  @override
  State<SLEEP1> createState() => _SLEEP1();
}
class _SLEEP1 extends State<SLEEP1>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("The Waldorf Astoria has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Waldorf Astoria", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Waldorf Astoria\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'Sleep1',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/TheWaldorfAstoria.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 11 E Walton St.\n Price: \$291/night\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

////////////////////////////////////////

class SLEEP2 extends StatefulWidget {
  int count;
  SLEEP2({ Key? key , required this.count}) : super(key: key);
  @override
  State<SLEEP2> createState() => _SLEEP2();
}
class _SLEEP2 extends State<SLEEP2>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("The Congress Plaza has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Congress Plaza", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Congress Plaza\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'Sleep2',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/Congress.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 520 S Michigan Ave.\n Price: \$120/night\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

//////////////////////////////////////

class SLEEP3 extends StatefulWidget {
  int count;
  SLEEP3({ Key? key , required this.count}) : super(key: key);
  @override
  State<SLEEP3> createState() => _SLEEP3();
}
class _SLEEP3 extends State<SLEEP3>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("The Drake has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Drake", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Drake\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'Sleep3',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/Drake.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 140 E Walton Pl.\n Price: \$155/night\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

/////////////////////////////////////

class EAT1 extends StatefulWidget {
  int count;
  EAT1({ Key? key , required this.count}) : super(key: key);
  @override
  State<EAT1> createState() => _EAT1();
}
class _EAT1 extends State<EAT1>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("Lou Malnati's has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Lou Malnati's", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nLou Malnati's\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'Eat1',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/LouMalnatis.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 410 N Michigan Ave.\n Avg.Price: \$20-\$50/person\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

////////////////////////////////////////

class EAT2 extends StatefulWidget {
  int count;
  EAT2({ Key? key , required this.count}) : super(key: key);
  @override
  State<EAT2> createState() => _EAT2();
}
class _EAT2 extends State<EAT2>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("Jibarito Stop has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Jibarito Stop", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nJibarito Stop\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'Eat2',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/Jibarito.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 1646 W 18th St.\n Avg.Price: \$8-\$20/person\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

//////////////////////////////////////

class EAT3 extends StatefulWidget {
  int count;
  EAT3({ Key? key , required this.count}) : super(key: key);
  @override
  State<EAT3> createState() => _EAT3();
}
class _EAT3 extends State<EAT3>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("Gibson's has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Gibson's Steak House", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nGibson's Steak House\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'Eat3',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/Gibsons.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 1028 N Rush St.\nAvg.Price: \$40-\$100/person\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

/////////////////////////////////////

class SEE1 extends StatefulWidget {
  int count;
  SEE1({ Key? key , required this.count}) : super(key: key);
  @override
  State<SEE1> createState() => _SEE1();
}
class _SEE1 extends State<SEE1>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      SnackBar snack = SnackBar( content: Text("The Bean has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("The Bean has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Bean", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Bean\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'See1',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/Bean.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 201 E Randolph St.\nPrice: \$Free.99\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}
////////////////////////////////////////

class SEE2 extends StatefulWidget {
  int count;
  SEE2({ Key? key , required this.count}) : super(key: key);
  @override
  State<SEE2> createState() => _SEE2();
}
class _SEE2 extends State<SEE2>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("Navy Pier has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Navy Pier", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nNavy Pier\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'See2',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/Navy.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\nLocation: 600 E Grand Ave.\nPrice: \$Free.99\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}

////////////////////////////////////////

class SEE3 extends StatefulWidget {
  int count;
  SEE3({ Key? key , required this.count}) : super(key: key);
  @override
  State<SEE3> createState() => _SEE3();
}
class _SEE3 extends State<SEE3>
{

  void _likeincrem(){
    setState(() {
      widget.count++;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar( content: Text("Sky Deck has ${widget.count} likes!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Sky Deck", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Railway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/SkyLine.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context,widget.count); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nSky Deck\n", style: TextStyle(fontSize: 40) ,),

              Container(
                child: Hero(
                  tag: 'See3',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/willis.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75), boxShadow: [BoxShadow( color: Colors.white, offset: const Offset(5.0, 9.0,), blurRadius: 12.0, spreadRadius: 0.0,),])
                ,), Text("\n\n233 S Wacker Dr.\nAvg.Price: \$28-\$39/person\n", style: TextStyle(fontSize: 20)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: _likeincrem, tooltip: 'Increment', child: const Icon(Icons.thumb_up_off_alt_outlined),),
    );
  }
}