import 'package:flutter/material.dart';
import 'package:whatsapp/model/message.dart';

class MessageWidget  extends StatelessWidget{
  const MessageWidget({ super.key , required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
   return Align(
     alignment: message.isSender ? Alignment.centerLeft : Alignment.centerRight,
     child: Container(
         padding: EdgeInsets.all(16),
         constraints: BoxConstraints(
             maxWidth: MediaQuery.of(context).size.width * .60),
         decoration: BoxDecoration(
           color: message.isSender ? Colors.green : Color(0xff232D36),
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(16),
             bottomRight: Radius.circular(16),
             topLeft: message.isSender ? Radius.circular(0) : Radius.circular(16),
             topRight:  message.isSender ? Radius.circular(16) : Radius.circular(0),
         ),
         ),

         child: Column(
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
           children: [
             if(message.text != null)
             Text(message.text!,  style: TextStyle(color: Colors.white , fontSize: 16)),
             if(message.imagePath != null)
               ClipRRect(
                 borderRadius: BorderRadius.circular(8),
                 child: Image.asset(message.imagePath!),
               )
           ],
         ),
     ),
   );
  }
}