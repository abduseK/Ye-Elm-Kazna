import 'package:flutter/material.dart';
import 'package:try_app/widgets/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Drawers extends StatelessWidget {

  _launcherUrl() async{
  const url = "https://t.me/yeilmkazna";
  
  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'could not launch url';
  }
}

_launcherUrl2() async{
  const url2 = "https://t.me/kazna_contents";

  if(await canLaunch(url2)){
    await launch(url2);
  }
  else{
    throw 'could not launch url';
  }
}


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            Container(
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'የ ዒልም ካዝና',
                  style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 20.0
                ),
                children: [
                  TextSpan(
                    text: '\n\nيَا أَيُّهَا النَّاسُ إِنَّمَا الْعِلْمُ بِالتَّعَلُّمِ وَالْفِقْهُ بِالتَّفَقُّهِ وَمَنْ يُرِدِ اللَّ بِهِ خَيْرًا يُفَقِّهْهُ فِي الدِّينِ وَإِنَّمَا يَخْشَى اللَّهَ مِنْ عِبَادِهِ الْعُلَمَاءُ ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15.0
                    )
                  )
                ]),
                
                ),
              ),
              height: 180.0,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
            
            Divider(
              height: 0.0,
              color: Colors.black,
              ),
            ExpansionTile(
              title: Text("Telegram",
              style: TextStyle(
                color: kTextColor,
              ),),
              subtitle: Text('Join us on Telegram',
              style: TextStyle(
                color: kTextColor
              ),),
              leading: Icon(Icons.people_alt_outlined,
              color: kPrimaryColor,),
              trailing: Icon(Icons.arrow_drop_down_outlined,
              color: kPrimaryColor,),
              children: [
                Card(
                  color: kBackgroundColor,
                  elevation: 3,
                  child: ListTile(
                    onTap: _launcherUrl,
                    title: Text('             የ ዒልም ካዝና'),
                  ),

                ),
                Card(
                  color: kBackgroundColor,
                  elevation: 3,
                  child: ListTile(
                    onTap: _launcherUrl2,
                    title: Text('             የ ካዝና ማውጫ'),
                  ),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.star,
              color: kPrimaryColor,),
              title: Text('Rate',
              style: TextStyle(
                color: kTextColor
              ),),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.outbond_sharp,
              color: kPrimaryColor,),
              title: Text('Close',
                style: TextStyle(
                    color: kTextColor
                ),),
            ),
            
          ],
        )
    );
  }
}



