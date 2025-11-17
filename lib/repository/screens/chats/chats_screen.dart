import 'package:flutter/material.dart';
import 'package:quickwire/domain/constants/app_colors.dart';
import 'package:quickwire/repository/screens/widgets/ui_helper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContact = [
    {
      "img": "assets/images/contact_img1.png",
      "name": "Athalia Putri",
      "last seen ": "last seen yesterday",
    },
    {
      "img": "assets/images/contact_img2.png",
      "name": "Erlan Sadewa",
      "last seen ": "online",
    },
    {
      "img": "assets/images/contact_img3.png",
      "name": " Midala Huera",
      "last seen ": "last seen 3 days ago ",
    },
    {
      "img": "assets/images/contact_img4.png",
      "name": " Nafisa Gitari",
      "last seen ": "online",
    },
    {
      "img": "assets/images/contact_img5.png",
      "name": "Raki Devan",
      "last seen ": "online",
    },
    {
      "img": "assets/images/contact_img6.png",
      "name": " Salsabira Akira",
      "last seen ": "last seen 30 mins ago",
    },
  ];

  ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,

        title: UiHelper.customText(
          text: "Chats",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          context: context,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_chat_unread_outlined),
          ),

          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customImage(imgUrl: "plus.png"),
              SizedBox(width: 20),

              UiHelper.customImage(imgUrl: "contact_img7.png"),
              SizedBox(width: 20),

              UiHelper.customImage(imgUrl: "contact_img8.png"),
            ],
          ),
          SizedBox(width: 5),
          Row(
            children: [
              SizedBox(width: 25),
              UiHelper.customText(
                text: "Your story ",
                fontSize: 10,
                color: AppColors.buttonlightmode,
                fontWeight: FontWeight.bold,
                context: context,
              ),
              SizedBox(width: 13),
              UiHelper.customText(
                text: "Midala Huera ",
                fontSize: 10,
                color: AppColors.buttonlightmode,
                fontWeight: FontWeight.bold,
                context: context,
              ),
              SizedBox(width: 6),
              UiHelper.customText(
                text: "Salsabila Akira",
                fontSize: 10,
                color: AppColors.buttonlightmode,
                fontWeight: FontWeight.bold,
                context: context,
              ),
            ],
          ),
          Divider(color: Color(0XFFADB5BD)),

          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: UiHelper.customImage(
                      imgUrl: arrContact[index]["img"].toString(),
                    ),
                  ),
                ),
                title: UiHelper.customText(
                  text: arrContact[index]["name"].toString(),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  context: context,
                ),
                subtitle: UiHelper.customText(
                  text: arrContact[index]["last seen "].toString(),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  context: context,
                ),
              );
            },
            itemCount: arrContact.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
