import 'package:flutter/material.dart';
import 'package:responsiveflutter/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';
class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox(width: 32,),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 32,),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
          const SizedBox(width: 24,),
          SizedBox(
            height: 38,
            // ignore: deprecated_member_use
            child: OutlineButton(
              child: Text('Fazer Login'),
              textColor: Colors.white,
              borderSide: BorderSide(color: Colors.white, width: 2),
              onPressed: (){},
            ),
          ),
          const SizedBox(width: 38,),
          // ignore: deprecated_member_use
          SizedBox(
            height: 40,
            // ignore: deprecated_member_use
            child: RaisedButton(
              child: Text('Cadastre-se'),
                color: Colors.white,
                textColor: Colors.black,
                onPressed: (){}
                ),
          )
        ],
      ),
    );
  }
}
