import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail/mail/mail.dart';

class ShowMail extends StatelessWidget {
  ShowMail(this.mailDoc, {Key? key}) : super(key: key);
  Mail ? mailDoc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50,0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.circle_fill, size: 40,color: Colors.grey,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(mailDoc!.writer,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),),
                          Text(mailDoc!.time+". ",style: TextStyle(
                            color: Colors.grey,
                          )),
                        ],

                      ),
                      Row(
                        children: [
                          Text("받는 사람: ",),
                          Text(mailDoc!.writer+" ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Icon(CupertinoIcons.chevron_right , size:12,color: Colors.grey,),
                        ],
                      ),
                    
                    ],
                  ),


                ],
              ),
              Divider(color: Colors.black45,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(mailDoc!.title,style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),),
                  Text(mailDoc!.content,)
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
