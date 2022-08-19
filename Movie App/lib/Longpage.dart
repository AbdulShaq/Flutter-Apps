import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LongPage extends StatefulWidget
{
  String info;
  String imdbRate;
  String RT;
  String Name;
  String Dura;
  LongPage({ Key? key , required this.info,required this.imdbRate,required this.RT,required this.Name, required this.Dura}) : super(key: key);
  @override
  State<LongPage> createState() => _LongPage();

}

class _LongPage extends State<LongPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.Name, style: const TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500),),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
      ),
      body:  Center(child:Container(child:Text("${widget.info}\n\n Runtime: ${widget.Dura}\n\n IMDb Rating: ${widget.imdbRate}\n\n Rotten Tomato: ${widget.RT}",style: TextStyle(fontSize: 30),)
      )
      ),

    );
  }

}



launchURL( String url)
{
  launch(url);
}