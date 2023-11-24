import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Icon(Icons.groups),
            Text('Chats'),
            Text('Updates'),
            Text('Calls')
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(
              itemBuilder: (context) => const [
                PopupMenuItem(value: "1", child: Text("New group")),
                PopupMenuItem(value: "2", child: Text("New broadcast")),
                PopupMenuItem(value: "3", child: Text("Linked devices")),
                PopupMenuItem(value: "4", child: Text("Starred messages")),
                PopupMenuItem(value: "5", child: Text("Settings")),
              ],
            ),
            const SizedBox(
              width: 3,
            )
          ],
        ),
        body: TabBarView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Stay connected with a community',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Communities bring members together in\n topic-based groups, and make it easy to get \n admint annoucements. any community you are \n added to will appear here.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('See example communities >'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.teal,
                    ),
                    // padding: const EdgeInsets.all(18),
                    child: const Center(
                      child: Text(
                        'Start your community',
                        style: TextStyle(
                            fontFamily: 'Rubik medium',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('Assets/Ekwan-Book-logo.jpg'),
                  ),
                ),
                title: const Text('Ikram'),
                subtitle: const Text('Whats up bro how are you'),
                trailing: const Text('3:10'),
              );
            },
          ),
          Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 8),
                    child: Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(right: 5, left: 280, top: 20),
                      child: const Icon(Icons.more_vert)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image(
                                width: 50,
                                height: 50,
                                image: AssetImage('Assets/Ekwan-Book-logo.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(color: Colors.black),
              Row(
                children: [
                  // channels
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 8),
                    child: Text(
                      'Channels',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(right: 5, left: 260, top: 20),
                      child: const Icon(Icons.add)),
                ],
              )
            ],
          ),
          ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('Assets/Ekwan-Book-logo.jpg'),
                  ),
                ),
                title: const Text('Ikram'),
                subtitle:
                    Text(index / 2 == 0 ? 'Today, 5:10' : 'Yesterday, 10:21'),
                trailing: Icon(index / 2 == 2 ? Icons.call : Icons.videocam),
              );
            },
          ),
        ]),
      ),
    );
  }
}
