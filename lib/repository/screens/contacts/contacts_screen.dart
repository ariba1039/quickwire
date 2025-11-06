import 'package:flutter/material.dart';
import 'package:quickwire/domain/constants/app_colors.dart';
import 'package:quickwire/repository/screens/widgets/ui_helper.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
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
  ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        centerTitle: false,
        title: UiHelper.customText(
          text: "Contacts",

          fontSize: 18,
          fontWeight: FontWeight.bold,
          context: context,
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.customTextField(
              icondata: Icons.search,
              controller: searchController,
              hintText: "search",
              textinputtype: TextInputType.name,
              obscureText: false,
              context: context,
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          arrContact[index]["img"]!,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: UiHelper.customText(
                        text: arrContact[index]["name"]!,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        context: context,
                      ),
                      subtitle: UiHelper.customText(
                        text: arrContact[index]["last seen "]!,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        context: context,
                      ),
                    ),
                  );
                },
                itemCount: arrContact.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
