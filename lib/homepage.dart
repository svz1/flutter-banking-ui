import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';

class homepage extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
         children:[

        SafeArea(
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical:10,horizontal: 10),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            
            ), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child:Icon(Icons.menu) ,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                     color: Colors.black,
                     image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                     fit: BoxFit.cover),
                  ),
                child: Icon(Icons.menu),
                
                )
              ],
            ),      
                         ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 20,top: 10),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Evening",style: GoogleFonts.montserrat(fontSize:17)),
              SizedBox(height: 5,),
              Text("Amanda Alex",style: GoogleFonts.montserrat(fontSize:26,fontWeight:FontWeight.w700 ))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
         
          child:Row(
            children: [
              card(cardno:"1425",exp: "01-01-2023",),
              card(cardno: "3215",exp: "05-07-2024",),
              
            ],
          ), 

        
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(left:10),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("  Operation",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20))],
          ),
          
        ),
     
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
              midcontainer("Money","Transfer","https://www.freeiconspng.com/thumbs/money-transfer-icon/dollar-exchange-money-transfer-icon-21.png"),
              midcontainer("Insights","Tracking","https://i.dlpng.com/static/png/5602769_preview_preview.png"),
              midcontainer("Money","Withdrawl","https://image.flaticon.com/icons/png/512/1682/1682308.png")
          ],  
        ),
        
      ),
      Text("     Transaction Histories",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20)),

      

           card2("Uber Ride","1st Apr","https://cdn.mos.cms.futurecdn.net/5ij5qdSHFzJ2piPRuoTL5F-1200-80.jpg","35.214"),
          card2("Nike Outlet","30th Mar 2020", "http://assets.stickpng.com/images/580b57fcd9996e24bc43c4f3.png", "-100.00"),
           card2("Payment Receive","28th Mar 2020","https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80","-250")        ] 
      )
     
      
    );
  }
}

class card extends StatelessWidget { 
  final String cardno ; 
  final String exp ;
  card({ required this.cardno,required this.exp}) ;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:15,top: 10),
      padding: EdgeInsets.symmetric(horizontal:10),
      height: 180,
      width: MediaQuery.of(context).size.width-55,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        color: Colors.amber
       ) ,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Padding(padding: EdgeInsets.only(top: 30),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("CARD NUMBER",style: GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 15)),
                 Text("**** **** ****"+cardno,style: GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),)
               ],
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(padding: EdgeInsets.only(bottom: 10),
                 child: Column(
                   children: [
                     Text("CARD HOLDER NAME",style:GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 12)),
                   Text("AMANDA ALEX",style: GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18))
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(bottom: 10),
                 child: Column(
                   children: [
                     Text("EXPIRY DATE",style:GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 12)),
                     Text("03-01-2023",style: GoogleFonts.lato(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18))
                   ],
                 ),
               )
             ],
            )
          ],
       ),
    );
  }
}

class card2 extends StatelessWidget {
   final String name ;
   final String date ;
   final String logo ;
   final String price ;
   int select=0 ;
   card2(this.name,this.date,this.logo,this.price) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left:10,right: 10,top: 10),
      height: 60,
      width: 40,
      color:select==0?Colors.white:Colors.indigo[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                child: Image(image: NetworkImage(logo),
                fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
           children: [
             Text(name),
             Text(date)
           ],   
            ),
            ],
          ),

            
            Text(price,style:TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
        ],
      )
      
    );
  }
}

class midcontainer extends StatefulWidget {
   final String T1 ; 
   final String T2 ; 
   final String url ;
  

    midcontainer(this.T1,this.T2,this.url,);

  @override
  _midcontainerState createState() => _midcontainerState();
}

class _midcontainerState extends State<midcontainer> {
    
       int select=0 ; 
  @override
  Widget build(BuildContext context) {
 
    return GestureDetector(
      onTap: (){
        setState(() {
          select=1 ; 
        });
      },
      child: Container(
        
         margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  color:select==1?Colors.indigo[900]:Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left:20,right: 20),
                      child: Image(image: NetworkImage(widget.url),color:select==1?Colors.white:Colors.indigo[900],)),
                 
                 Text(widget.T1,style: TextStyle(color:select==1?Colors.white:Colors.indigo[900],)), 
                  Text(widget.T2,style: TextStyle(color:select==1?Colors.white:Colors.indigo[900],)), ],
                ),
      ),
    );
  }
}