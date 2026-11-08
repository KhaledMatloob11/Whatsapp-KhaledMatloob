
import 'package:flutter/material.dart';
import 'package:whatsapp/model/message.dart';
import 'package:whatsapp/screens/home_screen/widgets/massage_widget.dart';
class HomeScreen  extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_pattern.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            foregroundColor: Color(0xffFFFFFF),
            leadingWidth: 40,
            centerTitle: false,
            titleSpacing: 0,
            leading: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_back_ios)),
            backgroundColor: Color(0xff168C4B),
            title: Row(
              spacing: 8,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/user_image.png"),),

                Text("John Safwat" ,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
             actions: [
               IconButton(onPressed: (){}, icon: Icon(Icons.call)),
               IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
               IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
             ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 12,);
                },
                itemBuilder: (context, index) {
                  return MessageWidget(message: Message.messages[index]);
                },
                padding: EdgeInsets.all(16),
                itemCount: Message.messages.length,
              ),
            ),

            // todo : text Filed For Input Message
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 8,
                children: [
                  Expanded(child: TextField(
                      decoration: InputDecoration(
                       hintText: "Type a message",
                       hintStyle: const TextStyle(
                         color: Color(0xffFFFFFF),
                         fontSize: 12,
                       ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xff168C4B) , width: 1),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.yellow, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0xffFFFFFF), width: 1),
                        ),
                        prefixIcon: const Icon(Icons.camera_alt_outlined, color: Color(0xffFFFFFF),),
                        suffixIcon: Icon(Icons.send,color: Color(0xffFFFFFF),),
                      ),
                  ),
                  ),
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xff168C4B),
                      foregroundColor: Color(0xffFFFFFF),
                      padding: EdgeInsets.all(14),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.mic,color: Color(0xffFFFFFF),),
                ),
                ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}