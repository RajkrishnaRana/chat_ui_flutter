import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Favourite Contacts',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favourites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: favourites[index],
                          ),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(favourites[index].imageUrl),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            favourites[index].name,
                            style: const TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
