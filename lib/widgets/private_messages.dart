import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrivateMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15),
        child: conversations(context, privateList));
  }
}

List privateList = [
  {
    "name": "Максим Куликов",
    "imageUrl":
        'https://sun9-10.userapi.com/impf/c851336/v851336995/1a0890/9WNHdaWfLf8.jpg?size=608x1080&quality=96&sign=ef85cc690dc3a5a465988cfcc55ea72f&type=album',
    "isOnline": true,
    "isReaded": false,
    "message": "ахпхапах",
    "time": "сейчас"
  },
  {
    "name": "Евгений Куплинов",
    "imageUrl":
        'https://avatars.mds.yandex.net/get-zen_doc/1545908/pub_5e8f53b0a15b2a612ad8a1bd_5e8f72f0a095c13d82ff77f9/scale_1200',
    "isOnline": false,
    "isReaded": true,
    "message": "uwww",
    "time": "3м"
  },
  {
    "name": "Владимир Пресняков",
    "imageUrl":
        'https://sun9-53.userapi.com/impf/c855120/v855120889/211d2d/Si44Zgxt65Q.jpg?size=1280x1279&quality=96&sign=8d41bb8c3e7259677767a089bdecae9d&type=album',
    "isOnline": true,
    "isReaded": true,
    "message": "лол",
    "time": "14:43"
  },
  {
    "name": "Иван Иванов",
    "imageUrl": 'https://vk.com/images/camera_200.png',
    "isOnline": true,
    "isReaded": false,
    "message": ")))",
    "time": "10:15"
  },
  {
    "name": "Михаил Зубило",
    "imageUrl":
        'https://amazingpage.ru/wp-content/uploads/2020/03/65f258208b2080294b47f1abfb01b8ff.jpg',
    "isOnline": false,
    "isReaded": false,
    "message": "опять работать???",
    "time": "вчера"
  },
  {
    "name": "Зелимхан Пулеметчик",
    "imageUrl":
        'https://upload.wikimedia.org/wikipedia/commons/d/dd/Donald_Trump_2013_cropped_more.jpg',
    "isOnline": true,
    "isReaded": false,
    "message": "печатает..",
    "time": ""
  },
  {
    "name": "Дмитрий Ногиев",
    "imageUrl":
        'https://evo-rus.com/wp-content/uploads/2020/06/scale_1200-42.jpg',
    "isOnline": false,
    "isReaded": false,
    "message": "готов вкалывать!",
    "time": "2 февраля"
  },
  {
    "name": "Алексей НеНавальный",
    "imageUrl":
        'https://evo-rus.com/wp-content/uploads/2020/08/877181_original.jpg',
    "isOnline": true,
    "isReaded": true,
    "message": "Сэнкс",
    "time": "23 января"
  },
  {
    "name": "Зелимхан Пулеметчик",
    "imageUrl":
        'https://upload.wikimedia.org/wikipedia/commons/d/dd/Donald_Trump_2013_cropped_more.jpg',
    "isOnline": true,
    "isReaded": false,
    "message": "печатает..",
    "time": ""
  },
  {
    "name": "Дмитрий Ногиев",
    "imageUrl":
        'https://evo-rus.com/wp-content/uploads/2020/06/scale_1200-42.jpg',
    "isOnline": false,
    "isReaded": false,
    "message": "повторять не буду",
    "time": "2 февраля"
  }
];

conversations(BuildContext context, List conversationList) {
  Color _color = Colors.white;

  return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, '/third');
      },
      child: Container(
        color: _color,
        child: Column(
          children: List.generate(conversationList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    color: _color,
                    width: 60,
                    height: 60,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: Image.network(
                                          conversationList[index]['imageUrl'])
                                      .image,
                                  fit: BoxFit.cover)),
                        ),
                        conversationList[index]['isOnline']
                            ? Positioned(
                                top: 38,
                                left: 42,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF66BB6A),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xFFFFFFFF), width: 3)),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        conversationList[index]['name'],
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      conversationList[index]['isReaded']
                          ? SizedBox(
                              width: MediaQuery.of(context).size.width - 135,
                              child: Text(
                                conversationList[index]['message'] +
                                    " - " +
                                    conversationList[index]['time'],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF000000).withOpacity(0.7)),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          : SizedBox(
                              width: MediaQuery.of(context).size.width - 135,
                              child: Text(
                                conversationList[index]['message'] +
                                    " · " +
                                    conversationList[index]['time'],
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF000000).withOpacity(1.0)),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                    ],
                  )
                ],
              ),
            );
          }),
        ),
      ));
}

// class PrivateMsgs extends StatefulWidget {
//   @override
//   _PrivateMsgsState createState() => _PrivateMsgsState();
// }

// class _PrivateMsgsState extends State<PrivateMsgs> {
//   Color _color = Colors.white;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           //Navigator.pushNamed(context, '/third');
//           // setState(() {
//           //   _color = Colors.yellow;
//           // });
//         },
//         child: Column(
//           children: List.generate(
//             conversationList.length,
//             (index) {
//               return Padding(
//                   padding: const EdgeInsets.only(bottom: 20),
//                   child: Row(children: <Widget>[
//                     FlatButton(
//                       onPressed: () {
//                         // setState(() {
//                         //   _color = Colors.yellow;
//                         // });
//                       },
//                       color: _color,
//                       child: Row(
//                         children: <Widget>[
//                           Container(
//                             color: _color,
//                             width: 60,
//                             height: 60,
//                             child: Stack(
//                               children: <Widget>[
//                                 Container(
//                                   width: 70,
//                                   height: 70,
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                           image: Image.network(
//                                                   conversationList[index]
//                                                       ['imageUrl'])
//                                               .image,
//                                           fit: BoxFit.cover)),
//                                 ),
//                                 conversationList[index]['isOnline']
//                                     ? Positioned(
//                                         top: 38,
//                                         left: 42,
//                                         child: Container(
//                                           width: 20,
//                                           height: 20,
//                                           decoration: BoxDecoration(
//                                               color: Color(0xFF66BB6A),
//                                               shape: BoxShape.circle,
//                                               border: Border.all(
//                                                   color: Color(0xFFFFFFFF),
//                                                   width: 3)),
//                                         ),
//                                       )
//                                     : Container()
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Text(
//                                 conversationList[index]['name'],
//                                 style: TextStyle(
//                                     fontSize: 17, fontWeight: FontWeight.w500),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               conversationList[index]['isReaded']
//                                   ? SizedBox(
//                                       width: MediaQuery.of(context).size.width -
//                                           135,
//                                       child: Text(
//                                         conversationList[index]['message'] +
//                                             " - " +
//                                             conversationList[index]['time'],
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             color: Color(0xFF000000)
//                                                 .withOpacity(0.7)),
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                     )
//                                   : SizedBox(
//                                       width: MediaQuery.of(context).size.width -
//                                           135,
//                                       child: Text(
//                                         conversationList[index]['message'] +
//                                             " · " +
//                                             conversationList[index]['time'],
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.w600,
//                                             color: Color(0xFF000000)
//                                                 .withOpacity(1.0)),
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                     )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ]));
//             },
//           ),
//         ));
//   }
// }
