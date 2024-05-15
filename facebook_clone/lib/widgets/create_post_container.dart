import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(
                imageUrl: currentUser.imageUrl,
                hasBorder: true,
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "What\'s on your mind?"),
              ))
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => print("is clicked"),
                      icon: Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),
                    ),
                    Text("Live"),
                  ],
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => print("is clicked"),
                      icon: Icon(
                        Icons.photo_library,
                        color: Colors.green,
                      ),
                    ),
                    Text("Photo"),
                  ],
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => print("is clicked"),
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    Text("Room"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
