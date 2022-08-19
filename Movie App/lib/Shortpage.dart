import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShortPage extends StatefulWidget
{
  String urls;
  String Img;
  String Name;
  ShortPage({ Key? key , required this.urls,required this.Img,required this.Name}) : super(key: key);
  @override
  State<ShortPage> createState() => _ShortPage();

}

class _ShortPage extends State<ShortPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(child:Container(
          height: double.infinity,width: double.infinity,child:ElevatedButton(
          child:Container(decoration: BoxDecoration(image:DecorationImage(image:AssetImage(widget.Img),fit: BoxFit.fill)),) ,
          onPressed:()=>{launchURL(widget.urls)},
          style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
            fixedSize: const Size(double.infinity, double.infinity),)))),

    );
  }

}

launchURL( String url)
{
  launch(url);
}