import 'package:gradtalk/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:gradtalk/widgets/NavBar.dart';
import 'package:gradtalk/models/models.dart';
import 'package:faker/faker.dart';
import 'package:helpers/helpers.dart';
import 'package:jiffy/jiffy.dart';
import 'package:gradtalk/helpers.dart';
import 'package:gradtalk/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 20,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Chat"),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(_delegate)),

          ],
        ),
        drawer: NavBar(),
    );
  }


  Widget _delegate(BuildContext context, int index){
    final Faker faker = Faker();
    final date = Helpers.randomDate();
    return _MessageTitle(
      messageData: MessageData(
        senderName: faker.person.name(),
        message: faker.lorem.sentence(),
        messageDate: date,
        dateMessage: Jiffy(date).fromNow(),
      ),
    );
  }
}


class _MessageTitle extends StatelessWidget {
  const _MessageTitle({Key? key, required this.messageData}) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(ConvScreen.route(messageData));
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.2,
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children:[
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(messageData.senderName, style: const TextStyle(fontSize: 18.0)),
                      Text(messageData.message, style: const TextStyle(color: AppColors.textFaded)),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      messageData.dateMessage.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textFaded,
                        letterSpacing: 0.5,
                        wordSpacing: 1.5,
                      ),
                    ),

                    Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: AppColors.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          )
                        )
                      )
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}


