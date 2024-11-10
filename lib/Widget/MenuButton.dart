import 'package:flutter/material.dart';
import 'package:widget_project1/views/profileView.dart';

class MenuBotBar extends StatefulWidget {
  final int _activePag;
   const MenuBotBar(this._activePag, {super.key});

  @override
  State<MenuBotBar> createState() => _MenuBotBarState();
}

class _MenuBotBarState extends State<MenuBotBar> {
void getLink(index){

  if (index == 0){
    Navigator.pushReplacementNamed(context, '/home');
  }
  else if (index == 1){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => Profileview(nama: "Budi", alamat: "Malang", Juara: 1,)
    )
  );
}
else if (index == 2){
    Navigator.pushReplacementNamed(context, '/transaksi', arguments: 
    {
      "id":1,
      "product":"Hp",
      "price":8000,
    },
    );
} else if (index == 3){
    Navigator.pushReplacementNamed(context, '/movie');
  }
}
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget._activePag,
       selectedItemColor: const Color.fromARGB(255, 32, 195, 176),
       unselectedItemColor: const Color.fromARGB(236, 151, 151, 151),
       showSelectedLabels: true,
       showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              onTap: getLink,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home)
      , label: "Home",),
      BottomNavigationBarItem(icon: Icon(Icons.person)
      , label: "profile",),
      BottomNavigationBarItem(icon: Icon(Icons.attach_money_rounded)
      , label: "Trans",),
      BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined)
      , label: "movie",)
    ],);
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
