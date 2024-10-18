import 'package:demoapp/sava_data_screen/Login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Padding(
        padding:  EdgeInsets.only(right: 30,bottom: 5),
        child:  Text('Instagram',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
        actions:  [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),

          IconButton(onPressed: (){}, icon: Icon(Icons.message)),

      ],),

      body: Column(
        children: [
          // SizedBox(
          //   height: 80,
          //   child: Expanded(
          //     child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 5,
          //         itemBuilder: (context,index){
          //       return Row(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Container(
          //             margin: EdgeInsets.all(10),
          //             width: 50,
          //             height: 50,
          //             decoration: BoxDecoration(
          //               color: Colors.redAccent,
          //           shape: BoxShape.circle
          //             ),
          //             child: ClipOval(
          //           child: Image.network('https://images.unsplash.com/photo-1541752171745-4176eee47556?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',width: 60,height: 60,fit: BoxFit.cover,),
          //             ),
          //           ),
          //         ],
          //       );
          //     }),
          //   ),
          // ),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        child: Container(
                          width: 70,
                          height:70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                              child: Image.network(
                                'https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              )),
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      const SizedBox(width: 170,),
                      const Icon(Icons.dark_mode)
                    ],
                  ),

                  const SizedBox(height: 3,),
                  const Text('Nikhil Bangrwa',style: TextStyle(color: Colors.white)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('91+ 8000413289',style: TextStyle(color: Colors.white),),
                      Icon(Icons.expand_less_rounded,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                    title: const Text('Nikhil bangrwa'),
                    leading: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,

                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                    trailing:Container(
                      width: 35,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle
                      ),child: const Text('  1',style: TextStyle(fontSize: 20,color: Colors.white),),
                    )
                ),
                const ListTile(
                  title: Text('Add Account'),
                  leading: Icon(Icons.add,size: 35,),
                ),
                const Divider(),
                const ListTile(
                  title: Text('My profile'),
                  leading: Icon(Icons.account_circle,
                    size: 30,),
                ),
                const Divider(),
                const ListTile(
                  title: Text('New group'),
                  leading: Icon(Icons.directions_walk_outlined,
                    size: 30,),
                ),
                const ListTile(
                  title: Text('Contancts'),
                  leading: Icon(Icons.person_rounded,
                    size: 30,),
                ),
                const ListTile(
                  title: Text('Calls'),
                  leading: Icon(Icons.call,
                    size: 30,),
                ),
                const ListTile(
                  title: Text('Saved Messages'),
                  leading: Icon(Icons.insert_drive_file_outlined,
                    size: 30,),
                ),
                const ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings,
                    size: 30,),
                ),
                const Divider(),
                const ListTile(
                  title: Text('Invite Frinds'),
                  leading: Icon(Icons.directions_walk_outlined),
                ),
                const ListTile(
                  title: Text('Telegram Features'),
                  leading: Icon(Icons.wb_incandescent_rounded),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    }));
                  },
                  child: const ListTile(
                    title: Text('Log out '),
                    leading: Icon(Icons.logout),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const[
           BottomNavigationBarItem(icon:  Icon(Icons.home_filled),label: 'Home'),
           BottomNavigationBarItem(icon:  Icon(Icons.search_off_outlined),label: 'search'),
           BottomNavigationBarItem(icon:  Icon(Icons.bookmarks_outlined),label: 'save'),
           BottomNavigationBarItem(icon:  Icon(Icons.account_circle),label: 'my account'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
