import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:g_talk/app/modules/home/models/chat_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  //TODO: Implement HomeController

  final chats = <ChatModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    var response = [
      ChatModel(
        firstName: 'Elon',
        lastName: 'Musk',
        currentMessage: 'Next meeting tomorrw 10.00 AM',
        time: '03:15',
        online: true,
        avatarUrl:
            'https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f47d4de7637290765bce495%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1699%26cropX2%3D3845%26cropY1%3D559%26cropY2%3D2704',
      ),
      ChatModel(
        firstName: 'Jeff',
        lastName: 'Besoz',
        currentMessage: 'Okay 👍, let me check it and get back to you soon',
        time: '02:23',
        unReadMessageCount: 2,
        avatarUrl:
            'https://assets.entrepreneur.com/content/3x2/2000/1602622169-jeff-bezos.jpeg',
      ),
      ChatModel(
        firstName: 'Anin',
        lastName: 'Arafath',
        currentMessage: 'Next Month',
        time: '01:44',
        online: true,
        isTyping: true,
      ),
      ChatModel(
        firstName: 'Muhammad',
        lastName: 'Semeer Ali',
        currentMessage: 'okay sure😄👍',
        time: '05:25',
        avatarUrl: 'https://avatars.githubusercontent.com/u/69565787?v=4',
        online: true,
      ),
      ChatModel(
        firstName: 'Patrick ',
        lastName: 'Hendricks',
        currentMessage: 'Good Morning😄',
        time: '07:45',
        unReadMessageCount: 0,
        avatarUrl:
            'https://luxurylaunches.com/wp-content/uploads/2019/09/Businessman-fashion.jpeg',
      ),
      ChatModel(
        firstName: 'Steve',
        lastName: 'Walker',
        currentMessage: 'Hi, How are You?',
        time: '07:18',
        unReadMessageCount: 1,
      ),
      ChatModel(
        firstName: 'Jonathan',
        lastName: 'Miller',
        currentMessage: 'is everything is fine ?',
        time: '07:23',
        online: true,
        unReadMessageCount: 4,
        avatarUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIrtxbyrTpkp1-8kCIkH6UkOpHyZ2yeGyXR2qJclPkKuoBCU0RRXvIFLFK6qwz2sYFkNY&usqp=CAU',
      ),
      ChatModel(
        firstName: 'Mirta',
        lastName: 'George',
        currentMessage: 'Hello, how can i help you',
        time: '07:15',
        online: false,
        unReadMessageCount: 0,
        avatarUrl:
            'https://ied.eu/wp-content/uploads/2018/04/entrepreneur-1.jpg',
      ),
      ChatModel(
        firstName: 'Pau',
        lastName: 'Haynes',
        currentMessage:
            'please, save this pictures to your file and give it to me after you have done with editing!',
        time: '07:01',
        online: true,
        unReadMessageCount: 1,
      ),
      ChatModel(
        firstName: 'Doris',
        lastName: 'Brown',
        currentMessage: 'Yeah everything is fine',
        unReadMessageCount: 3,
        time: '07:00',
        online: false,
        avatarUrl:
            'http://chatvia-light.react.themesbrand.com/static/media/avatar-4.b23e41d9.jpg',
      ),
    ];
    chats.value = response;
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

}
