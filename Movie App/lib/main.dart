import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Shortpage.dart';
import 'Longpage.dart';
void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight,DeviceOrientation.landscapeLeft,DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie App",
      home: MyStatefulWidget(),
      theme: ThemeData.dark(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
///Hero Options
List avenger = ["The Avengers",'Director:Joss Whedon\n\nStarring: Robert Downey Jr., Scarlett Johansson, Chris Evans\n(2012)', '8.1', '91%', "https://en.wikipedia.org/wiki/The_Avengers_(2012_film)", "https://www.imdb.com/title/tt0848228/", "2h 23m", "assets/images/avengers1.jpg"];
List batman = ["The Batman",'Director:Matt Reeves\n\nStarring: Robert Pattinson, Zoë Kravitz, Jeffrey Wright\n(2022)', '8.3', '85%', "https://en.wikipedia.org/wiki/The_Batman_(film)", "https://www.imdb.com/title/tt1877830/", "2h 56m", "assets/images/batman1.jpeg"];
List xmen = ["X-Men: Days of Future Past",'Director:Bryan Singer\n\nStarring: Patrick Stewart, Ian McKellen, Hugh Jackman\n(2014)', '8.0', '90%', "https://en.wikipedia.org/wiki/X-Men:_Days_of_Future_Past", "https://www.imdb.com/title/tt1877832/", "2h 12m", "assets/images/xmen1.jpeg"];
List spider = ["Spider-Man: Into the Spider-Verse", 'Director: Bob Persichetti\n\nStarring: Shameik Moore, Jake Johnson, Hailee Steinfeld\n(2018)', '8.4', '97%', "https://en.wikipedia.org/wiki/Spider-Man:_Into_the_Spider-Verse", "https://www.imdb.com/title/tt4633694/", "1h 56m", "assets/images/spiderman1.jpeg"];
///Animated Options
List dragon = ["How to Train Your Dragon", 'Director: Chris Sanders\n\nStarring: Jay Baruchel, Gerard Butler, Jonah Hill\n(2010)', '8.1', '99%', "https://en.wikipedia.org/wiki/How_to_Train_Your_Dragon_(film)", "https://www.imdb.com/title/tt0892769/", "1h 38m", "assets/images/dragon1.jpeg"];
List meat = ["Cloudy with a Chance of Meatballs", 'Director: Phil Lord\n\nStarring: Anna Faris, Bill Hader, Andy Samberg\n(2009)', '7', '86%', "https://en.wikipedia.org/wiki/Cloudy_with_a_Chance_of_Meatballs_(film)", "https://www.imdb.com/title/tt0844471/", "1h 21m", "assets/images/meat1.jpeg"];
List happy = ["Happy Feet", 'Director: George Miller\n\nStarring: Elijah Wood, Robin Williams, Hugh Jackman\n(2006)', '6.4', '76%', "https://en.wikipedia.org/wiki/Happy_Feet", "https://www.imdb.com/title/tt0366548/", "1h 48m", "assets/images/happy1.jpeg"];
List rat = ["Ratatouille", 'Director:Brad Bird\n\nStarring: Patton Oswalt, Brad Garrett, Lou Romano\n(2007)', '8.1', '96%', "https://en.wikipedia.org/wiki/Ratatouille_(film)", "https://www.imdb.com/title/tt0382932/", "1h 51m", "assets/images/rat1.jpeg"];
///DEVELOPER'S PICKS Options
List shrek1 = ["Shrek", 'Director: Andrew Adamson\n\nStarring: Mike Myers, Eddie Murphy, Cameron Diaz\n(2001)', '7.9', '88%', "https://en.wikipedia.org/wiki/Shrek", "https://www.imdb.com/title/tt0126029/", "1h 30m", "assets/images/shrek11.jpeg"];
List shrek2 = ["Shrek 2", 'Director: Andrew Adamson\n\nStarring: Mike Myers, Eddie Murphy, Cameron Diaz\n(2004)', '7.3', '89%', "https://en.wikipedia.org/wiki/Shrek_2", "https://www.imdb.com/title/tt0298148/", "1h 33m", "assets/images/shrek22.jpeg"];
List shrek3 = ["Shrek The Third", 'Director: Chris Miller\n\nStarring: Mike Myers, Eddie Murphy, Cameron Diaz\n(2007)', '6.1', '41%', "https://en.wikipedia.org/wiki/Shrek_the_Third", "https://www.imdb.com/title/tt0413267/", "1h 33m", "assets/images/shrek33.jpeg"];
List shrek4 = ["Shrek Forever After", 'Director: Mike Mitchell\n\nStarring: Mike Myers, Eddie Murphy, Cameron Diaz\n(2010)', '6.3', '58%', "https://en.wikipedia.org/wiki/Shrek_Forever_After", "https://www.imdb.com/title/tt0892791/", "1h 33m", "assets/images/shrek44.jpeg"];
///Adventure Options
List jones = ["Indiana Jones and the Raiders of the Lost Ark", 'Director: Steven Spielberg\n\nStarring: Harrison Ford, Karen Allen, Paul Freeman\n(1981)', '8.4', '95%', "https://en.wikipedia.org/wiki/Raiders_of_the_Lost_Ark", "https://www.imdb.com/title/tt0082971/", "1h 55m", "assets/images/jones1.jpeg"];
List lor = ["The Lord of the Rings: The Return of the King", 'Director: Peter Jackson\n\nStarring: Elijah Wood, Ian McKellen, Viggo Mortensen\n(2003)', '9', '93%', "https://en.wikipedia.org/wiki/The_Lord_of_the_Rings:_The_Return_of_the_King", "https://www.imdb.com/title/tt0167260/", "3h 21m", "assets/images/lor1.jpeg"];
List dune = ["Dune", 'Director: Denis Villeneuve\n\nStarring: Timothée Chalamet, Rebecca Ferguson, Zendaya\n(2021)', '8.1', '83%', "https://en.wikipedia.org/wiki/Dune_(2021_film)", "https://www.imdb.com/title/tt1160419/", "2h 35m", "assets/images/dune1.jpeg"];
List guy = ["Free Guy", 'Director: Shawn Levy\n\nStarring: Ryan Reynolds, Jodie Comer, Taika Waititi\n(2021)', '7.2', '80%', "https://en.wikipedia.org/wiki/Free_Guy", "https://www.imdb.com/title/tt6264654/", "1h 55m", "assets/images/guy1.jpeg"];
///Drama Options
List king = ["King Richard", 'Director: Reinaldo Marcus Green\n\nStarring: Will Smith, Aunjanue Ellis, Jon Bernthal\n(2021)', '7.5', '90%', "https://en.wikipedia.org/wiki/King_Richard_(film)", "https://www.imdb.com/title/tt9620288/", "2h 24m", "assets/images/king1.jpeg"];
List duel = ["The Last Duel", 'Director: Ridley Scott\n\nStarring: Matt Damon, Adam Driver, Jodie Comer\n(2021)', '7.4', '85%', "https://en.wikipedia.org/wiki/The_Last_Duel_(2021_film)", "https://www.imdb.com/title/tt4244994/", "2h 32m", "assets/images/duel1.jpeg"];
List dog = ["The Power of the Dog", 'Director: Jane Campion\n\nStarring: Benedict Cumberbatch, Kirsten Dunst, Jesse Plemons\n(2021)', '6.9', '93%', "https://en.wikipedia.org/wiki/The_Power_of_the_Dog_(film)", "https://www.imdb.com/title/tt10293406/", "2h 6m", "assets/images/dog1.jpeg"];
List nine = ["1917", 'Director: Sam Mendes\n\nStarring: Dean-Charles Chapman, George MacKay, Daniel Mays\n(2019)', '8.3', '88%', "https://en.wikipedia.org/wiki/1917_(2019_film)", "https://www.imdb.com/title/tt8579674/", "1h 59m", "assets/images/nine1.jpeg"];



class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _pinned = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 120.0,
            backgroundColor: Colors.lightBlue,
            flexibleSpace: FlexibleSpaceBar( centerTitle:true, title:Text(' MOVIE APP',style: TextStyle(fontSize:23,color: Colors.black,fontWeight: FontWeight.bold),) ,background:Container(decoration: BoxDecoration( image: DecorationImage(image: AssetImage("assets/images/blob.jpeg"), fit: BoxFit.cover)))),
          ),///header
          ///HERO
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.lightBlueAccent,
            flexibleSpace: FlexibleSpaceBar(title: Text("HERO", textScaleFactor: 2,style: TextStyle(color:Colors.black,)),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:const EdgeInsets.all(10.0),width: 320.0, padding:const EdgeInsets.all(8.0),
                    child:ListTile( leading: const Image(image:AssetImage("assets/images/avengers.jpeg")) ,
                      title: Text('${avenger[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${avenger[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: avenger[5], Img: avenger[7], Name: avenger[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(avenger,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/batman.jpeg")) ,
                      title: Text('${batman[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${batman[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: batman[5], Img: batman[7], Name: batman[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(batman,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/xmen.jpeg")) ,
                      title: Text('${xmen[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${xmen[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: xmen[5], Img: xmen[7], Name: xmen[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(xmen,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/spiderman.jpeg")) ,
                      title: Text('${spider[0]}\n', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      subtitle: Text('${spider[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: spider[5], Img: spider[7], Name: spider[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(spider,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                ],
              ),
            ),
          ),
          ///ANIMATED
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.lightBlue,
            flexibleSpace: const FlexibleSpaceBar(title: Text("ANIMATED", textScaleFactor: 2,style: TextStyle(color:Colors.black,),),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/dragon.jpeg")) ,
                      title: Text('${dragon[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${dragon[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: dragon[5], Img: dragon[7], Name: dragon[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(dragon,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/meat.jpeg")) ,
                      title: Text('${meat[0]}\n', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      subtitle: Text('${meat[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: meat[5], Img: meat[7], Name: meat[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(meat,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/happy.jpeg")) ,
                      title: Text('${happy[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${happy[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: happy[5], Img: happy[7], Name: happy[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(happy,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/rat.jpeg")) ,
                      title: Text('${rat[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${rat[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: rat[5], Img: rat[7], Name: rat[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(rat,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                ],
              ),
            ),
          ),
          ///DEVELOPER'S PICKS
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.lightBlueAccent,
            flexibleSpace: const FlexibleSpaceBar(title: Text("DEVELOPER'S PICKS", style: TextStyle(color:Colors.black,fontSize: 29),),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/shrek1.jpeg")) ,
                      title: Text('${shrek1[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${shrek1[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: shrek1[5], Img: shrek1[7], Name: shrek1[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(shrek1,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/shrek2.jpeg")) ,
                      title: Text('${shrek2[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${shrek2[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: shrek2[5], Img: shrek2[7], Name: shrek2[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(shrek2,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/shrek3.jpeg")) ,
                      title: Text('${shrek3[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${shrek3[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: shrek3[5], Img: shrek3[7], Name: shrek3[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(shrek3,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/shrek4.jpeg")) ,
                      title: Text('${shrek4[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${shrek4[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: shrek4[5], Img: shrek4[7], Name: shrek4[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(shrek4,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                ],
              ),
            ),
          ),
          ///ADVENTURE
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.lightBlue,
            flexibleSpace: const FlexibleSpaceBar(title: Text("ADVENTURE", style: TextStyle(color:Colors.black,fontSize: 29),),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/jones.jpeg")) ,
                      title: Text('${jones[0]}\n', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      subtitle: Text('${jones[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: jones[5], Img: jones[7], Name: jones[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(jones,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/lor.jpeg")) ,
                      title: Text('${lor[0]}\n', style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                      subtitle: Text('${lor[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: lor[5], Img: lor[7], Name: lor[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(lor,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/guy.jpeg")) ,
                      title: Text('${guy[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${guy[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: guy[5], Img: guy[7], Name: guy[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(guy,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/dune.jpeg")) ,
                      title: Text('${dune[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${dune[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: dune[5], Img: dune[7], Name: dune[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(dune,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                ],
              ),
            ),
          ),
          ///DRAMA
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,

            backgroundColor: Colors.lightBlueAccent,
            flexibleSpace: const FlexibleSpaceBar(title: Text("DRAMA", textScaleFactor: 2,style: TextStyle(color:Colors.black,)),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/nine.jpeg")) ,
                      title: Text('${nine[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${nine[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: nine[5], Img: nine[7], Name: nine[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(nine,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/dog.jpeg")) ,
                      title: Text('${dog[0]}\n', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      subtitle: Text('${dog[1]}',style: const TextStyle(fontSize: 14)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: dog[5], Img: dog[7], Name: dog[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(dog,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/king.jpeg")) ,
                      title: Text('${king[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${king[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: king[5], Img: king[7], Name: king[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(king,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/duel.jpeg")) ,
                      title: Text('${duel[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      subtitle: Text('${duel[1]}',style: const TextStyle(fontSize: 15)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortPage(urls: duel[5], Img: duel[7], Name: duel[0]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250), items:LongPRESSMenu(duel,context), context: context)
                      },),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueAccent),),
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }

}


launchURL( String url)
{
  launch(url);
}

LongPRESSMenu(List Info,BuildContext context)
{
  return  [PopupMenuItem(padding: EdgeInsets.zero,child:ElevatedButton(child:const Text("Movie Info",style: TextStyle(fontSize: 17,fontWeight:FontWeight.w400 ),),
    onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongPage(info: Info[1], imdbRate: Info[2], RT: Info[3], Name: Info[0],Dura: Info[6],))),
    style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
  ),),
    PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(Info[5])},),
    PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(Info[4])},)
  ];
}


