import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  String img1 =
      "https://union.illinois.edu/sites/default/files/2024-05/kLOopsjpSX1Wb1h8Vg57t7YEwD6.jpg";
  String img2 =
      "https://i.pinimg.com/474x/4d/32/5c/4d325cf1ba05cb71037e17467e5083bd.jpg";

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        },
      ),
      backgroundColor: Colors.grey,
      title: const Text("New Screen"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {

        }, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {

        }, icon: const Icon(Icons.share)),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: Image.network(img1),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJDs8lU0sMAU92m3XQ3PcAfYVfHJwb6RNjdRgN6zzN4g&s")),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.navigate_next),
          ),
          const ListTile(
            leading: Icon(Icons.call),
            title: Text("Contact"),
            trailing: Icon(Icons.navigate_next),
          ),
          const ListTile(
            leading: Icon(Icons.pin_drop),
            title: Text("Location"),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
      // backgroundColor: Colors.grey,
      // child: Image.network(
      //   img2,
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
