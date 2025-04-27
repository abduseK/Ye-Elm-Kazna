import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ye_elm_kazna/constants.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF121212),
          elevation: 0,
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF121212), Color(0xFF1E1E1E)], // Dark gradient
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF121212),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image2.jpg'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'ABDULSELAM KEMAL___',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Mona Sans',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Full stack software engineer, \nContent creator',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Mona Sans',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Hi👋 I\'m Abdulselam kemal, developer of this app. \nIf you\'d like to chat, feel free to drop a message',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Mona Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.web,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      final url = Uri.parse('https://abdelselamk.vercel.app');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    tooltip: 'Website',
                  ),
                  IconButton(
                    icon: Image.asset('assets/github.png',
                        color: Colors.white, width: 24, height: 24),
                    onPressed: () async {
                      final url = Uri.parse('https://github.com/abduseK');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    tooltip: 'Github',
                  ),
                  IconButton(
                    icon: Image.asset('assets/telegram.png',
                        color: Colors.white, width: 24, height: 24),
                    onPressed: () async {
                      final url = Uri.parse('https://t.me/lazyCoder_I0I0');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    tooltip: 'Telegram',
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'If you\'d like to access this app in your computer or \ntablet, the web version is available now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  final url = Uri.parse('https://yeelmkaznav0.vercel.app');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                child: Text(
                  'Click here',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
